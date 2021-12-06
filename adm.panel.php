<?php

require "header.php";
?>

<main>
    <div class="wrapper-main">
        <section class="section-default">

            <h1>Панель адміністратора</h1>
            <div class="adm-panel">
                <a href="create-user.php">Додати користувача</a>
                <a href="show-users.php">Список користувачів</a>
                <a href="add-category.php">Додати категорію</a>
                <a href="delete-category.php">Видалити категорію</a>
                <a href="add-good.php">Додати товар</a>
                <a href="edit-good.php">Редагувати товар</a>
                <a href="delete-good.php">Видалити товар</a>
            </div>
        </section>
    </div>
</main>

<?php

require "footer.php";
?>
