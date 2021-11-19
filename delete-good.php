<?php
  require "header.php";
?>

    <main>
      <div class="wrapper-main">
        <section class="section-default">
          <?php if ( $_SESSION['auth'] == true and $_SESSION['stat'] == 10) { ?>
          <h1>Товари</h1>
          <div class="table-responsive">
        <table class="table table-bordered">
          <tr>
            <th width="15%">Id</th>
            <th width="45%">Назва товару</th>
            <th width="10%">Ціна</th>
            <th width="20%">Дія</th>
            
          </tr>
          <tr>
            <?php
            $goods = get_all_goods();

            foreach($goods as $good)
            { ?>
            <td><?php echo $good['id']; ?></td>
            <td><?php echo $good['name']; ?></td>
            <td><?php echo $good['price']; ?></td>
            <td><a href="../includes/delete-good.inc.php?id=<?php echo $good["id"]; ?>"><span class="text-danger">Видалити</span></a></td>
          </tr>
                  <?php } ?>
        </table>
      </div>
    <?php }?>
        </section>
      </div>
    </main>

<?php
  require "footer.php";
?>