<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, intitial-scale=1.0">
    <title>Spielplan</title>
    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
    <div class="header">
        <h1>UEFA Champions League 24/25</h1>
        <img src="/assets/img/CL_Logo.png" alt="logo" class="header-logo">
    </div>
    <nav class="top-nav">
        <a href="index.php?action=index" class="btn btn-secondary">Gameplan</a>
        <a href="index.php?action=create" class="btn btn-primary">Add New Game</a>
        <a href="index.php?action=vereine" class="btn btn-secondary">Clubs</a>
        <form action="index.php?action=resetChanges" method="post" class="reset-form"
        onsubmit="return confirm('Are you sure to reset all changes?');">
            <button type="submit" class="btn btn-reset">Reset</button>
        </form>
    </nav>
    <hr>
    <?php
    if (isset($content)) {
        echo $content;
    } else {
        echo "No content available";
    }
    ?>
</body>
</html>