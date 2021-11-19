<?php
  require "header.php";
?>

    <main>
      <div class="wrapper-main">
        <section class="section-default">
          <?php if ( $_SESSION['auth'] == true and $_SESSION['stat'] == 10) { ?>
          <h1>Додати категорію</h1>
                    <form action="includes/add-category.inc.php" method="POST" class="form-signup">
                            <div class="admin-add-title">Назва категорії: </div>
                            <input type="text" class="input-login" name="name_cat" placeholder="Назва категорії">

                            <div class="admin-add-title">Назва 1-ої підкатегорії: </div>
                            <input type="text" class="input-login" name="sub_cat"  placeholder="Назва підкатегорії">

                            <div class="admin-add-title">Назва 2-ої підкатегорії: </div>
                            <input type="text" class="input-login" name="sub_cat1"  placeholder="Назва підкатегорії">

                            <div class="admin-add-title">Назва 3-ої підкатегорії: </div>
                            <input type="text" class="input-login" name="sub_cat2"  placeholder="Назва підкатегорії">

             
                            <button type="submit" class="btn-login">Додати категорії</button>
                        
                    </form>
                  <?php }?>
        </section>
      </div>
    </main>

<?php
  require "footer.php";
?>