<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Home</title>
        <meta charset="utf-8">
        <meta name="format-detection" content="telephone=no">
        <link rel="icon" href="images/favicon.ico">
        <link rel="shortcut icon" href="images/favicon.ico">
        <?= $this->Html->css('stuck.css') ?>
        <?= $this->Html->css('owl.carousel.css') ?>
        <?= $this->Html->css('form.css') ?>
        <?= $this->Html->css('touchTouch.css') ?>
        <?= $this->Html->css('camera.css') ?>
        <?= $this->Html->css('style.css') ?>
        <?= $this->Html->script('jquery.js') ?>
        <?= $this->Html->script('jquery-migrate-1.1.1.js') ?>
        <?= $this->Html->script('script.js') ?>
        <?= $this->Html->script('superfish.js') ?>
        <?= $this->Html->script('jquery.equalheights.js') ?>
        <?= $this->Html->script('jquery.mobilemenu.js') ?>
        <?= $this->Html->script('jquery.easing.1.3.js') ?>
        <?= $this->Html->script('tmStickUp.js') ?>
        <?= $this->Html->script('jquery.ui.totop.js') ?>
        <?= $this->Html->script('touchTouch.jquery.js') ?>
        <?= $this->Html->script('owl.carousel.js') ?>
        <?php //echo $this->Html->script('TMForm.js') ?>
        <?= $this->Html->script('sForm.js') ?>
        <?= $this->Html->script('camera.js') ?>
        <!--[if (gt IE 9)|!(IE)]><!-->
        <?= $this->Html->script('jquery.mobile.customized.min.js') ?>
        <!--<![endif]-->
        <script>
            $(document).ready(function () {
                jQuery('#camera_wrap').camera({
                    loader: false,
                    pagination: false,
                    minHeight: '200',
                    thumbnails: false,
                    height: '39,0625%',
                    caption: true,
                    navigation: true,
                    fx: 'mosaic'
                });
                var owl = $("#owl");
                owl.owlCarousel({
                    items: 7, //10 items above 1000px browser width
                    itemsDesktop: [995, 5], //5 items between 1000px and 901px
                    itemsDesktopSmall: [767, 3], // betweem 900px and 601px
                    itemsTablet: [700, 3], //2 items between 600 and 0
                    itemsMobile: [479, 2], // itemsMobile disabled - inherit from itemsTablet option
                    navigation: true,
                });
                $().UItoTop({easingType: 'easeOutQuart'});
                $('#stuck_container').tmStickUp({});
                $('.gallery a.gal_item').touchTouch();
            });
        </script>
        <!--[if lt IE 8]>
        <div style=' clear: both; text-align:center; position: relative;'>
                <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
                        <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
                </a>
        </div>
        <![endif]-->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <link rel="stylesheet" media="screen" href="css/ie.css">
        <![endif]-->
    </head>
    <body class="page1" id="top">
        <!--==============================header=================================-->
        <header>
            <div id="stuck_container">
                <div class="container">
                    <div class="row">
                        <div class="grid_12">
                            <h1 style="color: #ffffff; font-size: 30px; padding-top: 15px;">
                                raafat domat
                            </h1>
                            <div class="menu_block">
                                <nav class="horizontal-nav full-width horizontalNav-notprocessed">
                                    <ul class="sf-menu">
                                        <li <?php if($this->request->getParam('controller') == 'Fotos' && $this->request->getParam('pass.0') == '1') echo 'class="current"'; ?>><?= $this->Html->link('B&N', ['controller' => 'Fotos', 'action' => 'lista', 1]) ?></li>
                                        <li <?php if($this->request->getParam('controller') == 'Fotos' && $this->request->getParam('pass.0') == '2') echo 'class="current"'; ?>><?= $this->Html->link('Color', ['controller' => 'Fotos', 'action' => 'lista', 2]) ?></li>
                                        <li <?php if($this->request->getParam('controller') == 'Pages' && $this->request->getParam('pass.0') == 'biografia') echo 'class="current"'; ?>><?= $this->Html->link('Biografia', ['controller' => 'Pages', 'action' => 'display', 'biografia']) ?></li>
                                        <li <?php if($this->request->getParam('controller') == 'Fotos' && $this->request->getParam('action') == 'contacto') echo 'class="current"'; ?>><?= $this->Html->link('Contacto', ['controller' => 'Fotos', 'action' => 'contacto']) ?></li>
                                    </ul>
                                </nav>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="main">			
            <!--=====================Content======================-->			
            <section class="content">
                <div class="container">
                    <div class="row">
                        <div class="grid_12">							
                            <div class="gallery">
                                <div class="row">
                                    
                                    <?= $this->Flash->render() ?>
                                    <div class="">
                                        <?= $this->fetch('content') ?>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>						
                    </div>
                </div>				
            </section>			
        </div>
        <!--==============================footer=================================-->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="grid_12">
                        <!--<div class="footer_socials">
                                <a href="#" class="fa fa-twitter"></a>
                                <a href="#" class="fa fa-facebook"></a>
                                <a href="#" class="fa fa-google-plus"></a>
                                <a href="#" class="fa fa-pinterest"></a>
                        </div>-->
                        <div class="copy">
                            <span class="brand">RaafatDomat</span> &copy; <span id="copyright-year"></span>                            
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>