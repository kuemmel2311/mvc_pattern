<?php
class Spielplan {
    private $conn;
    private $table = "spielplan_cl";

    public $match_number;
    public $spielplan;
    public $date;
    public $location;
    public $home_team;
    public $home_id;
    public $away_team;
    public $away_id;
    public $result;

    public function __construct($db) {
        $this->conn =$db;
    }

    public function read() {
        $query = " SELECT * FROM spielplan_cl ";

        $result = $this->conn->query($query);

        if (!$result) {
            die ("SQL-Fehler !: " . $this->conn->error);
        }
        return $result;
    }

    public function readOne(){
        $query = "SELECT * FROM " . $this->table . " WHERE match_number = ? LIMIT 1";
        $stmt = $this->conn->prepare($query);
        if (!$stmt) {
            die("Prepare failed: " . $this->conn->error);
        }
        $stmt->bind_param("i", $this->match_number);
        $stmt->execute();

        $result = $stmt->get_result();
        if ($result->num_rows == 0) {
            return false;
        }
        return $result->fetch_assoc();
    }

    public function create() {
        $query = " INSERT INTO " . $this->table . "
                  (match_number,
                  date,
                  location,
                  home_team,
                  home_id,
                  away_team,
                  away_id,
                  result)
                  VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        $stmt =$this->conn->prepare($query);
        if (!$stmt) {
            die("Prepare failed: " . $this->conn->error);

        }
        $stmt->bind_param(
            "isssisis",
            $this->match_number,
            $this->date,
            $this->location,
            $this->home_team,
            $this->home_id,
            $this->away_team,
            $this->away_id,
            $this->result
        );

        if (!$stmt->execute()) {
            die("Execute failed: (" . $stmt->errno . ") " . $stmt->error);
        }
        return true;
    }

    public function update($id, $data)
    {
        $query = " UPDATE {$this->table}
            SET date = ?,
            location = ?,
            home_team = ?,
            home_id= ?,
            away_team = ?,
            away_id = ?,
            result = ?
            WHERE match_number = ?";

        $stmt = $this->conn->prepare($query);

        $date = $data["date"];
        $location = $data["location"];
        $home_team = $data["home_team"];
        $home_id = $data["home_id"];
        $away_team = $data["away_team"];
        $away_id = $data["away_id"];
        $result = $data["result"];

        $match_number = $id;

        $stmt->bind_param(
            "sssisisi",
            $date,
            $location,
            $home_team,
            $home_id,
            $away_team,
            $away_id,
            $result,
            $match_number
        );

        if (!$stmt->execute()) {
            echo "SQL Error:" . $stmt->error;
            return false;
        }

        return true;
    }

    public function retire($id) {
        session_start();

        if(!isset($_SESSION["deleted_games"])) {
            $_SESSION ["deleted_games"] = [];
        }

        if(!in_array($id, $_SESSION["deleted_games"])) {
            $_SESSION["deleted_games"][] = $id;
        }

        header("Location: index.php?action=index&message=Game+retired+for+this+Session");
        exit();
    }

}
?>