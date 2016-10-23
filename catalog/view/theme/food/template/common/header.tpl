<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/food/stylesheet/stylesheet.css?<?php echo time(); ?>" rel="stylesheet">
<!--<link rel="stylesheet" href="catalog/view/theme/food/stylesheet/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="catalog/view/theme/food/stylesheet/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="catalog/view/theme/food/stylesheet/style.css" type="text/css" media="screen" />-->

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

</head>
<body class="<?php echo $class; ?>">
    
    <div id="top-row">
        <div class="row-container">
            <div class="container">
                <div id="top" class="row">
                    <div class="moduletable   span12">
                        <div class="mod-menu__social">
                            <ul class="menu social">
                                <li class="item-146 firstItem">
                                    <a class="google" href="#"><span></span>Google</a></li>
                                <li class="item-148">
                                    <a class="twitter" href="#"><span></span>Twitter</a></li>
                                <li class="item-147"><a class="facebook" href="#"><span></span>Facebook</a></li>
                                <li class="item-150 lastItem"><a class="linkedin" href="#"><span></span>Linkedin</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    <div id="header-row">
<div class="row-container">
<div class="container">
<header>
<div class="row">
 
<div id="logo" class="col-sm-3">
<a href="/joomla_48264">
<img src="http://livedemo00.template-help.com/joomla_48264/images/logo.png" alt="Calidum">
</a>
</div>
    <div class="moduletable navigation col-sm-9">
        <ul class="sf-menu sf-js-enabled">
            <li class="item-167 current active deeper parent firstItem"><a href="/joomla_48264/">About</a></li>
            <li class="item-101"><a href="/joomla_48264/index.php/events">Events</a></li>
            <li class="item-173"><a href="/joomla_48264/index.php/menu">Menu</a></li>
            <li class="item-169"><a href="/joomla_48264/index.php/gallery">Gallery</a></li>
            <li class="item-102"><a href="/joomla_48264/index.php/contact-us">Contacts</a></li>
            <li class="item-109 lastItem"><a href="/joomla_48264/index.php/blog">Blog</a></li>
        </ul>
    </div>
</div>
</header>
</div>
</div>
</div>

