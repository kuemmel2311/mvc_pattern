<?php ob_start(); ?>
<h2>Club Overview</h2>

<form method="get" action="index.php" class="game-form search-form">
    <input type="hidden" name="action" value="vereine">
    <div class="form-group">
        <label for="search">Search</label>
        <input
                type="text"
                id="search"
                name="search"
                placeholder="Bayern or 9"
                list="verein-vorschlaege"
                autocomplete="off"
                value="<?= isset($_GET['search']) ? htmlspecialchars($_GET['search']) : '' ?>">
        <datalist id="verein-vorschlaege"></datalist>
    </div>
    <button type="submit" class="submit-btn">Search</button>
    <a href="index.php?action=vereine" class="cancel-btn">Reset</a>
</form>

<div class="table-container">
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        </thead>
        <tbody>
        <?php if (!empty($vereine)): ?>
            <?php foreach ($vereine as $verein): ?>
                <tr>
                    <td><?= htmlspecialchars($verein['id']) ?></td>
                    <td><?= htmlspecialchars($verein['name']) ?></td>
                </tr>
            <?php endforeach; ?>
        <?php else: ?>
            <tr>
                <td colspan="2">Found no Club</td>
            </tr>
        <?php endif; ?>
        </tbody>
    </table>
</div>
<?php $content = ob_get_clean(); ?>
<?php include __DIR__ . "/layout.php"; ?>

