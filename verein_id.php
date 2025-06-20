<?php
class Verein {
    private $conn;
    private $verein_id = "verein_id";

    public function __construct($db) {
        $this->conn = $db;
    }

    public function read() {
        $query = " SELECT * FROM " . $this->verein_id;
        $result = $this->conn->query($query);

        if ($result === false) {
            echo "MySQL Fehler: " . $this->conn->error;
            return [];
        }

        $data = $result->fetch_all(MYSQLI_ASSOC);

        foreach ($data as &$row) {
            $row = array_change_key_case($row, CASE_LOWER);
        }

        return $data;
    }

    public function readOne($id) {
        $query = " SELECT * FROM " . $this->verein_id . " WHERE id = ? " ;
        $stmt = $this->conn->prepare($query);
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_assoc();
    }

}
?>