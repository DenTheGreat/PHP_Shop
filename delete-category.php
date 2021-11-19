<?php
  require "header.php";
?>
    <main>
      <div class="wrapper-main">
        <section class="section-default">
          <?php if ( $_SESSION['auth'] == true and $_SESSION['stat'] == 10) { ?>
          <h1>Видалити категоріюy</h1>
            <form action="../includes/delete-category.inc.php" method="POST" class="form-cat">
              <div class="dropdown">
                <div class="select">
                  <span>Категорія</span>
                    </div>
                      <input type="hidden" name="config">
                        <ul class="dropdown-menu" >
                          <?php 
                            $categories = get_category();

                            foreach($categories as $category)
                            {
                                  ?> <li name="hello" id=<?php echo $category['id'] ?>> <?php echo $category['name']; ?> </li>
                            <?php } ?>
                        </ul> 
                      <input type="text" class="noname" name="category">   
                  </div> 
                <button type="submit" class="dropButton">Видалити</button> 
            </form>
          <?php } ?>
        </section>
      </div>
    </main>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script> 
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
        elem.classList.add("no-transition");
        var triggerLayout = elem.offsetHeight;
    </script>

    <script>
        $('.dropdown').click(function () 
        {
            $(this).attr('tabindex', 1).focus();
            $(this).toggleClass('active');
            $(this).find('.dropdown-menu').slideToggle(300);
        });

        $('.dropdown').focusout(function () 
        {
            $(this).removeClass('active');
            $(this).find('.dropdown-menu').slideUp(300);
        });

        $('.dropdown .dropdown-menu li').click(function () 
        {
            $(this).parents('.dropdown').find('span').text($(this).text());
            $(this).parents('.dropdown').find('input').attr('value', $(this).attr('id'));
        });
    </script>




<?php
  require "footer.php";
?>