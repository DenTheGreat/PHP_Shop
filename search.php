<?php require "header.php"; ?>

<main>
  <div class="tovar">
        <?php
         $title = $_POST['title'];
         $goods = search($title);
                
            foreach($goods as $good) {?>
                <a href="goods.php?id=<?php echo $good['id'] ?>">
            <div class="block5">
                <img src=../<?php echo $good["image"];?>>
                 <?php echo $good['name'];?>
                 <h2><?php echo $good['price'], " грн";?></h2>
            </div>
            <?php  }?>   
        
    </div>
</main>
  <?php require "footer.php"; ?>