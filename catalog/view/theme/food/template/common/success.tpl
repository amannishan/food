<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    <div class="success-msg text-center">    
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $text_message; ?>
    </div>
        
        <?php if(!empty($order_detail)) { ?>
        <div class="address-tab clearfix">
                <div class="col-sm-6"><span class="adres-infor">Payment Address</span></div>
                <div class="col-sm-6"><span class="adres-infor">Shipping Address</span></div> 
        </div> 
        <div class="address-info clearfix">
            <div class="col-sm-6">
                <?php 
                    echo $order_detail['payment_firstname'].' '.$order_detail['payment_lastname'].'<br>';
                    echo $order_detail['payment_city'].', '.$order_detail['payment_country'].'<br>';
                    echo $order_detail['payment_postcode'];
                ?>
            </div>
            <div class="col-sm-6">
                <?php 
                    echo $order_detail['shipping_firstname'].' '.$order_detail['shipping_lastname'].'<br>';
                    echo $order_detail['shipping_city'].', '.$order_detail['shipping_country'].'<br>';
                    echo $order_detail['shipping_postcode'];
                ?>
            </div>  
        </div>
        <?php } ?>
        
        <?php if(!empty($products)) { ?>
         <div class="table-responsive products-table">
          <table class="table table-bordered">
            <thead>
              <tr>
                <td class="text-center"><?php echo $column_image; ?></td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-center"><?php echo $column_quantity; ?></td>
                <td class="text-center"><?php echo $column_price; ?></td>
                <td class="text-center"><?php echo $column_total; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td class="text-center">
                    <?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?>
                </td>
                <td class="text-left v-align-middle"><table class="text-left"><tr><td><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td></tr></table>
                </td>
                <td class="text-left v-align-middle"><table class="text-left"><tr><td><?php echo $product['model']; ?></td></tr></table></td>
                <td class="text-center v-align-middle"><table><tr><td><?php echo $product['quantity']; ?></td></tr></table></td>
                <td class="text-center v-align-middle"><table><tr><td><?php echo $product['price']; ?></td></tr></table></td>
                <td class="text-center v-align-middle"><table><tr><td><?php echo $product['total']; ?></td></tr></table></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
        <?php } ?>
        
        <?php if(!empty($totals)) { ?>
        <div class="row">
        <div class="col-sm-8"></div>
        <div class="col-sm-4">
          <table class="table table-bordered cart-total-table">
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
              <td class="text-right"><?php echo $total['text']; ?></td>
            </tr>
            <?php } ?>
          </table>
        </div>
        </div>
        <?php } ?>
        
        
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>