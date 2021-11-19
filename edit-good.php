<?php
error_reporting(0);   
require "header.php"; ?>

        <main>
      <div class="wrapper-main">
        <section class="section-default">
            <?php if ( $_SESSION['auth'] == true and $_SESSION['stat'] == 10) { ?>
          <h1>Редагування товру</h1>
          <form class="form-signup" action="edit-good.php" method="post">
            <h1>Введіть id товару</h1>
            <input type="text" name="id" >
            <button type="submit" name="adm-signup-submit">Ввести</button>
          </form>
            <form action="../includes/edit-good.inc.php" method="POST" enctype="multipart/form-data" class="form-add">
                <?php
                $id = $_POST['id'];
                $goods = get_good($id); 
                foreach($goods as $good):  
                    ?> 
                        

                            <div>Назва: </div>
                            <input type="text" name="name" placeholder="Назва" value="<?php echo $good['name'] ?>">

                            <font>Ціна:  </font>
                            <input type="text" name="price" placeholder="Ціна" value="<?php echo $good['price'] ?>">


                            <div>Опис:</div>
                            <textarea name="descr" rows="5" cols="400" placeholder="Опис" value="<?php echo $good['descr']; ?>"></textarea>

                        <div class="block-field" id="category" >
                            <div class="dropdown" >
                                    <div class="select">
                                    <span><?php echo get_name_subCategory($good['category'])?></span>
                                    </div>
                                    <input type="hidden" name="config">
                                    <ul class="dropdown-menu">
                                    <?php 
                                        $categories = get_category();

                                        foreach($categories as $category)
                                        {
                                            ?> <li name="hello" id=<?php echo $category['id'] ?>><?php echo $category['name'];  ?>

                                                    <ul class="drop-child">    
                                                        <?php 
                                                            $subs = get_subCategory($category['id']);
                                                            foreach($subs as $sub)
                                                            {
                                                                ?> <li><?php echo $sub['name'] ?></li> <?php
                                                            } ?>
                                                    </ul>
                                        
                                            </li>
                                        <?php } ?>
                                    </ul> 
                                    <input type="text" class="noname" name="category">   
                            </div>
                        </div>
                        <input type="hidden" name="id"  value="<?php echo $good['id']; ?>">
                                                   
                    <button type="submit">Редагувати товар</button>
                
                <?php endforeach ?>
            </form>
        <?php }?>
    </section>
      </div>
    </main>

   <script>
        elem.classList.add("no-transition");
        var triggerLayout = elem.offsetHeight;
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script> 
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

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

        $('.drop-child li').click(function () 
        {
            $(this).parents('.dropdown').find('span').text($(this).text());
            $(this).parents('.wrapper-main').find('.noname').val($(this).parents('.dropdown').find('span').text());
        });

        $('.noname').val($('.noname').parents('.admin-panel-block').find('span').text());

        $("[type=file]").on("change", function()
        {
            var dflt = $(this).attr("placeholder");
            if($(this).val()!="")
            {
                $(this).next().text("Завантажено");
            } 
            else 
            {
                $(this).next().text(dflt);
            }
        });
    </script>