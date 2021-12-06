<?php

require "header.php";
?>
<main>
    <div class="slider-div">
        <div class="slider">

            <?php
            $slider_items = get_slider();
            foreach ($slider_items as $slid_it):?>
                <div class="slider__wrapper">
                    <div class="slider__item">
                        <a href="goods.php?id=<?php echo $slid_it['id']; ?>">
                        <img src="img/<?php echo $slid_it['id'];?>/1.jpeg">
                        <?php echo '<p>', $slid_it['name'], '</p>';
                        ?>
                        </a>
                    </div>
                </div>
            <?php endforeach; ?>
            <a class="slider__control slider__control_left" href="#" role="button"></a>
            <a class="slider__control slider__control_right slider__control_show" href="#" role="button"></a>
        </div>
    </div>

</main>
<?php

require "footer.php";
?>
