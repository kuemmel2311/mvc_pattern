<?php
ob_start();
if (!is_array($spielplan)) {
    $spielplan = [
        "date" => "",
        "match_number" => "",
        "location" => "",
        "home_team" => "",
        "home_id" => "",
        "away_team" => "",
        "away_id" => "",
        "result" => ""
    ];
}

$rawDate = $spielplan["date"] ?? '';

if ($rawDate) {
    if (strpos($rawDate, '/') !== false) {
        $dateTime = DateTime::createFromFormat("d/m/Y H:i", $rawDate);
    } else {
        $dateTime = new DateTime($rawDate);
    }
    $datetimeValue = $dateTime ? $dateTime->format("Y-m-d\TH:i") : "";
} else {
    $datetimeValue = "";
}
?>
<head>
    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<h2>Edit Gameplan</h2>
<form action="index.php?action=edit&id=<?= urlencode($spielplan["match_number"]) ?>" method="post" class="game-form" autocomplete="off"
      onsubmit="return confirm('Are you sure to edit the Game #<?= htmlspecialchars($spielplan["match_number"]) ?> ?')">
    <div class="form-group">
        <label for="match_number">MatchNumber:</label>
        <input type="number" id="match_number" name="match_number" placeholder="<?= htmlspecialchars($spielplan["match_number"]) ?>" value="<?= htmlspecialchars($spielplan["match_number"]) ?>" required>
    </div>
    <div class="form-group">
        <label for="date">Date & Time:</label>
        <input type="datetime-local" id="date" name="date" placeholder="<?= htmlspecialchars($spielplan["date"]) ?>" value="<?= htmlspecialchars($datetimeValue) ?>">
    </div>
    <div class="form-group">
        <label for="location">Location:</label>
        <input id="location" name="location" placeholder="<?= htmlspecialchars($spielplan["location"]) ?>" value="<?= htmlspecialchars($spielplan["location"]) ?>" required>
    </div>
    <div class="form-group">
        <label for="home_team">Hometeam:</label>
        <input id="home_team" name="home_team" placeholder="<?= htmlspecialchars($spielplan["home_team"]) ?>" value="<?= htmlspecialchars($spielplan["home_team"]) ?>" required>
    </div>
    <div class="form-group">
        <label for="home_id">HomeID:</label>
        <input type="number" id="home_id" name="home_id" placeholder="<?= htmlspecialchars($spielplan["home_id"]) ?>" value="<?= htmlspecialchars($spielplan["home_id"]) ?>" required>
    </div>
    <div class="form-group">
        <label for="away_team">Awayteam:</label>
        <input id="away_team" name="away_team" placeholder="<?= htmlspecialchars($spielplan["away_team"]) ?>" value="<?= htmlspecialchars($spielplan["away_team"]) ?>" required>
    </div>
    <div class="form-group">
        <label for="away_id">AwayID:</label>
        <input type="number" id="away_id" name="away_id" placeholder="<?= htmlspecialchars($spielplan["away_id"]) ?>" value="<?= htmlspecialchars($spielplan["away_id"]) ?>" required>
    </div>
    <div class="form-group">
        <label for="result">Result:</label>
        <input type="text" id="result" name="result" placeholder="<?= htmlspecialchars($spielplan["result"]) ?>" value="<?= htmlspecialchars($spielplan["result"]) ?>" required>
    </div>
    <button type="submit" class="submit-btn">Update</button>
    <a href="index.php?action=index" class="cancel-btn">Cancel</a>
</form>
<?php $content = ob_get_clean(); ?>
<?php include __DIR__ . "/layout.php"; ?>