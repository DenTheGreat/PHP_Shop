<?php
error_reporting(0);
require 'header.php' ?>
    <main>
        <?php $goods = get_good($_GET['id']);
        foreach ($goods as $good) :
        ?>
        <div class="block-god">
            <div class="block-img">
                <a href="<?php echo $good['image'] ?>">
                    <img src="<?php echo $good['image'] ?>" id="photo1">
                </a>
            </div>

            <div class="block-info-goods">
                <div class="block-char">
                    <div class="name-goods">
                        <div class="name-char">
                            <?php echo $good['name']; ?>
                        </div>
                    </div>
                    <div class="block-describe">
                        <div class="code">Код товара: <?php echo $good['id']; ?></div>
                        <div class="price">Ціна: <?php echo $good['price'] ?> грн</div>
                    </div>
                    <div class="block-describe">
                        <div class="desc">Опис:</div>
                        <div class="font"><?php echo $good['descr']; ?></div>
                    </div>
                </div>
                <div class="block-char">
                    <h1>Відгуки</h1>
                    <?php
                    $feedbacks = get_feedback($good['id']);
                    foreach ($feedbacks

                    as $feedback): ?>
                    <div class="block-describe">
                        <div class="desc"><?php echo $feedback['name']; ?> </div>
                        <div class="font-feedback"><?php echo $feedback['textfeed']; ?></div>
                        <?php if ($_SESSION['auth'] == true and $_SESSION['stat'] == 10) { ?>
                            <div><a href="includes/delete-feedback.inc.php?id=<?php echo $feedback['id']; ?>"><span
                                            class="text-danger">Видалити</span></a></div>
                        <?php } ?>
                    </div>
                </div>

                <?php endforeach ?>
            </div>
            <h1>Залишити Відгук</h1>
            <div class="block-char">
                <form class="form-feedback" method="post" action="includes/add-feedback.adm.inc.php">
                    <input type="hidden" name="name" value="<?php echo $_SESSION["uid"]; ?>">
                    <input name="id_goods" type="hidden" value=<?php echo $good['id']; ?>>
                    <textarea name="textfeed" placeholder="Відгук"></textarea>
                    <button type="submit" class="searchButton">Відправити</button>
                </form>
                <?php endforeach ?>
    </main>

<?php require 'footer.php' ?>