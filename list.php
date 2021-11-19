<?php require "header.php"; ?>

<main>
  <div class="tovar">
		<?php
		 $_param = parse_url($_SERVER['REQUEST_URI']);
        $params = explode("=", $_param["query"]);

			switch ($params[0]) {
				case "id_good":
                $goods = get_good($_GET['id_good']);
                break;
                case "id_cat":
                $goods = get_goods_by_subCat($_GET['id_cat']);
                break;
                } 
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