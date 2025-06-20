<?php ob_start(); ?>
<head>
    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<h2>Add new Game</h2>
<form action="index.php?action=create" method="post" class="game-form">
    <div class="form-group">
        <label for="match_number">MatchNr.:</label>
        <input type="number" id="match_number" name="match_number" required>
    </div>
    <div class="form-group">
        <label for="date">Date:</label>
        <input type="datetime-local" id="date" name="date" required>
    </div>
    <div class="form-group">
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" required>
    </div>
    <div class="form-group">
        <label for="home_team">HomeTeam:</label>
        <input type="text" id="home_team" name="home_team" required>
    </div>
    <div class="form-group">
        <label for="home_id">HomeID:</label>
        <input type="number" id="home_id" name="home_id" required>
    </div>
    <div class="form-group">
        <label for="away_team">AwayTeam:</label>
        <input type="text" id="away_team" name="away_team" required>
    </div>
    <div class="form-group">
        <label for="away_id">AwayID:</label>
        <input type="number" id="away_id" name="away_id" required>
    </div>
    <div class="form-group">
        <label for="result">Result:</label>
        <input type="text" id="result" name="result" required>
    </div>
    <button type="submit" class="submit-btn">Create Game</button>
    <a href="index.php?action=index" class="cancel-btn">Cancel</a>
</form>
<?php $content = ob_get_clean(); ?>
<?php include __DIR__ . "/layout.php"; ?>