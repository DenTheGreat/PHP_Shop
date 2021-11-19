<?php require "header.php"; ?>

<main>
  <div class="wrapper-main">
        <section class="section-default">  
<h3>Ваші замовлення</h3>
      <div class="table-responsive">
        <table class="table table-bordered">
          <tr>
            <th width="15%">Id товару</th>
            <th width="10%">Ім'я</th>
            <th width="10%">Прізвище</th>
            <th width="20%">Ціна</th>
            <th width="15%">E-mail</th>
            <th width="20%">Адреса</th>
          </tr>
          <tr>
            <?php  
                $orders = get_orders($_SESSION['id']);
                foreach ($orders as $order) {
                
                ?>
            <td><?php echo $order['id_good']; ?></td>
            <td><?php echo $order['firstname']; ?></td>
            <td><?php echo $order['secondname'];; ?></td>
            <td>₴ <?php echo $order['price'];; ?></td>
            <td><?php echo $order['email'];;?></td>
            <td><?php echo $order['adress']; ?></td>
          </tr>
                  <?php } ?>
        </table>
      </div>
      </section>
    </div>
</main>
  <?php require "footer.php"; ?>