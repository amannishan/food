<!--<h3><?php echo $heading_title; ?></h3>
<div id="featured_categories<?php echo $module; ?>" class="row owl-carousel">
  <?php foreach ($categorys as $category) { ?>
  <div style="margin-right:12px;" class="item">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption-new">
        <h4><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h4>
        
      </div>
    </div>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#featured_categories<?php echo $module; ?>').owlCarousel({
	items: 4,
	navigation: true,
	margin:10,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
</script>
<style>
#featured_categories<?php echo $module; ?> .owl-wrapper-outer {
    border:none;
    border-radius: none;
    box-shadow:none;
}
</style>-->
<?php if($module_name == 'Featured Categories') { ?>
<div class="row clearfix">
    <div class="equipment-block">
        <div class="col-lg-12 clearfix main-feature-category">
            <h2><a href="#"><?php echo $module_name; ?></a></h2>
            <ul class="clearfix">
                <?php foreach ($categorys as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" >
                        <img src="<?php echo $category['thumb']; ?>"   class="img-responsive" />
                        <span><?php echo $category['name']; ?></span>
                    </a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>
<?php } else { ?>
<div class="col-lg-6 clearfix">
            	<h2><a href="#"><?php echo $module_name; ?></a></h2>
            <ul class="clearfix">
                <?php foreach ($categorys as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" >
                        <img src="<?php echo $category['thumb']; ?>"   class="img-responsive" />
                        <span><?php echo $category['name']; ?></span>
                    </a>
                </li>
                <?php } ?>
            </ul>
            </div>
<?php } ?>