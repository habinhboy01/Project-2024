<!DOCTYPE html>
<html lang="en">

<head>
    <title>
        <?php if (is_front_page()) : ?>
        <?php bloginfo('name') ?>
        <?php elseif (is_single()) : ?>
        <?php echo wp_title('', true, ''); ?>
        <?php else : ?>
        <?php echo wp_title('', true, ''); ?>
        <?php endif ?>
    </title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/assets/FontAwesome6.4Pro/css/all.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />


    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/assets/css/reset.css">
    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/style.css">
    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/assets/css/custom.css">
    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/assets/css/custom-2.css">

</head>

<body>
    <div class="nav-wrap">
        <nav class="nav-mobile">
            <div class="close">
                <div><i class="fa-solid fa-xmark"></i></div>
            </div>
            <?php 
            wp_nav_menu(array(
                'theme_location' => 'menu-1',
                'menu_class' => 'heading2-info-mobile'
            ))
            ?>
        </nav>

    </div>

    <div class="m-menu-wrap">
        <div class="heading-menu container">
            <div class="logo">
                <a href="<?php echo get_bloginfo('url'); ?>"><img src="<?php echo get_field('logo','option') ?>" alt=""
                        class=""></a>
            </div>

            <?php 
            wp_nav_menu(array(
                'theme_location' => 'menu-1',
                'menu_class' => 'm-menu'
            ))
        ?>

            <div class="d-flex gap-4 align-items-center">
                <div class="search-form-wrap">
                    <?php echo get_search_form() ?>
                </div>
                <div class="lang-sec">
                    <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-2',
                            'menu_class' => 'lang-menu'
                        ))
                    ?>
                </div>
                <div class="bars-mobile">
                    <i class="fa-solid fa-bars"></i>
                </div>

            </div>
        </div>
    </div>