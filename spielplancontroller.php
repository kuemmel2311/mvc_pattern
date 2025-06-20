<?php
require_once __DIR__ . "/../session.php";
ob_start(); ?>
<?php $spielplan = $spielplan ?? []; ?>
<?php

class Spielplancontroller
{

    private $planModel;
    private $vereinModel;

    public function __construct($planModel, $vereinModel)
    {
        $this->planModel = $planModel;
        $this->vereinModel = $vereinModel;
    }

    public function index()
    {
        if (!isset($_SESSION["session_initialized"])) {
            unset($_SESSION["edited_view"]);
            unset($_SESSION["edited_originals"]);
            $_SESSION["session_initialized"] = true;
        }

        $result = $this->planModel->read();
        $deletedGames = $_SESSION["deleted_games"] ?? [];
        $editedView = $_SESSION["edited_view"] ?? [];
        $newGames = $_SESSION["new_games"] ?? [];

        $filtered = [];
        while ($row = $result->fetch_assoc()) {
            $match_number = $row["match_number"];

            if (in_array($match_number, $deletedGames)) {
                continue;
            }

            if (isset($editedView[$match_number])) {
                $filtered[] = $editedView[$match_number];
            } else {
                $filtered[] = $row;
            }
        }

        foreach ($newGames as $newGame) {
            if (!in_array($newGame["match_number"], $deletedGames)) {
                $filtered[] = $newGame;
            }
        }

        $spielplan = $filtered;
        include "views/index.php";
    }

    public function show($id)
    {
        if (isset($_SESSION["edited_view"][$id])) {
            $spielplan = $_SESSION["edited_view"][$id];
        } else {
            $this->planModel->match_number = $id;
            $spielplan = $this->planModel->readOne();
        }
        if (!$spielplan) {
            die("Kein Spiel mit ID $id gefunden !");
        }

        include __DIR__ . "/../views/show.php";
    }

    public function create() {
        if ($_SERVER["REQUEST_METHOD"] === "POST") {
            $newGame = [
                "match_number" => $_POST["match_number"],
                "date" => $_POST["date"],
                "location" => $_POST["location"] ?? null,
                "home_team" => $_POST["home_team"],
                "home_id" => $_POST["home_id"] ?? null,
                "away_team" => $_POST["away_team"],
                "away_id" => $_POST["away_id"] ?? null,
                "result" => $_POST["result"]
            ];

            if(session_status() === PHP_SESSION_NONE) {
                session_start();
            }

            if (!isset($_SESSION["new_games"])) {
                $_SESSION["new_games"] = [];
            }

            $_SESSION["new_games"][$newGame["match_number"]] = $newGame;

            $spielplan = $newGame;
            include "views/show.php";
            return;
        }
        include "views/create.php";
    }


    public function edit($id)
    {
        $this->planModel->match_number = $id;

        if (isset($_SESSION["new_games"][$id])) {
            $spielplan = $_SESSION["new_games"][$id];
        }
        // Oder ob es in den editierten Spielen (Session) existiert
        elseif (isset($_SESSION["edited_view"][$id])) {
            $spielplan = $_SESSION["edited_view"][$id];
        }
        else {
            $this->planModel->match_number = $id;
            $spielplan = $this->planModel->readOne();
        }

        if (!$spielplan) {
            die("Kein Spiel mit ID $id gefunden !");
        }

        if ($_SERVER["REQUEST_METHOD"] === "POST") {
            $data = [
                "date" => $_POST["date"] ?? null,
                "location" => $_POST["location"] ?? null,
                "home_team" => $_POST["home_team"],
                "home_id" => $_POST["home_id"] ?? null,
                "away_team" => $_POST["away_team"],
                "away_id" => $_POST["away_id"] ?? null,
                "result" => $_POST["result"]
            ];

            if (!isset($_SESSION["edited_originals"][$id])) {
                $_SESSION["edited_originals"][$id] = $this->planModel->readOne();

            }

            $_SESSION["edited_view"][$id] = array_merge(["match_number" => $id], $data);
            if (isset($_SESSION["new_games"]["$id"])) {
                $_SESSION["new_games"]["$id"] = $_SESSION["edited_view"]["$id"];
            }

            header("Location: index.php?action=show&id=" . $id);
            exit();
        }

        include "views/edit.php";

    }

    public function retire($id)
    {

        if (!isset($_SESSION["deleted_games"]) || !is_array($_SESSION["deleted_games"])) {
            $_SESSION["deleted_games"] = [];
        }

        if (!in_array($id, $_SESSION["deleted_games"])) {
            $_SESSION["deleted_games"][] = $id;
        }

        header("Location: index.php?action=index&message=Game+retired+for+this+Session");
        exit();
    }

    public function resetChanges()
    {
        unset($_SESSION["edited_view"]);
        unset($_SESSION["edited_originals"]);
        unset($_SESSION["deleted_games"]);
        unset($_SESSION["new_games"]);

        header("Location: index.php?action=index&message=changes+now+reset");
        exit();
    }

    public function vereine()
    {
        $vereine = $this->vereinModel->read();
        if (!is_array($vereine)) {
            $vereine = [];
        }

        if (!empty($_GET["search"])) {
            $search = strtolower(trim($_GET["search"]));
            $vereine = array_filter($vereine, function ($verein) use ($search) {
                return strpos(strtolower($verein["name"]), $search) !== false || strpos((string)$verein["id"], $search) !== false;
            });
        }

        include "views/vereine.php";
        exit;
    }
}

?>