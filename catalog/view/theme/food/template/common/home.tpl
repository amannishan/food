<?php echo $header; ?>
<div class="">
        <div class="slider-section">
    <div class="container">
    <?php echo $content_top; ?>
    </div>
    </div>
    <div class="main-container">    
<div class="container">
   <div class="row clearfix">
           <div class="col-lg-12 clearfix main-feature-category">
                               <h1 class="h1">OUR SERVICES</h1>
                <p class="txt-cnt"><img src="catalog/view/theme/food/image/hdng-bg.png" alt=""></p>
               <?php foreach ($categorys as $category) { ?>
               <div class="col-lg-4">
                    <a href="<?php echo $category['href']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" >
                        <img src="<?php echo $category['thumb']; ?>"   class="img-responsive" />
                        <span><?php echo $category['name']; ?></span>
                    </a>
               </div>   
                <?php } ?> 
       </div>    
   </div>    
    
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
        
        <div class="row clearfix">
    	<div class="equipment-block">
        <?php echo $column_right; ?>
        <?php echo $column_right; ?>
            
           
        </div>
    </div>
       </div>
    </div>
    
</div>
        </div>
</div>
 <?php echo $content_bottom; ?>
<?php echo $footer; ?>