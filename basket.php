<?php
error_reporting(0); 
require "header.php"; ?>

<main>
  <div class="wrapper-main">
        <section class="section-default">  
<h3>Деталі замовлення</h3>
      <div class="table-responsive">
        <table class="table table-bordered">
          <tr>
            <th width="40%">Назва товару</th>
            <th width="10%">Кількість</th>
            <th width="10%">Ціна</th>
            <th width="25%">Всього за певний товар</th>
            <th width="5%">Дія</th>
          </tr>
          <tr>
            <?php 
            $array = array(''); 
          $total = 0;
                $goodss = get_user_goods($_SESSION['id']);
                foreach ($goodss as $goodd) {

                 $goods = get_good($goodd['id_goods']);
         
                    foreach($goods as $good) {
                
                ?>
            <td><?php echo $good['name']; ?></td>
            <td><?php echo $goodd["quantity"]; ?></td>
            <td>₴ <?php echo $good["price"]; ?></td>
            <td>₴ <?php echo number_format($goodd['quantity'] * $good["price"], 2);?></td>
            <td><a href="includes/delete-basket.inc.php?id=<?php echo $goodd["id"]; ?>"><span class="text-danger">Видалити</span></a></td>
          </tr>
          <?php
              $total = $total + ($goodd['quantity'] * $good["price"]);
            
          ?>
                  <?php
                  array_push($array, $good['id']); 
                }} ?>
          <tr>
            <td colspan="3" align="right">Всього за всі товари</td>
            <td align="right">₴ <?php echo number_format($total, 2); ?></td>
            <td></td>
          </tr>
        </table>
      </div>
      <?php  

               
                 $goods = get_good($goodd['id_goods']);
                    foreach($goods as $good) {
                
                ?>
      <h1>Введіть свої данні</h1>
          <form class="form-signup" action="includes/create-order.inc.php" method="post">
            <input type="text" name="firstname" placeholder="Ім'я">
            <input type="text" name="secondname" placeholder="Прізвище">
            <input type="text" name="email" placeholder="E-mail" value="<?php echo $_SESSION['email']; ?>">
            <input type="text" name="adress" placeholder="Адреса">
            <input type="hidden" name="id_user" value="<?php echo $_SESSION['id']; ?>">
            <input type="hidden" name="price" value="<?php echo $total; ?>">
            <button type="submit" name="adm-signup-submit">Замовити</button>
          </form>
          <?php 
        }?> 
      </section>
    </div>
</main>
  <?php require "footer.php"; ?>