<?php
  require 'header.php';
?>       
<main>
      <div class="wrapper-main">
        <section class="section-default">
            <?php if ( $_SESSION['auth'] == true and $_SESSION['stat'] == 10) { ?>
          <h1>Додати товар</h1>
            <form action="includes/add-good.inc.php" method="POST" enctype="multipart/form-data" class="form-add">
                    <input type="text"  name="name"  placeholder="Назва">
                    <input type="text" name="price"  placeholder="Ціна">
                    <textarea   name="descr" rows="5" cols="400" placeholder="Опис"></textarea>
                    <div class="block-field" id="category" >
                        <div class="dropdown" >
                                <div class="select">
                                <span>Категорія</span>
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
                    <div class="addPhoto">
                    Завантажте фото:  
                    <input type="file" name="file[]" accept="image/jpeg" multiple placeholder="Додати фото">
                    <label for="img_goods">Додати фото</label>
                    </div>                       
                    <button type="submit" class="">Додати товар</button>
               
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