<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@100..900&family=Big+Shoulders+Stencil+Text:wght@100..900&family=Big+Shoulders+Text:wght@100..900&family=Inter:wght@100..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/assets/FontAwesome6.4Pro/css/all.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

    <link rel="shortcut icon" type="image/png" href="<?php bloginfo('template_directory')?>/assets/images/logo.ico"/>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
	<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/assets/css/reset.css">
    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/style.css">
    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/assets/css/custom.css">
    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/assets/css/custom-2.css">
    <title>
        <?php if (is_front_page()) : ?>
        <?php bloginfo('name') ?>
        <?php elseif (is_single()) : ?>
        <?php echo wp_title('', true, ''); ?>
        <?php else : ?>
        <?php echo wp_title('', true, ''); ?>
        <?php endif ?>
    </title>
<?php wp_head(); ?>
</head>

<body>
    <header>
        <div class="menu-wrap">
            <div class="container menu-mb">
                <?php 
                wp_nav_menu(array(
                    'theme_location' => 'menu-1',
                    
                ))
                ?>
            </div>
        </div>
        <div class="navbar-wrap">
            <div class="container heading">
                <div class="left-heading d-flex align-items-center">
                    <div class="logo">
                        <a href="<?php echo get_bloginfo('url'); ?>"><img src="<?php echo get_field("logo",'option') ?>"
                                alt="" class="img-fluid"></a>
                    </div>
                    <div class="company-name"><a
                            href="<?php echo get_bloginfo('url'); ?>"><?php echo get_field("company-name",'option') ?></a>
                    </div>
                </div>
                <div class="right-heading">
                    <div class="language">
                        <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-2',
                            'menu_class' => 'menu-language'
                        ))
                        ?>
                    </div>
                    <div class="search-bar position-relative">
                        <?php //echo do_shortcode("[display_search_form]") ?>
                        <?php get_search_form(); ?>
                    </div>


                    <div class="hamburger-wrap">
                        <div class="hamburger">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>