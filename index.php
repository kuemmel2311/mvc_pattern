<?php
// Import der Klassen
require_once "session.php";
require_once "config/database.php";
require_once "models/spielplan.php";
require_once "models/verein_id.php";
require_once "controllers/spielplancontroller.php";
// Datenbankverbindung herstellen
$database = new Database();
$db = $database->getConnection();

// Initialisierung
$model1 = new spielplan($db);                               // Daten & Datenbankzugriff
$model2 = new verein($db);                                  // Daten & Datenbankzugriff
$controller = new spielplancontroller($model1, $model2);    // Steuerung des Programms & Zugriff darauf

// Aktion aufgrund der Abfrageparameter bestimmt
$action = $_GET["action"] ?? "index";                       //Wert von "action" wird genutzt & sonst "index" verwendet

$id = $_GET["id"] ?? null;

// Anfrage je nach Aktion weiterleiten
switch ($action) {
    case "index":                                           // Weiterleitung zum Index bei keiner Aktion
        $controller->index();
        break;
    case "vereine":
        $controller->vereine();
        break;
    case "show":                                            // Weiterleitung zum Anzeigen der gewählten Inhalte
        if ($id !== null) {
            $controller->show($id);
        } else {
            $controller->index();
        }
        break;
    case "create":                                          // Weiterleitung zum Erstellen eines Eintrags
        $controller->create();
        break;
    case "edit":                                            // Weiterleitung zum Bearbeiten eines Eintrags
        if ($id !== null) {
            $controller->edit($id);
        } else {
            $controller->index();
        }
        break;
    case "retire":                                          // Weiterleitung zum Löschen eines Eintrags
        $controller->retire($_GET["id"]);
        break;
    case "resetChanges":
        $controller->resetChanges();
        break;
    default:                                                // Wieder zum Index, falls kein vorheriger Fall eintrifft
        $controller->index();
        break;
}
?>