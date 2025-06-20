<?php ob_start(); ?>
<head>
    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<?php if (!isset($spielplan) || !$spielplan): ?>
    <p>No Gameplan found !</p>
<?php else: ?>
    <h2>Gameplan</h2>
    <div class="game-form">
        <p><strong>Matchnumber:</strong> <?= htmlspecialchars($spielplan["match_number"]) ?></p>
        <p><strong>Date:</strong> <?= htmlspecialchars($spielplan["date"]) ?></p>
        <p><strong>Location:</strong> <?= htmlspecialchars($spielplan["location"]) ?></p>
        <p><strong>Hometeam:</strong> <?= htmlspecialchars($spielplan["home_team"]) ?></p>
        <p><strong>HomeID:</strong> <?= htmlspecialchars($spielplan["home_id"]) ?></p>
        <p><strong>Awayteam:</strong> <?= htmlspecialchars($spielplan["away_team"]) ?></p>
        <p><strong>AwayID:</strong> <?= htmlspecialchars($spielplan["away_id"]) ?></p>
        <p><strong>Result:</strong> <?= htmlspecialchars($spielplan["result"]) ?></p>

        <a href="index.php?action=index" class="cancel-btn">Back to Plan</a>
    </div>
<?php endif; ?>

<?php $content = ob_get_clean(); ?>
<?php include __DIR__ . "/layout.php"; ?>