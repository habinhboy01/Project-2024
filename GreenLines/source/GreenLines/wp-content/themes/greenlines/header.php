<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="<?php bloginfo("template_directory")?>/assets/FontAwesome6.4Pro/css/all.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

    <link rel="shortcut icon" type="image/png" href="<?php bloginfo("template_directory")?>/assets/imgs/favicon.ico"/>

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

</head>

<body>
    <div class="menu-wrap">
        <?php 
            wp_nav_menu(array(
                'theme_location' => 'menu-5',
                'menu_class' => 'mobile-menu'
            ))
        ?>
    </div>

    <div class="menu-pc-wrap">
        <div class="container">
            <div class="main-menu d-flex justify-content-between align-items-center">
                <div class="logo">
                    <a href="<?php echo get_home_url() ?>">
                        <img class="img-fluid" src="<?php echo get_field('logo', 'option') ?>" alt="">
                    </a>
                </div>

                <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-1',
                            'menu_class' => 'pc-menu'
                        ))
                ?>

                <div class="d-flex gap-4">
                    <div class="language-switcher position-relative">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M12 22.75C6.07 22.75 1.25 17.93 1.25 12C1.25 6.07 6.07 1.25 12 1.25C17.93 1.25 22.75 6.07 22.75 12C22.75 17.93 17.93 22.75 12 22.75ZM12 2.75C6.9 2.75 2.75 6.9 2.75 12C2.75 17.1 6.9 21.25 12 21.25C17.1 21.25 21.25 17.1 21.25 12C21.25 6.9 17.1 2.75 12 2.75Z"
                                fill="#292D32" />
                            <path
                                d="M9.00023 21.75H8.00023C7.59023 21.75 7.25023 21.41 7.25023 21C7.25023 20.59 7.57023 20.26 7.98023 20.25C6.41023 14.89 6.41023 9.11 7.98023 3.75C7.57023 3.74 7.25023 3.41 7.25023 3C7.25023 2.59 7.59023 2.25 8.00023 2.25H9.00023C9.24023 2.25 9.47023 2.37 9.61023 2.56C9.75023 2.76 9.79023 3.01 9.71023 3.24C7.83023 8.89 7.83023 15.11 9.71023 20.77C9.79023 21 9.75023 21.25 9.61023 21.45C9.47023 21.63 9.24023 21.75 9.00023 21.75Z"
                                fill="#292D32" />
                            <path
                                d="M14.9999 21.7499C14.9199 21.7499 14.8399 21.7399 14.7599 21.7099C14.3699 21.5799 14.1499 21.1499 14.2899 20.7599C16.1699 15.1099 16.1699 8.88994 14.2899 3.22994C14.1599 2.83994 14.3699 2.40994 14.7599 2.27994C15.1599 2.14994 15.5799 2.35994 15.7099 2.74994C17.6999 8.70994 17.6999 15.2699 15.7099 21.2199C15.6099 21.5499 15.3099 21.7499 14.9999 21.7499Z"
                                fill="#292D32" />
                            <path
                                d="M12 17.2C9.21 17.2 6.43 16.81 3.75 16.02C3.74 16.42 3.41 16.75 3 16.75C2.59 16.75 2.25 16.41 2.25 16V15C2.25 14.76 2.37 14.53 2.56 14.39C2.76 14.25 3.01 14.21 3.24 14.29C8.89 16.17 15.12 16.17 20.77 14.29C21 14.21 21.25 14.25 21.45 14.39C21.65 14.53 21.76 14.76 21.76 15V16C21.76 16.41 21.42 16.75 21.01 16.75C20.6 16.75 20.27 16.43 20.26 16.02C17.57 16.81 14.79 17.2 12 17.2Z"
                                fill="#292D32" />
                            <path
                                d="M20.9998 9.75011C20.9198 9.75011 20.8398 9.74011 20.7598 9.71011C15.1098 7.83011 8.87978 7.83011 3.22978 9.71011C2.82978 9.84011 2.40978 9.63011 2.27978 9.24011C2.15978 8.84011 2.36978 8.42011 2.75978 8.29011C8.71978 6.30011 15.2798 6.30011 21.2298 8.29011C21.6198 8.42011 21.8398 8.85011 21.6998 9.24011C21.6098 9.55011 21.3098 9.75011 20.9998 9.75011Z"
                                fill="#292D32" />
                        </svg>
                        <div class="lang-name">
                            Tiếng Việt
                        </div>
                        <?php 
                        wp_nav_menu(array(
                            'theme_location' => 'menu-2',
                            'menu_class' => 'menu-lang',
                            
                        ))
                    ?>


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
    </div>