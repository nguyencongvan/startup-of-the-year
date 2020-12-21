<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="<?php echo base_url(); ?>"></base>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>
        <?php 
            if(isset($title))
                echo $title;
            else
                echo "24hStore.vn - Vua bán lẻ điện thoại di động, máy tính bảng chính hãng";
        ?>
    </title>
    <link href="public/images/24hstore-favicon.png" rel="shortcut icon" type="image/png">
    <link href="public/css/bootstrap.css" rel="stylesheet">
    <link href="public/css/font-awesome.css" rel="stylesheet">
    <link href="public/css/lte.css" rel="stylesheet">
    <link href="public/css/AdminLTE.min.css" rel="stylesheet">
    <link href="public/css/owl.carousel.min.css" rel="stylesheet">
    <link href="public/css/owl.theme.default.css" rel="stylesheet">
    <link rel="stylesheet" href="public/css/style-jc.css">
    <link href="public/css/menu-tab.css" rel="stylesheet">
    <link href="public/css/jquery.bxslider.css" rel="stylesheet" />
    <link href="public/css/style.css" rel="stylesheet">
    </head>
    <body>
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <!-- TOPBAR -->
        <?php 
            $this->load->view('frontend/modules/topbar');
        ?>
        <!-- LOGO + SEARCH -->
        <?php 
            $this->load->view('frontend/modules/logo-search');
        ?>
        <section id="menu-slider">
            <?php 
                $this->load->view('frontend/modules/panel-left');
            ?>
        </section>
        <!--PRODUCT-->
        <?php 
            if(isset($com,$view)){
                $this->load->view('frontend/components/'.$com.'/'.$view);
            }
            else
                $this->load->view('frontend/components/Error404/index');
        ?>
        <!--FOOTER-->
        <?php 
            $this->load->view('frontend/modules/footer');
        ?>
        <script src="public/js/jquery-2.2.3.min.js"></script>
        <script src="public/js/bootstrap.js"></script>
        <script src="public/js/app.min.js"></script>
        <script src="public/js/owl.carousel.js"></script>
        <script src="public/js/jquery.jcarousel.js"></script>
        <script src="public/js/jquery.bxslider.js"></script>
        <script src="public/js/jcarousel.connected-carousels.js"></script>
        <script src="public/js/menu-tab.js"></script>
    </body>
</html>
