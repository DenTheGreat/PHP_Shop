<?php
  require "header.php";
?>

    <main>
      <div class="wrapper-main">
        <section class="section-default">
          <?php if ( $_SESSION['auth'] == true and $_SESSION['stat'] == 10) { ?>
          <h1>Список користувачів</h1>
         <div class="table-responsive">
        <table class="table table-bordered">
          <tr>
            <th width="15%">Логін</th>
            <th width="10%">Права доступу</th>
            <th width="1%">Дія</th>
          </tr>
        <?php
            $users = get_users();
            foreach($users as $user)
            { ?>
                <tr>

                    <th><?php echo $user['uidUsers'] ?></th>
                    <?php if($user['uidUsers'] == "")
                    { ?>
                        <th>Пусто</th>
                    <?php 
                    } 
                    else 
                    { 
                        ?>
                        <th><?php echo $user['status'] ?></th>
                    <?php } ?>
                    <th>
                        <a href=<?php echo "../includes/delete-user.inc.php?id=".$user['idUsers'] ?> "style=text-decoration: none">
                            <div class="delete-button"><button>Видалити</button></div>
                        </a>
                    </th>
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