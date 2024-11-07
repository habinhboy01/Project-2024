-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 01, 2024 lúc 05:13 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `greenlines`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/GreenLines', 'yes'),
(2, 'home', 'http://localhost/GreenLines', 'yes'),
(3, 'blogname', 'GreenlinesDP', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'contact@greenlines-dp.com.vn', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '13', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '9', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:197:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"language_switcher/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"language_switcher/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"language_switcher/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"language_switcher/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"language_switcher/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"language_switcher/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"language_switcher/([^/]+)/embed/?$\";s:50:\"index.php?language_switcher=$matches[1]&embed=true\";s:38:\"language_switcher/([^/]+)/trackback/?$\";s:44:\"index.php?language_switcher=$matches[1]&tb=1\";s:46:\"language_switcher/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?language_switcher=$matches[1]&paged=$matches[2]\";s:53:\"language_switcher/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?language_switcher=$matches[1]&cpage=$matches[2]\";s:42:\"language_switcher/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?language_switcher=$matches[1]&page=$matches[2]\";s:34:\"language_switcher/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"language_switcher/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"language_switcher/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"language_switcher/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"language_switcher/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"language_switcher/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"tickets/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"tickets/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"tickets/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"tickets/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"tickets/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"tickets/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"tickets/([^/]+)/embed/?$\";s:40:\"index.php?tickets=$matches[1]&embed=true\";s:28:\"tickets/([^/]+)/trackback/?$\";s:34:\"index.php?tickets=$matches[1]&tb=1\";s:36:\"tickets/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?tickets=$matches[1]&paged=$matches[2]\";s:43:\"tickets/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?tickets=$matches[1]&cpage=$matches[2]\";s:32:\"tickets/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?tickets=$matches[1]&page=$matches[2]\";s:24:\"tickets/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"tickets/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"tickets/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"tickets/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"tickets/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"tickets/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"category-tickets/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?category-tickets=$matches[1]&feed=$matches[2]\";s:52:\"category-tickets/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?category-tickets=$matches[1]&feed=$matches[2]\";s:33:\"category-tickets/([^/]+)/embed/?$\";s:49:\"index.php?category-tickets=$matches[1]&embed=true\";s:45:\"category-tickets/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?category-tickets=$matches[1]&paged=$matches[2]\";s:27:\"category-tickets/([^/]+)/?$\";s:38:\"index.php?category-tickets=$matches[1]\";s:33:\"combo/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"combo/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"combo/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"combo/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"combo/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"combo/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"combo/([^/]+)/embed/?$\";s:38:\"index.php?combo=$matches[1]&embed=true\";s:26:\"combo/([^/]+)/trackback/?$\";s:32:\"index.php?combo=$matches[1]&tb=1\";s:34:\"combo/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?combo=$matches[1]&paged=$matches[2]\";s:41:\"combo/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?combo=$matches[1]&cpage=$matches[2]\";s:30:\"combo/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?combo=$matches[1]&page=$matches[2]\";s:22:\"combo/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"combo/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"combo/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"combo/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"combo/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"combo/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"category-combo/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?category-combo=$matches[1]&feed=$matches[2]\";s:50:\"category-combo/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?category-combo=$matches[1]&feed=$matches[2]\";s:31:\"category-combo/([^/]+)/embed/?$\";s:47:\"index.php?category-combo=$matches[1]&embed=true\";s:43:\"category-combo/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?category-combo=$matches[1]&paged=$matches[2]\";s:25:\"category-combo/([^/]+)/?$\";s:36:\"index.php?category-combo=$matches[1]\";s:32:\"tour/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"tour/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"tour/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"tour/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"tour/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"tour/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"tour/([^/]+)/embed/?$\";s:37:\"index.php?tour=$matches[1]&embed=true\";s:25:\"tour/([^/]+)/trackback/?$\";s:31:\"index.php?tour=$matches[1]&tb=1\";s:33:\"tour/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?tour=$matches[1]&paged=$matches[2]\";s:40:\"tour/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?tour=$matches[1]&cpage=$matches[2]\";s:29:\"tour/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?tour=$matches[1]&page=$matches[2]\";s:21:\"tour/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"tour/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"tour/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"tour/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"tour/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"tour/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"category-tour/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category-tour=$matches[1]&feed=$matches[2]\";s:49:\"category-tour/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category-tour=$matches[1]&feed=$matches[2]\";s:30:\"category-tour/([^/]+)/embed/?$\";s:46:\"index.php?category-tour=$matches[1]&embed=true\";s:42:\"category-tour/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category-tour=$matches[1]&paged=$matches[2]\";s:24:\"category-tour/([^/]+)/?$\";s:35:\"index.php?category-tour=$matches[1]\";s:32:\"food/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"food/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"food/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"food/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"food/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"food/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"food/([^/]+)/embed/?$\";s:37:\"index.php?food=$matches[1]&embed=true\";s:25:\"food/([^/]+)/trackback/?$\";s:31:\"index.php?food=$matches[1]&tb=1\";s:33:\"food/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?food=$matches[1]&paged=$matches[2]\";s:40:\"food/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?food=$matches[1]&cpage=$matches[2]\";s:29:\"food/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?food=$matches[1]&page=$matches[2]\";s:21:\"food/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"food/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"food/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"food/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"food/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"food/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"category-food/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category-food=$matches[1]&feed=$matches[2]\";s:49:\"category-food/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category-food=$matches[1]&feed=$matches[2]\";s:30:\"category-food/([^/]+)/embed/?$\";s:46:\"index.php?category-food=$matches[1]&embed=true\";s:42:\"category-food/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category-food=$matches[1]&paged=$matches[2]\";s:24:\"category-food/([^/]+)/?$\";s:35:\"index.php?category-food=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:37:\"translatepress-multilingual/index.php\";i:3;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'greenlines', 'yes'),
(41, 'stylesheet', 'greenlines', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '0', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '0', 'yes'),
(57, 'thumbnail_size_h', '0', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '0', 'yes'),
(60, 'medium_size_h', '0', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '0', 'yes'),
(63, 'large_size_h', '0', 'yes'),
(64, 'image_default_link_type', '', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '11', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1731210648', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:11:{i:1716454250;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1716479450;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716479481;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716522650;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716522681;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716522684;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716523302;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716868257;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1716882359;a:1:{s:21:\"trp_plugin_optin_sync\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1716954650;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1715658743;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(133, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"contact@greenlines-dp.com.vn\";s:7:\"version\";s:5:\"6.5.3\";s:9:\"timestamp\";i:1715658674;}', 'no'),
(142, 'can_compress_scripts', '1', 'yes'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(156, 'current_theme', 'GreenlinesDP', 'yes'),
(157, 'theme_mods_greenlines', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:9:{s:6:\"menu-1\";i:21;s:6:\"menu-2\";i:22;s:6:\"menu-3\";i:23;s:6:\"menu-4\";i:24;s:6:\"menu-5\";i:21;s:6:\"menu-6\";i:25;s:6:\"menu-7\";i:26;s:6:\"menu-8\";i:27;s:6:\"menu-9\";i:28;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(159, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(173, 'acf_version', '6.2.1.1', 'yes'),
(177, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"22.7\";}', 'yes'),
(178, 'wpseo', 'a:110:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";s:5:\"false\";s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"22.7\";s:16:\"previous_version\";s:4:\"22.6\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:19:\"enable_ai_generator\";b:1;s:22:\"ai_enabled_pre_default\";b:0;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";s:10:\"1715659302\";s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:27:\"http://localhost/GreenLines\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:4:{s:16:\"category-tickets\";s:16:\"category-tickets\";s:14:\"category-combo\";s:14:\"category-combo\";s:13:\"category-tour\";s:13:\"category-tour\";s:13:\"category-food\";s:13:\"category-food\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";s:10:\"1715659311\";s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:19:\"deny_ccbot_crawling\";b:0;s:29:\"deny_google_extended_crawling\";b:0;s:20:\"deny_gptbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:6:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:7:\"tickets\";i:3;s:5:\"combo\";i:4;s:4:\"tour\";i:5;s:4:\"food\";}s:28:\"last_known_public_taxonomies\";a:7:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:16:\"category-tickets\";i:4;s:14:\"category-combo\";i:5;s:13:\"category-tour\";i:6;s:13:\"category-food\";}s:23:\"last_known_no_unindexed\";a:5:{s:40:\"wpseo_total_unindexed_post_type_archives\";i:1716369426;s:27:\"wpseo_total_unindexed_posts\";i:1715659311;s:31:\"wpseo_unindexed_post_link_count\";i:1716369426;s:31:\"wpseo_unindexed_term_link_count\";i:1716369426;s:35:\"wpseo_total_unindexed_general_items\";i:1716369426;}s:14:\"new_post_types\";a:0:{}s:14:\"new_taxonomies\";a:0:{}s:34:\"show_new_content_type_notification\";b:0;}', 'yes'),
(179, 'wpseo_titles', 'a:207:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:39:\"<i class=\"fa-solid fa-angle-right\"></i>\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:15:\"org-description\";s:0:\"\";s:9:\"org-email\";s:0:\"\";s:9:\"org-phone\";s:0:\"\";s:14:\"org-legal-name\";s:0:\"\";s:17:\"org-founding-date\";s:0:\"\";s:20:\"org-number-employees\";s:0:\"\";s:10:\"org-vat-id\";s:0:\"\";s:10:\"org-tax-id\";s:0:\"\";s:7:\"org-iso\";s:0:\"\";s:8:\"org-duns\";s:0:\"\";s:11:\"org-leicode\";s:0:\"\";s:9:\"org-naics\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";s:8:\"category\";s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:13:\"title-tickets\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-tickets\";s:0:\"\";s:15:\"noindex-tickets\";b:0;s:26:\"display-metabox-pt-tickets\";b:1;s:26:\"post_types-tickets-maintax\";s:16:\"category-tickets\";s:24:\"schema-page-type-tickets\";s:7:\"WebPage\";s:27:\"schema-article-type-tickets\";s:4:\"None\";s:20:\"social-title-tickets\";s:9:\"%%title%%\";s:26:\"social-description-tickets\";s:0:\"\";s:24:\"social-image-url-tickets\";s:0:\"\";s:23:\"social-image-id-tickets\";i:0;s:11:\"title-combo\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:14:\"metadesc-combo\";s:0:\"\";s:13:\"noindex-combo\";b:0;s:24:\"display-metabox-pt-combo\";b:1;s:24:\"post_types-combo-maintax\";s:14:\"category-combo\";s:22:\"schema-page-type-combo\";s:7:\"WebPage\";s:25:\"schema-article-type-combo\";s:4:\"None\";s:18:\"social-title-combo\";s:9:\"%%title%%\";s:24:\"social-description-combo\";s:0:\"\";s:22:\"social-image-url-combo\";s:0:\"\";s:21:\"social-image-id-combo\";i:0;s:10:\"title-tour\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-tour\";s:0:\"\";s:12:\"noindex-tour\";b:0;s:23:\"display-metabox-pt-tour\";b:1;s:23:\"post_types-tour-maintax\";s:13:\"category-tour\";s:21:\"schema-page-type-tour\";s:7:\"WebPage\";s:24:\"schema-article-type-tour\";s:4:\"None\";s:17:\"social-title-tour\";s:9:\"%%title%%\";s:23:\"social-description-tour\";s:0:\"\";s:21:\"social-image-url-tour\";s:0:\"\";s:20:\"social-image-id-tour\";i:0;s:10:\"title-food\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-food\";s:0:\"\";s:12:\"noindex-food\";b:0;s:23:\"display-metabox-pt-food\";b:1;s:23:\"post_types-food-maintax\";s:13:\"category-food\";s:21:\"schema-page-type-food\";s:7:\"WebPage\";s:24:\"schema-article-type-food\";s:4:\"None\";s:17:\"social-title-food\";s:9:\"%%title%%\";s:23:\"social-description-food\";s:0:\"\";s:21:\"social-image-url-food\";s:0:\"\";s:20:\"social-image-id-food\";i:0;s:26:\"title-tax-category-tickets\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:29:\"metadesc-tax-category-tickets\";s:0:\"\";s:36:\"display-metabox-tax-category-tickets\";b:1;s:28:\"noindex-tax-category-tickets\";b:0;s:33:\"social-title-tax-category-tickets\";s:23:\"%%term_title%% Archives\";s:39:\"social-description-tax-category-tickets\";s:0:\"\";s:37:\"social-image-url-tax-category-tickets\";s:0:\"\";s:36:\"social-image-id-tax-category-tickets\";i:0;s:34:\"taxonomy-category-tickets-ptparent\";i:0;s:24:\"title-tax-category-combo\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:27:\"metadesc-tax-category-combo\";s:0:\"\";s:34:\"display-metabox-tax-category-combo\";b:1;s:26:\"noindex-tax-category-combo\";b:0;s:31:\"social-title-tax-category-combo\";s:23:\"%%term_title%% Archives\";s:37:\"social-description-tax-category-combo\";s:0:\"\";s:35:\"social-image-url-tax-category-combo\";s:0:\"\";s:34:\"social-image-id-tax-category-combo\";i:0;s:32:\"taxonomy-category-combo-ptparent\";i:0;s:23:\"title-tax-category-tour\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-tax-category-tour\";s:0:\"\";s:33:\"display-metabox-tax-category-tour\";b:1;s:25:\"noindex-tax-category-tour\";b:0;s:30:\"social-title-tax-category-tour\";s:23:\"%%term_title%% Archives\";s:36:\"social-description-tax-category-tour\";s:0:\"\";s:34:\"social-image-url-tax-category-tour\";s:0:\"\";s:33:\"social-image-id-tax-category-tour\";i:0;s:31:\"taxonomy-category-tour-ptparent\";i:0;s:23:\"title-tax-category-food\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-tax-category-food\";s:0:\"\";s:33:\"display-metabox-tax-category-food\";b:1;s:25:\"noindex-tax-category-food\";b:0;s:30:\"social-title-tax-category-food\";s:23:\"%%term_title%% Archives\";s:36:\"social-description-tax-category-food\";s:0:\"\";s:34:\"social-image-url-tax-category-food\";s:0:\"\";s:33:\"social-image-id-tax-category-food\";i:0;s:31:\"taxonomy-category-food-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(180, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(200, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.9.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1715659406;s:7:\"version\";s:5:\"5.9.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(206, 'WPLANG', '', 'yes'),
(207, 'new_admin_email', 'contact@greenlines-dp.com.vn', 'yes'),
(216, 'options_logo', '60', 'no'),
(217, '_options_logo', 'field_663d8b6e3f8b1', 'no'),
(218, 'options_logo-footer', '61', 'no'),
(219, '_options_logo-footer', 'field_663da15b692cc', 'no'),
(220, 'options_phones', 'Melinh Point Office Building\r\n02 Ngô Đức Kế, Quận 1, TP Hồ Chí Minh\r\n<span style=\"color: #58c17d;\">Hotline: 098 800 9579</span>\r\nPhòng vé Sài Gòn: 0901 449 888\r\nPhòng vé Vũng Tàu: 0986 908 907', 'no'),
(221, '_options_phones', 'field_663d8bd33f8b3', 'no'),
(222, 'options_copyright', '© 2024 - Công ty TNHH Công Nghệ Xanh DP\r\nGiấy chứng nhận Đăng ký Kinh doanh số 3500719158 do Sở Kế hoạch và Đầu tư Thành phố Hồ Chí Minh cấp ngày 21/07/2005', 'no'),
(223, '_options_copyright', 'field_663da7a67e4c6', 'no'),
(224, 'options_footer-img', '62', 'no'),
(225, '_options_footer-img', 'field_663da841eb4de', 'no'),
(256, 'wpseo_taxonomy_meta', 'a:5:{s:16:\"category-tickets\";a:1:{i:2;a:3:{s:11:\"wpseo_title\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:13:\"wpseo_linkdex\";s:5:\"-2191\";s:19:\"wpseo_content_score\";s:1:\"0\";}}s:13:\"category-tour\";a:1:{i:10;a:3:{s:11:\"wpseo_title\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:13:\"wpseo_linkdex\";s:5:\"-2191\";s:19:\"wpseo_content_score\";s:1:\"0\";}}s:8:\"category\";a:1:{i:13;a:3:{s:11:\"wpseo_title\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:13:\"wpseo_linkdex\";s:5:\"-2803\";s:19:\"wpseo_content_score\";s:1:\"0\";}}s:13:\"category-food\";a:1:{i:17;a:3:{s:11:\"wpseo_title\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:13:\"wpseo_linkdex\";s:5:\"-2178\";s:19:\"wpseo_content_score\";s:2:\"90\";}}s:14:\"category-combo\";a:1:{i:6;a:3:{s:11:\"wpseo_title\";s:44:\"%%term_title%% %%page%% %%sep%% %%sitename%%\";s:13:\"wpseo_linkdex\";s:5:\"-2184\";s:19:\"wpseo_content_score\";s:2:\"90\";}}}', 'yes'),
(257, 'category-tickets_children', 'a:1:{i:2;a:3:{i:0;i:3;i:1;i:4;i:2;i:5;}}', 'yes'),
(278, 'category-tour_children', 'a:1:{i:10;a:2:{i:0;i:11;i:1;i:12;}}', 'yes'),
(297, 'wp_calendar_block_has_published_posts', '', 'yes'),
(308, 'category_children', 'a:0:{}', 'yes'),
(313, 'category-food_children', 'a:1:{i:17;a:3:{i:0;i:18;i:1;i:19;i:2;i:20;}}', 'yes'),
(319, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(323, 'trp_settings', 'a:15:{s:16:\"default-language\";s:5:\"en_US\";s:17:\"publish-languages\";a:2:{i:0;s:5:\"en_US\";i:1;s:2:\"vi\";}s:21:\"translation-languages\";a:2:{i:0;s:5:\"en_US\";i:1;s:2:\"vi\";}s:9:\"url-slugs\";a:2:{s:5:\"en_US\";s:2:\"en\";s:2:\"vi\";s:2:\"vi\";}s:22:\"native_or_english_name\";s:12:\"english_name\";s:36:\"add-subdirectory-to-default-language\";s:2:\"no\";s:30:\"force-language-to-custom-links\";s:3:\"yes\";s:17:\"shortcode-options\";s:16:\"flags-full-names\";s:12:\"menu-options\";s:10:\"full-names\";s:15:\"floater-options\";s:16:\"flags-full-names\";s:13:\"floater-color\";s:4:\"dark\";s:16:\"floater-position\";s:12:\"bottom-right\";s:14:\"trp-ls-floater\";s:2:\"no\";s:21:\"trp-ls-show-poweredby\";s:2:\"no\";s:41:\"translation-languages-formality-parameter\";a:2:{s:5:\"en_US\";s:7:\"default\";s:2:\"vi\";s:7:\"default\";}}', 'yes'),
(324, 'trp_db_stored_data', 'a:2:{s:17:\"install_timestamp\";i:1715672759;s:27:\"gettext_plural_forms_header\";a:2:{s:5:\"en_US\";s:26:\"nplurals=2; plural=n != 1;\";s:2:\"vi\";s:21:\"nplurals=1; plural=0;\";}}', 'yes'),
(325, 'trp_plugin_version', '2.7.7', 'yes'),
(330, 'trp_plugin_optin', 'no', 'yes'),
(331, 'trp_advanced_settings', 'a:24:{s:39:\"show_dynamic_content_before_translation\";s:2:\"no\";s:27:\"disable_dynamic_translation\";s:2:\"no\";s:26:\"strip_gettext_post_content\";s:2:\"no\";s:23:\"strip_gettext_post_meta\";s:2:\"no\";s:23:\"exclude_gettext_strings\";a:2:{s:6:\"string\";a:0:{}s:6:\"domain\";a:0:{}}s:33:\"exclude_words_from_auto_translate\";a:1:{s:5:\"words\";a:0:{}}s:22:\"skip_dynamic_selectors\";a:1:{s:8:\"selector\";a:0:{}}s:27:\"exclude_translate_selectors\";a:1:{s:8:\"selector\";a:0:{}}s:44:\"exclude_selectors_from_automatic_translation\";a:1:{s:8:\"selector\";a:0:{}}s:42:\"disable_post_container_tags_for_post_title\";s:2:\"no\";s:44:\"disable_post_container_tags_for_post_content\";s:2:\"no\";s:39:\"disable_translation_for_gettext_strings\";s:2:\"no\";s:38:\"show_regular_tab_in_string_translation\";s:2:\"no\";s:22:\"hreflang_remove_locale\";s:9:\"show_both\";s:23:\"html_lang_remove_locale\";s:7:\"default\";s:25:\"serve_similar_translation\";s:2:\"no\";s:27:\"force_slash_at_end_of_links\";s:2:\"no\";s:27:\"enable_numerals_translation\";s:2:\"no\";s:25:\"disable_languages_sitemap\";s:2:\"no\";s:24:\"enable_hreflang_xdefault\";s:8:\"disabled\";s:46:\"show_opposite_flag_language_switcher_shortcode\";s:2:\"no\";s:41:\"open_language_switcher_shortcode_on_click\";s:2:\"no\";s:20:\"plugin_optin_setting\";s:2:\"no\";s:15:\"custom_language\";a:6:{s:11:\"cuslangcode\";a:0:{}s:11:\"cuslangname\";a:0:{}s:13:\"cuslangnative\";a:0:{}s:10:\"cuslangiso\";a:0:{}s:11:\"cuslangflag\";a:0:{}s:12:\"cuslangisrtl\";a:0:{}}}', 'yes'),
(364, 'category-combo_children', 'a:1:{i:6;a:3:{i:0;i:7;i:1;i:8;i:2;i:9;}}', 'yes'),
(384, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1716450974;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(385, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716450980;s:7:\"checked\";a:2:{s:10:\"greenlines\";s:0:\"\";s:16:\"twentytwentyfour\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.1.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}}', 'no'),
(429, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(430, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":1,\"critical\":3}', 'yes'),
(494, '_transient_timeout_acf_plugin_updates', '1716542214', 'no'),
(495, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.2.10\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20240515\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:7:\"6.2.1.1\";}}', 'no'),
(499, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1716974221', 'no'),
(500, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(501, '_transient_timeout_trp_checked_if_site_meets_conditions_for_review', '1716455825', 'no'),
(502, '_transient_trp_checked_if_site_meets_conditions_for_review', 'yes', 'no'),
(507, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1716455826', 'no'),
(508, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(509, '_transient_timeout_wpseo_total_unindexed_general_items', '1716455826', 'no'),
(510, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(511, '_transient_timeout_wpseo_unindexed_post_link_count', '1716455826', 'no'),
(512, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(513, '_transient_timeout_wpseo_unindexed_term_link_count', '1716455826', 'no'),
(514, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(515, '_site_transient_timeout_browser_a16ddaab909d2cf27fce353f26dd2ff2', '1716974228', 'no'),
(516, '_site_transient_browser_a16ddaab909d2cf27fce353f26dd2ff2', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"124.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(519, '_transient_timeout_wpseo-statistics-totals', '1716455839', 'no'),
(520, '_transient_wpseo-statistics-totals', 'a:1:{i:1;a:2:{s:6:\"scores\";a:0:{}s:8:\"division\";b:0;}}', 'no'),
(543, '_site_transient_timeout_available_translations', '1716461751', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(544, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.8\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.8/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-17 04:58:23\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.4/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.25/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 09:17:56\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-20 07:52:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-03 06:53:44\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 08:56:53\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 11:05:05\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-07 05:56:51\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-26 13:47:17\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-03 13:12:29\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-26 13:44:37\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.5.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 14:48:34\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-13 14:21:47\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.5.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-15 20:08:02\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-24 17:26:23\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-10 06:30:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 03:31:51\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 03:31:15\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 19:22:48\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-05-22 11:31:29\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-08 07:13:13\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-08 03:22:25\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-30 13:49:56\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 17:55:40\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 15:08:30\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-11-08 20:42:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.15/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.20/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-10-05 10:16:58\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-01-12 17:31:37\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 18:38:28\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 17:07:01\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-03 13:45:51\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 08:21:26\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 13:13:32\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.5/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-19 23:22:01\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-03-01 06:52:39\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.32\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.32/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-25 08:05:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-16 07:24:01\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 11:52:45\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-22 14:20:40\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-12 09:04:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-04 16:29:29\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 07:16:04\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.25/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.20/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.6\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.6/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-13 16:06:43\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-20 01:03:51\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.3/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-26 16:49:07\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.3/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-09 18:37:05\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-17 13:37:48\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.8\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.8/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-23 19:36:11\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 08:56:54\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-18 13:37:11\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.14\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.14/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 17:40:16\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-14 08:49:16\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-05 08:03:59\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 21:12:05\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-15 09:47:39\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 13:57:21\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.33\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.33/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 23:10:57\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-29 14:17:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 10:39:37\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 19:04:40\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 19:26:39\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.15/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 11:21:59\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-12 10:29:16\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-02-14 12:47:33\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-25 15:04:50\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-03 15:29:12\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-18 11:29:39\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-14 05:23:13\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.9/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.24/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-18 15:04:07\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-20 12:38:20\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.15/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-21 03:44:55\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-12 07:23:41\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-19 09:07:33\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(547, '_site_transient_timeout_theme_roots', '1716452778', 'no'),
(548, '_site_transient_theme_roots', 'a:2:{s:10:\"greenlines\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";}', 'no'),
(549, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716450981;s:8:\"response\";a:2:{s:37:\"translatepress-multilingual/index.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:41:\"w.org/plugins/translatepress-multilingual\";s:4:\"slug\";s:27:\"translatepress-multilingual\";s:6:\"plugin\";s:37:\"translatepress-multilingual/index.php\";s:11:\"new_version\";s:5:\"2.7.8\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/translatepress-multilingual/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/translatepress-multilingual.2.7.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/translatepress-multilingual/assets/icon-256x256.png?rev=1722670\";s:2:\"1x\";s:80:\"https://ps.w.org/translatepress-multilingual/assets/icon-128x128.png?rev=1722670\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/translatepress-multilingual/assets/banner-1544x500.png?rev=2312348\";s:2:\"1x\";s:82:\"https://ps.w.org/translatepress-multilingual/assets/banner-772x250.png?rev=2312348\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.1.0\";s:6:\"tested\";s:5:\"6.5.3\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.2.10\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20240515\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"22.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.22.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.4\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:7:\"6.2.1.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.9.5\";s:37:\"translatepress-multilingual/index.php\";s:5:\"2.7.7\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"22.7\";}}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(15, 10, '_form', '<label> Họ và Tên\n    [text* your-name autocomplete:name class:input-book] </label>\n\n<label> Số điện thoại/ Zalo\n    [text* phone class:input-book] </label>\n\n<label> Ngày đi\n    [text* date class:input-book] </label>\n\n[submit class:sub-book \"Liên hệ đặt vé\"]'),
(16, 10, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:44:\"[_site_title] <contact@greenlines-dp.com.vn>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(17, 10, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:44:\"[_site_title] <contact@greenlines-dp.com.vn>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(18, 10, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(19, 10, '_additional_settings', ''),
(20, 10, '_locale', 'en_US'),
(21, 10, '_hash', '2ed27e7f023bacd679258531ea29517ad904e7d6'),
(22, 11, '_edit_lock', '1715672369:1'),
(23, 11, '_wp_page_template', 'index.php'),
(24, 11, '_edit_last', '1'),
(25, 11, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(26, 11, '_yoast_wpseo_wordproof_timestamp', ''),
(27, 13, '_edit_lock', '1715763455:1'),
(28, 13, '_wp_page_template', 'pages/contact.php'),
(29, 13, '_edit_last', '1'),
(30, 13, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(31, 13, '_yoast_wpseo_wordproof_timestamp', ''),
(32, 24, '_edit_lock', '1715672199:1'),
(33, 60, '_wp_attached_file', '2024/05/Logo.png'),
(34, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:572;s:6:\"height\";i:296;s:4:\"file\";s:16:\"2024/05/Logo.png\";s:8:\"filesize\";i:32733;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 61, '_wp_attached_file', '2024/05/LOGO-GREENLINESDP-1in-1.png'),
(36, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:724;s:6:\"height\";i:268;s:4:\"file\";s:35:\"2024/05/LOGO-GREENLINESDP-1in-1.png\";s:8:\"filesize\";i:85078;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 62, '_wp_attached_file', '2024/05/image-2.png'),
(38, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:180;s:6:\"height\";i:68;s:4:\"file\";s:19:\"2024/05/image-2.png\";s:8:\"filesize\";i:8736;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 63, '_wp_attached_file', '2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg'),
(40, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1366;s:6:\"height\";i:692;s:4:\"file\";s:43:\"2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg\";s:8:\"filesize\";i:194658;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1561647279\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 64, '_wp_attached_file', '2024/05/cang-cau-da-60a1d66a8bb80.jpg'),
(42, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:768;s:6:\"height\";i:584;s:4:\"file\";s:37:\"2024/05/cang-cau-da-60a1d66a8bb80.jpg\";s:8:\"filesize\";i:141218;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(43, 65, '_wp_attached_file', '2024/05/Khu-Du-lich-Ho-May-Vung-Tau-1024x683-1.jpg'),
(44, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:50:\"2024/05/Khu-Du-lich-Ho-May-Vung-Tau-1024x683-1.jpg\";s:8:\"filesize\";i:170380;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 66, '_wp_attached_file', '2024/05/Rectangle-25.png'),
(46, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:385;s:6:\"height\";i:385;s:4:\"file\";s:24:\"2024/05/Rectangle-25.png\";s:8:\"filesize\";i:149032;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 67, '_wp_attached_file', '2024/05/Rectangle-29.png'),
(48, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:988;s:6:\"height\";i:1308;s:4:\"file\";s:24:\"2024/05/Rectangle-29.png\";s:8:\"filesize\";i:1582125;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 68, '_wp_attached_file', '2024/05/Rectangle-30.png'),
(50, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:988;s:6:\"height\";i:1308;s:4:\"file\";s:24:\"2024/05/Rectangle-30.png\";s:8:\"filesize\";i:759640;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 69, '_wp_attached_file', '2024/05/Rectangle-31.png'),
(52, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:988;s:6:\"height\";i:1308;s:4:\"file\";s:24:\"2024/05/Rectangle-31.png\";s:8:\"filesize\";i:2273068;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 70, '_wp_attached_file', '2024/05/7ec8c2145919a627326e71122dd7d196.png'),
(54, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1587;s:6:\"height\";i:2381;s:4:\"file\";s:44:\"2024/05/7ec8c2145919a627326e71122dd7d196.png\";s:8:\"filesize\";i:5881822;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 71, '_wp_attached_file', '2024/05/27f08a3f8dfaf82a273a84eed22b56d9.png'),
(56, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1528;s:6:\"height\";i:1910;s:4:\"file\";s:44:\"2024/05/27f08a3f8dfaf82a273a84eed22b56d9.png\";s:8:\"filesize\";i:4244991;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 72, '_wp_attached_file', '2024/05/48e2ac767863651b9a50d505c8aaaec4.png'),
(58, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1587;s:6:\"height\";i:2381;s:4:\"file\";s:44:\"2024/05/48e2ac767863651b9a50d505c8aaaec4.png\";s:8:\"filesize\";i:4024091;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 11, 'heading-slides_0_text', 'Hòa Mình Trong Hành Trình Khám Phá 🚀\r\n<h3>Khám Phá Vẻ Đẹp Tự Nhiên và Du Lịch</h3>\r\nHãy cùng chúng tôi khám phá những cung đường ít người biết và những điểm đến độc đáo.'),
(60, 11, '_heading-slides_0_text', 'field_663f14d5357be'),
(61, 11, 'heading-slides_0_img', '63'),
(62, 11, '_heading-slides_0_img', 'field_663f14e7357bf'),
(63, 11, 'heading-slides_1_text', 'Hòa Mình Trong Hành Trình Khám Phá 🚀\r\n<h3>Khám Phá Vẻ Đẹp Tự Nhiên và Du Lịch</h3>\r\nHãy cùng chúng tôi khám phá những cung đường ít người biết và những điểm đến độc đáo.'),
(64, 11, '_heading-slides_1_text', 'field_663f14d5357be'),
(65, 11, 'heading-slides_1_img', '63'),
(66, 11, '_heading-slides_1_img', 'field_663f14e7357bf'),
(67, 11, 'heading-slides', '2'),
(68, 11, '_heading-slides', 'field_663f1418357bd'),
(69, 11, 'office-title', 'Các điểm bán vé'),
(70, 11, '_office-title', 'field_663f2029d72bf'),
(71, 11, 'tickets-offices_0_name', 'Cảng Cầu Đá'),
(72, 11, '_tickets-offices_0_name', 'field_663f1d32997ff'),
(73, 11, 'tickets-offices_0_address', '9 Hạ Long, Phường 2, TP Vũng Tàu, Bà Rịa - Vũng Tàu'),
(74, 11, '_tickets-offices_0_address', 'field_663f1e0999800'),
(75, 11, 'tickets-offices_0_img', '64'),
(76, 11, '_tickets-offices_0_img', 'field_663f1e1399801'),
(77, 11, 'tickets-offices_1_name', 'Bến Hồ Mây'),
(78, 11, '_tickets-offices_1_name', 'field_663f1d32997ff'),
(79, 11, 'tickets-offices_1_address', '1A Trần Phú, Phường 1, TP Vũng Tàu, tỉnh Bà Rịa – Vũng Tàu'),
(80, 11, '_tickets-offices_1_address', 'field_663f1e0999800'),
(81, 11, 'tickets-offices_1_img', '65'),
(82, 11, '_tickets-offices_1_img', 'field_663f1e1399801'),
(83, 11, 'tickets-offices_2_name', 'Bến Bạch Đằng'),
(84, 11, '_tickets-offices_2_name', 'field_663f1d32997ff'),
(85, 11, 'tickets-offices_2_address', '10B Tôn Đức Thắng, phường Bến Nghé, quận 1, TP.HCM'),
(86, 11, '_tickets-offices_2_address', 'field_663f1e0999800'),
(87, 11, 'tickets-offices_2_img', '66'),
(88, 11, '_tickets-offices_2_img', 'field_663f1e1399801'),
(89, 11, 'tickets-offices', '3'),
(90, 11, '_tickets-offices', 'field_663f1b34997fe'),
(91, 11, 'highway-title', 'Các tuyến tàu cao tốc chính'),
(92, 11, '_highway-title', 'field_663f260b297fb'),
(93, 11, 'main-highways_0_from', 'Sài Gòn'),
(94, 11, '_main-highways_0_from', 'field_663f244beb422'),
(95, 11, 'main-highways_0_to', 'Vũng Tàu '),
(96, 11, '_main-highways_0_to', 'field_663f2451eb423'),
(97, 11, 'main-highways_0_weekday-price', 'Người lớn\r\n<h3><strong>320.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>270.000 </strong></h3>'),
(98, 11, '_main-highways_0_weekday-price', 'field_663f2456eb424'),
(99, 11, 'main-highways_0_weekend-price', 'Người lớn\r\n<h3><strong>350.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>290.000</strong></h3>'),
(100, 11, '_main-highways_0_weekend-price', 'field_663f2465eb425'),
(101, 11, 'main-highways_0_link', '#'),
(102, 11, '_main-highways_0_link', 'field_663f25137d4c3'),
(103, 11, 'main-highways_1_from', 'Sài Gòn'),
(104, 11, '_main-highways_1_from', 'field_663f244beb422'),
(105, 11, 'main-highways_1_to', 'Nha Trang'),
(106, 11, '_main-highways_1_to', 'field_663f2451eb423'),
(107, 11, 'main-highways_1_weekday-price', 'Người lớn\r\n<h3><strong>320.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>270.000 </strong></h3>'),
(108, 11, '_main-highways_1_weekday-price', 'field_663f2456eb424'),
(109, 11, 'main-highways_1_weekend-price', 'Người lớn\r\n<h3><strong>350.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>290.000</strong></h3>'),
(110, 11, '_main-highways_1_weekend-price', 'field_663f2465eb425'),
(111, 11, 'main-highways_1_link', '#'),
(112, 11, '_main-highways_1_link', 'field_663f25137d4c3'),
(113, 11, 'main-highways', '2'),
(114, 11, '_main-highways', 'field_663f23f9eb421'),
(115, 11, 'combo-title', 'Combo nổi bật'),
(116, 11, '_combo-title', 'field_6640b9e3aa0fb'),
(117, 11, 'combo-desc', 'Điểm đến hot nhất do khách du lịch bình chọn.'),
(118, 11, '_combo-desc', 'field_6640ba15aa0fc'),
(119, 11, 'posts-1', 'combo'),
(120, 11, '_posts-1', 'field_6641698ff018a'),
(121, 11, 'more-posts-1', ''),
(122, 11, '_more-posts-1', 'field_6641734cfd1d4'),
(123, 11, 'tour-title', 'Tour du lịch sông nước'),
(124, 11, '_tour-title', 'field_664176a6a9454'),
(125, 11, 'tour-desc', 'Những dòng sông hiền hòa uốn lượn'),
(126, 11, '_tour-desc', 'field_664176ffa9455'),
(127, 11, 'posts-2', 'tour'),
(128, 11, '_posts-2', 'field_66417713a9456'),
(129, 11, 'more-posts-2', ''),
(130, 11, '_more-posts-2', 'field_66417725a9457'),
(131, 11, 'food-title', 'Dịch vụ ẩm thực'),
(132, 11, '_food-title', 'field_66418cc1e3e7a'),
(133, 11, 'food-desc', 'Du lịch ẩm thực là một cuộc phiêu lưu tuyệt vời đưa bạn khám phá không chỉ vẻ đẹp của đất nước mà còn là văn hóa và truyền thống ẩm thực của nó. Mỗi món ăn đều là một câu chuyện, là một phần của lịch sử và đời sống của người dân địa phương.'),
(134, 11, '_food-desc', 'field_66418cd8e3e7b'),
(135, 11, 'posts-3', 'food'),
(136, 11, '_posts-3', 'field_66418cf7e3e7c'),
(137, 11, 'more-posts-3', ''),
(138, 11, '_more-posts-3', 'field_66418d16e3e7d'),
(139, 11, 'review-title', 'Trải nghiệm của du khách'),
(140, 11, '_review-title', 'field_6641c70174192'),
(141, 11, 'review-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Magna eget est'),
(142, 11, '_review-desc', 'field_6641c71f74193'),
(143, 11, 'reviews_0_img', '70'),
(144, 11, '_reviews_0_img', 'field_6641c75474195'),
(145, 11, 'reviews_0_name', 'Phong Nguyễn'),
(146, 11, '_reviews_0_name', 'field_6641c79974196'),
(147, 11, 'reviews_0_text', '\"Chuyến du lịch của tôi cùng GreenslinesDP thật sự tuyệt vời! Từ việc tổ chức chuyến đi cho đến dịch vụ phục vụ, đều vượt quá mong đợi của tôi. Tôi đã có những trải nghiệm đầy ý nghĩa và những kỷ niệm khó quên. Cảm ơn GreenslinesDP đã mang đến cho tôi một chuyến đi đáng nhớ!\" '),
(148, 11, '_reviews_0_text', 'field_6641c7a474197'),
(149, 11, 'reviews_1_img', '71'),
(150, 11, '_reviews_1_img', 'field_6641c75474195'),
(151, 11, 'reviews_1_name', 'Hằng Nguyễn'),
(152, 11, '_reviews_1_name', 'field_6641c79974196'),
(153, 11, 'reviews_1_text', '\"GreenslinesDP không chỉ đưa tôi đến những địa điểm đẹp mắt, mà còn giúp tôi khám phá những điều mới mẻ và thú vị về văn hóa địa phương. Dịch vụ chuyên nghiệp, nhân viên thân thiện và chuyên môn. Tôi sẽ chắc chắn quay lại với GreenslinesDP cho các chuyến đi tiếp theo của mình!\"'),
(154, 11, '_reviews_1_text', 'field_6641c7a474197'),
(155, 11, 'reviews_2_img', '72'),
(156, 11, '_reviews_2_img', 'field_6641c75474195'),
(157, 11, 'reviews_2_name', 'Tuấn Nguyễn'),
(158, 11, '_reviews_2_name', 'field_6641c79974196'),
(159, 11, 'reviews_2_text', '\"GreenslinesDP không chỉ đưa tôi đến những địa điểm đẹp mắt, mà còn giúp tôi khám phá những điều mới mẻ và thú vị về văn hóa địa phương. Dịch vụ chuyên nghiệp, nhân viên thân thiện và chuyên môn. Tôi sẽ chắc chắn quay lại với GreenslinesDP cho các chuyến đi tiếp theo của mình!\"'),
(160, 11, '_reviews_2_text', 'field_6641c7a474197'),
(161, 11, 'reviews', '3'),
(162, 11, '_reviews', 'field_6641c73274194'),
(163, 11, 'news-title', 'Sự Kiện & Tin Tức Du Lịch'),
(164, 11, '_news-title', 'field_6641e20384f90'),
(165, 11, 'news-text', 'Theo dõi những địa điểm thú vị thông qua tin tức và sự kiện du lịch của chúng tôi'),
(166, 11, '_news-text', 'field_6641e21184f91'),
(167, 15, 'heading-slides_0_text', 'Hòa Mình Trong Hành Trình Khám Phá 🚀\r\n<h3>Khám Phá Vẻ Đẹp Tự Nhiên và Du Lịch</h3>\r\nHãy cùng chúng tôi khám phá những cung đường ít người biết và những điểm đến độc đáo.'),
(168, 15, '_heading-slides_0_text', 'field_663f14d5357be'),
(169, 15, 'heading-slides_0_img', '63'),
(170, 15, '_heading-slides_0_img', 'field_663f14e7357bf'),
(171, 15, 'heading-slides_1_text', 'Hòa Mình Trong Hành Trình Khám Phá 🚀\r\n<h3>Khám Phá Vẻ Đẹp Tự Nhiên và Du Lịch</h3>\r\nHãy cùng chúng tôi khám phá những cung đường ít người biết và những điểm đến độc đáo.'),
(172, 15, '_heading-slides_1_text', 'field_663f14d5357be'),
(173, 15, 'heading-slides_1_img', '63'),
(174, 15, '_heading-slides_1_img', 'field_663f14e7357bf'),
(175, 15, 'heading-slides', '2'),
(176, 15, '_heading-slides', 'field_663f1418357bd'),
(177, 15, 'office-title', 'Các điểm bán vé'),
(178, 15, '_office-title', 'field_663f2029d72bf'),
(179, 15, 'tickets-offices_0_name', 'Cảng Cầu Đá'),
(180, 15, '_tickets-offices_0_name', 'field_663f1d32997ff'),
(181, 15, 'tickets-offices_0_address', '9 Hạ Long, Phường 2, TP Vũng Tàu, Bà Rịa - Vũng Tàu'),
(182, 15, '_tickets-offices_0_address', 'field_663f1e0999800'),
(183, 15, 'tickets-offices_0_img', '64'),
(184, 15, '_tickets-offices_0_img', 'field_663f1e1399801'),
(185, 15, 'tickets-offices_1_name', 'Bến Hồ Mây'),
(186, 15, '_tickets-offices_1_name', 'field_663f1d32997ff'),
(187, 15, 'tickets-offices_1_address', '1A Trần Phú, Phường 1, TP Vũng Tàu, tỉnh Bà Rịa – Vũng Tàu'),
(188, 15, '_tickets-offices_1_address', 'field_663f1e0999800'),
(189, 15, 'tickets-offices_1_img', '65'),
(190, 15, '_tickets-offices_1_img', 'field_663f1e1399801'),
(191, 15, 'tickets-offices_2_name', 'Bến Bạch Đằng'),
(192, 15, '_tickets-offices_2_name', 'field_663f1d32997ff'),
(193, 15, 'tickets-offices_2_address', '10B Tôn Đức Thắng, phường Bến Nghé, quận 1, TP.HCM'),
(194, 15, '_tickets-offices_2_address', 'field_663f1e0999800'),
(195, 15, 'tickets-offices_2_img', '66'),
(196, 15, '_tickets-offices_2_img', 'field_663f1e1399801'),
(197, 15, 'tickets-offices', '3'),
(198, 15, '_tickets-offices', 'field_663f1b34997fe'),
(199, 15, 'highway-title', 'Các tuyến tàu cao tốc chính'),
(200, 15, '_highway-title', 'field_663f260b297fb'),
(201, 15, 'main-highways_0_from', 'Sài Gòn'),
(202, 15, '_main-highways_0_from', 'field_663f244beb422'),
(203, 15, 'main-highways_0_to', 'Vũng Tàu '),
(204, 15, '_main-highways_0_to', 'field_663f2451eb423'),
(205, 15, 'main-highways_0_weekday-price', 'Người lớn\r\n<h3><strong>320.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>270.000 </strong></h3>'),
(206, 15, '_main-highways_0_weekday-price', 'field_663f2456eb424'),
(207, 15, 'main-highways_0_weekend-price', 'Người lớn\r\n<h3><strong>350.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>290.000</strong></h3>'),
(208, 15, '_main-highways_0_weekend-price', 'field_663f2465eb425'),
(209, 15, 'main-highways_0_link', '#'),
(210, 15, '_main-highways_0_link', 'field_663f25137d4c3'),
(211, 15, 'main-highways_1_from', 'Sài Gòn'),
(212, 15, '_main-highways_1_from', 'field_663f244beb422'),
(213, 15, 'main-highways_1_to', 'Nha Trang'),
(214, 15, '_main-highways_1_to', 'field_663f2451eb423'),
(215, 15, 'main-highways_1_weekday-price', 'Người lớn\r\n<h3><strong>320.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>270.000 </strong></h3>'),
(216, 15, '_main-highways_1_weekday-price', 'field_663f2456eb424'),
(217, 15, 'main-highways_1_weekend-price', 'Người lớn\r\n<h3><strong>350.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>290.000</strong></h3>'),
(218, 15, '_main-highways_1_weekend-price', 'field_663f2465eb425'),
(219, 15, 'main-highways_1_link', '#'),
(220, 15, '_main-highways_1_link', 'field_663f25137d4c3'),
(221, 15, 'main-highways', '2'),
(222, 15, '_main-highways', 'field_663f23f9eb421'),
(223, 15, 'combo-title', 'Combo nổi bật'),
(224, 15, '_combo-title', 'field_6640b9e3aa0fb'),
(225, 15, 'combo-desc', 'Điểm đến hot nhất do khách du lịch bình chọn.'),
(226, 15, '_combo-desc', 'field_6640ba15aa0fc'),
(227, 15, 'posts-1', 'combo'),
(228, 15, '_posts-1', 'field_6641698ff018a'),
(229, 15, 'more-posts-1', ''),
(230, 15, '_more-posts-1', 'field_6641734cfd1d4'),
(231, 15, 'tour-title', 'Tour du lịch sông nước'),
(232, 15, '_tour-title', 'field_664176a6a9454'),
(233, 15, 'tour-desc', 'Những dòng sông hiền hòa uốn lượn'),
(234, 15, '_tour-desc', 'field_664176ffa9455'),
(235, 15, 'posts-2', 'combo'),
(236, 15, '_posts-2', 'field_66417713a9456'),
(237, 15, 'more-posts-2', ''),
(238, 15, '_more-posts-2', 'field_66417725a9457'),
(239, 15, 'food-title', 'Dịch vụ ẩm thực'),
(240, 15, '_food-title', 'field_66418cc1e3e7a'),
(241, 15, 'food-desc', 'Du lịch ẩm thực là một cuộc phiêu lưu tuyệt vời đưa bạn khám phá không chỉ vẻ đẹp của đất nước mà còn là văn hóa và truyền thống ẩm thực của nó. Mỗi món ăn đều là một câu chuyện, là một phần của lịch sử và đời sống của người dân địa phương.'),
(242, 15, '_food-desc', 'field_66418cd8e3e7b'),
(243, 15, 'posts-3', 'combo'),
(244, 15, '_posts-3', 'field_66418cf7e3e7c'),
(245, 15, 'more-posts-3', ''),
(246, 15, '_more-posts-3', 'field_66418d16e3e7d'),
(247, 15, 'review-title', 'Trải nghiệm của du khách'),
(248, 15, '_review-title', 'field_6641c70174192'),
(249, 15, 'review-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Magna eget est'),
(250, 15, '_review-desc', 'field_6641c71f74193'),
(251, 15, 'reviews_0_img', '70'),
(252, 15, '_reviews_0_img', 'field_6641c75474195'),
(253, 15, 'reviews_0_name', 'Phong Nguyễn'),
(254, 15, '_reviews_0_name', 'field_6641c79974196'),
(255, 15, 'reviews_0_text', '\"Chuyến du lịch của tôi cùng GreenslinesDP thật sự tuyệt vời! Từ việc tổ chức chuyến đi cho đến dịch vụ phục vụ, đều vượt quá mong đợi của tôi. Tôi đã có những trải nghiệm đầy ý nghĩa và những kỷ niệm khó quên. Cảm ơn GreenslinesDP đã mang đến cho tôi một chuyến đi đáng nhớ!\" '),
(256, 15, '_reviews_0_text', 'field_6641c7a474197'),
(257, 15, 'reviews_1_img', '71'),
(258, 15, '_reviews_1_img', 'field_6641c75474195'),
(259, 15, 'reviews_1_name', 'Hằng Nguyễn'),
(260, 15, '_reviews_1_name', 'field_6641c79974196'),
(261, 15, 'reviews_1_text', '\"GreenslinesDP không chỉ đưa tôi đến những địa điểm đẹp mắt, mà còn giúp tôi khám phá những điều mới mẻ và thú vị về văn hóa địa phương. Dịch vụ chuyên nghiệp, nhân viên thân thiện và chuyên môn. Tôi sẽ chắc chắn quay lại với GreenslinesDP cho các chuyến đi tiếp theo của mình!\"'),
(262, 15, '_reviews_1_text', 'field_6641c7a474197'),
(263, 15, 'reviews_2_img', '72'),
(264, 15, '_reviews_2_img', 'field_6641c75474195'),
(265, 15, 'reviews_2_name', 'Tuấn Nguyễn'),
(266, 15, '_reviews_2_name', 'field_6641c79974196'),
(267, 15, 'reviews_2_text', '\"GreenslinesDP không chỉ đưa tôi đến những địa điểm đẹp mắt, mà còn giúp tôi khám phá những điều mới mẻ và thú vị về văn hóa địa phương. Dịch vụ chuyên nghiệp, nhân viên thân thiện và chuyên môn. Tôi sẽ chắc chắn quay lại với GreenslinesDP cho các chuyến đi tiếp theo của mình!\"'),
(268, 15, '_reviews_2_text', 'field_6641c7a474197'),
(269, 15, 'reviews', '3'),
(270, 15, '_reviews', 'field_6641c73274194'),
(271, 15, 'news-title', 'Sự Kiện & Tin Tức Du Lịch'),
(272, 15, '_news-title', 'field_6641e20384f90'),
(273, 15, 'news-text', 'Theo dõi những địa điểm thú vị thông qua tin tức và sự kiện du lịch của chúng tôi'),
(274, 15, '_news-text', 'field_6641e21184f91'),
(275, 24, '_edit_last', '1'),
(276, 73, 'heading-slides_0_text', 'Hòa Mình Trong Hành Trình Khám Phá 🚀\r\n<h3>Khám Phá Vẻ Đẹp Tự Nhiên và Du Lịch</h3>\r\nHãy cùng chúng tôi khám phá những cung đường ít người biết và những điểm đến độc đáo.'),
(277, 73, '_heading-slides_0_text', 'field_663f14d5357be'),
(278, 73, 'heading-slides_0_img', '63'),
(279, 73, '_heading-slides_0_img', 'field_663f14e7357bf'),
(280, 73, 'heading-slides_1_text', 'Hòa Mình Trong Hành Trình Khám Phá 🚀\r\n<h3>Khám Phá Vẻ Đẹp Tự Nhiên và Du Lịch</h3>\r\nHãy cùng chúng tôi khám phá những cung đường ít người biết và những điểm đến độc đáo.'),
(281, 73, '_heading-slides_1_text', 'field_663f14d5357be'),
(282, 73, 'heading-slides_1_img', '63'),
(283, 73, '_heading-slides_1_img', 'field_663f14e7357bf'),
(284, 73, 'heading-slides', '2'),
(285, 73, '_heading-slides', 'field_663f1418357bd'),
(286, 73, 'office-title', 'Các điểm bán vé'),
(287, 73, '_office-title', 'field_663f2029d72bf'),
(288, 73, 'tickets-offices_0_name', 'Cảng Cầu Đá'),
(289, 73, '_tickets-offices_0_name', 'field_663f1d32997ff'),
(290, 73, 'tickets-offices_0_address', '9 Hạ Long, Phường 2, TP Vũng Tàu, Bà Rịa - Vũng Tàu'),
(291, 73, '_tickets-offices_0_address', 'field_663f1e0999800'),
(292, 73, 'tickets-offices_0_img', '64'),
(293, 73, '_tickets-offices_0_img', 'field_663f1e1399801'),
(294, 73, 'tickets-offices_1_name', 'Bến Hồ Mây'),
(295, 73, '_tickets-offices_1_name', 'field_663f1d32997ff'),
(296, 73, 'tickets-offices_1_address', '1A Trần Phú, Phường 1, TP Vũng Tàu, tỉnh Bà Rịa – Vũng Tàu'),
(297, 73, '_tickets-offices_1_address', 'field_663f1e0999800'),
(298, 73, 'tickets-offices_1_img', '65'),
(299, 73, '_tickets-offices_1_img', 'field_663f1e1399801'),
(300, 73, 'tickets-offices_2_name', 'Bến Bạch Đằng'),
(301, 73, '_tickets-offices_2_name', 'field_663f1d32997ff'),
(302, 73, 'tickets-offices_2_address', '10B Tôn Đức Thắng, phường Bến Nghé, quận 1, TP.HCM'),
(303, 73, '_tickets-offices_2_address', 'field_663f1e0999800'),
(304, 73, 'tickets-offices_2_img', '66'),
(305, 73, '_tickets-offices_2_img', 'field_663f1e1399801'),
(306, 73, 'tickets-offices', '3'),
(307, 73, '_tickets-offices', 'field_663f1b34997fe'),
(308, 73, 'highway-title', 'Các tuyến tàu cao tốc chính'),
(309, 73, '_highway-title', 'field_663f260b297fb'),
(310, 73, 'main-highways_0_from', 'Sài Gòn'),
(311, 73, '_main-highways_0_from', 'field_663f244beb422'),
(312, 73, 'main-highways_0_to', 'Vũng Tàu '),
(313, 73, '_main-highways_0_to', 'field_663f2451eb423'),
(314, 73, 'main-highways_0_weekday-price', 'Người lớn\r\n<h3><strong>320.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>270.000 </strong></h3>'),
(315, 73, '_main-highways_0_weekday-price', 'field_663f2456eb424'),
(316, 73, 'main-highways_0_weekend-price', 'Người lớn\r\n<h3><strong>350.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>290.000</strong></h3>'),
(317, 73, '_main-highways_0_weekend-price', 'field_663f2465eb425'),
(318, 73, 'main-highways_0_link', '#'),
(319, 73, '_main-highways_0_link', 'field_663f25137d4c3'),
(320, 73, 'main-highways_1_from', 'Sài Gòn'),
(321, 73, '_main-highways_1_from', 'field_663f244beb422'),
(322, 73, 'main-highways_1_to', 'Nha Trang'),
(323, 73, '_main-highways_1_to', 'field_663f2451eb423'),
(324, 73, 'main-highways_1_weekday-price', 'Người lớn\r\n<h3><strong>320.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>270.000 </strong></h3>'),
(325, 73, '_main-highways_1_weekday-price', 'field_663f2456eb424'),
(326, 73, 'main-highways_1_weekend-price', 'Người lớn\r\n<h3><strong>350.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>290.000</strong></h3>'),
(327, 73, '_main-highways_1_weekend-price', 'field_663f2465eb425'),
(328, 73, 'main-highways_1_link', '#'),
(329, 73, '_main-highways_1_link', 'field_663f25137d4c3'),
(330, 73, 'main-highways', '2'),
(331, 73, '_main-highways', 'field_663f23f9eb421'),
(332, 73, 'combo-title', 'Combo nổi bật'),
(333, 73, '_combo-title', 'field_6640b9e3aa0fb'),
(334, 73, 'combo-desc', 'Điểm đến hot nhất do khách du lịch bình chọn.'),
(335, 73, '_combo-desc', 'field_6640ba15aa0fc'),
(336, 73, 'posts-1', 'combo'),
(337, 73, '_posts-1', 'field_6641698ff018a'),
(338, 73, 'more-posts-1', ''),
(339, 73, '_more-posts-1', 'field_6641734cfd1d4'),
(340, 73, 'tour-title', 'Tour du lịch sông nước'),
(341, 73, '_tour-title', 'field_664176a6a9454'),
(342, 73, 'tour-desc', 'Những dòng sông hiền hòa uốn lượn'),
(343, 73, '_tour-desc', 'field_664176ffa9455'),
(344, 73, 'posts-2', 'combo'),
(345, 73, '_posts-2', 'field_66417713a9456'),
(346, 73, 'more-posts-2', ''),
(347, 73, '_more-posts-2', 'field_66417725a9457'),
(348, 73, 'food-title', 'Dịch vụ ẩm thực'),
(349, 73, '_food-title', 'field_66418cc1e3e7a'),
(350, 73, 'food-desc', 'Du lịch ẩm thực là một cuộc phiêu lưu tuyệt vời đưa bạn khám phá không chỉ vẻ đẹp của đất nước mà còn là văn hóa và truyền thống ẩm thực của nó. Mỗi món ăn đều là một câu chuyện, là một phần của lịch sử và đời sống của người dân địa phương.'),
(351, 73, '_food-desc', 'field_66418cd8e3e7b'),
(352, 73, 'posts-3', 'food'),
(353, 73, '_posts-3', 'field_66418cf7e3e7c'),
(354, 73, 'more-posts-3', ''),
(355, 73, '_more-posts-3', 'field_66418d16e3e7d'),
(356, 73, 'review-title', 'Trải nghiệm của du khách'),
(357, 73, '_review-title', 'field_6641c70174192'),
(358, 73, 'review-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Magna eget est'),
(359, 73, '_review-desc', 'field_6641c71f74193'),
(360, 73, 'reviews_0_img', '70'),
(361, 73, '_reviews_0_img', 'field_6641c75474195'),
(362, 73, 'reviews_0_name', 'Phong Nguyễn'),
(363, 73, '_reviews_0_name', 'field_6641c79974196'),
(364, 73, 'reviews_0_text', '\"Chuyến du lịch của tôi cùng GreenslinesDP thật sự tuyệt vời! Từ việc tổ chức chuyến đi cho đến dịch vụ phục vụ, đều vượt quá mong đợi của tôi. Tôi đã có những trải nghiệm đầy ý nghĩa và những kỷ niệm khó quên. Cảm ơn GreenslinesDP đã mang đến cho tôi một chuyến đi đáng nhớ!\" '),
(365, 73, '_reviews_0_text', 'field_6641c7a474197'),
(366, 73, 'reviews_1_img', '71'),
(367, 73, '_reviews_1_img', 'field_6641c75474195'),
(368, 73, 'reviews_1_name', 'Hằng Nguyễn'),
(369, 73, '_reviews_1_name', 'field_6641c79974196'),
(370, 73, 'reviews_1_text', '\"GreenslinesDP không chỉ đưa tôi đến những địa điểm đẹp mắt, mà còn giúp tôi khám phá những điều mới mẻ và thú vị về văn hóa địa phương. Dịch vụ chuyên nghiệp, nhân viên thân thiện và chuyên môn. Tôi sẽ chắc chắn quay lại với GreenslinesDP cho các chuyến đi tiếp theo của mình!\"'),
(371, 73, '_reviews_1_text', 'field_6641c7a474197'),
(372, 73, 'reviews_2_img', '72'),
(373, 73, '_reviews_2_img', 'field_6641c75474195'),
(374, 73, 'reviews_2_name', 'Tuấn Nguyễn'),
(375, 73, '_reviews_2_name', 'field_6641c79974196'),
(376, 73, 'reviews_2_text', '\"GreenslinesDP không chỉ đưa tôi đến những địa điểm đẹp mắt, mà còn giúp tôi khám phá những điều mới mẻ và thú vị về văn hóa địa phương. Dịch vụ chuyên nghiệp, nhân viên thân thiện và chuyên môn. Tôi sẽ chắc chắn quay lại với GreenslinesDP cho các chuyến đi tiếp theo của mình!\"'),
(377, 73, '_reviews_2_text', 'field_6641c7a474197'),
(378, 73, 'reviews', '3'),
(379, 73, '_reviews', 'field_6641c73274194'),
(380, 73, 'news-title', 'Sự Kiện & Tin Tức Du Lịch'),
(381, 73, '_news-title', 'field_6641e20384f90'),
(382, 73, 'news-text', 'Theo dõi những địa điểm thú vị thông qua tin tức và sự kiện du lịch của chúng tôi'),
(383, 73, '_news-text', 'field_6641e21184f91'),
(384, 74, '_wp_trash_meta_status', 'publish'),
(385, 74, '_wp_trash_meta_time', '1715669096'),
(386, 75, '_edit_lock', '1715676562:1'),
(387, 76, '_wp_attached_file', '2024/05/image-4.png'),
(388, 76, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:793;s:6:\"height\";i:446;s:4:\"file\";s:19:\"2024/05/image-4.png\";s:8:\"filesize\";i:632846;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 75, '_thumbnail_id', '63'),
(390, 75, '_edit_last', '1'),
(391, 75, '_yoast_wpseo_primary_category-tickets', '3'),
(392, 75, '_yoast_wpseo_content_score', '90'),
(393, 75, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(394, 75, '_yoast_wpseo_wordproof_timestamp', ''),
(395, 78, '_edit_lock', '1715676557:1'),
(396, 78, '_thumbnail_id', '63'),
(397, 78, '_edit_last', '1'),
(398, 78, '_yoast_wpseo_primary_category-tickets', '2'),
(399, 78, '_yoast_wpseo_content_score', '90'),
(400, 78, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(401, 78, '_yoast_wpseo_wordproof_timestamp', ''),
(402, 80, '_edit_lock', '1715676551:1'),
(403, 80, '_thumbnail_id', '63'),
(404, 80, '_edit_last', '1'),
(405, 80, '_yoast_wpseo_primary_category-tickets', '2'),
(406, 80, '_yoast_wpseo_content_score', '90'),
(407, 80, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(408, 80, '_yoast_wpseo_wordproof_timestamp', ''),
(409, 82, '_edit_lock', '1715682057:1'),
(410, 83, '_wp_attached_file', '2024/05/Rectangle-1.png'),
(411, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:282;s:6:\"height\";i:282;s:4:\"file\";s:23:\"2024/05/Rectangle-1.png\";s:8:\"filesize\";i:156848;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(412, 84, '_wp_attached_file', '2024/05/Sai-Gon-Vung-Tau-1280x721-1.png'),
(413, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:793;s:6:\"height\";i:445;s:4:\"file\";s:39:\"2024/05/Sai-Gon-Vung-Tau-1280x721-1.png\";s:8:\"filesize\";i:641116;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(414, 82, '_thumbnail_id', '83'),
(415, 82, '_edit_last', '1'),
(416, 82, 'price', '2,000,000/Night'),
(417, 82, '_price', 'field_6640b83df90b5'),
(418, 85, 'price', '2,000,000/Night'),
(419, 85, '_price', 'field_6640b83df90b5'),
(420, 82, '_yoast_wpseo_primary_category-combo', '6'),
(421, 82, '_yoast_wpseo_content_score', '60'),
(422, 82, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(423, 82, '_yoast_wpseo_wordproof_timestamp', ''),
(424, 86, 'price', '2,000,000/Night'),
(425, 86, '_price', 'field_6640b83df90b5'),
(426, 88, '_edit_lock', '1715682052:1'),
(427, 89, '_wp_attached_file', '2024/05/Rectangle-1-1.png'),
(428, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:282;s:6:\"height\";i:282;s:4:\"file\";s:25:\"2024/05/Rectangle-1-1.png\";s:8:\"filesize\";i:130289;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(429, 88, '_thumbnail_id', '89'),
(430, 88, '_edit_last', '1'),
(431, 88, 'price', ''),
(432, 88, '_price', 'field_6640b83df90b5'),
(433, 90, 'price', ''),
(434, 90, '_price', 'field_6640b83df90b5'),
(435, 88, '_yoast_wpseo_primary_category-combo', '6'),
(436, 88, '_yoast_wpseo_content_score', '60'),
(437, 88, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(438, 88, '_yoast_wpseo_wordproof_timestamp', ''),
(439, 91, '_edit_lock', '1715682047:1'),
(440, 92, '_wp_attached_file', '2024/05/Rectangle-1-2.png'),
(441, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:282;s:6:\"height\";i:282;s:4:\"file\";s:25:\"2024/05/Rectangle-1-2.png\";s:8:\"filesize\";i:87302;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(442, 91, '_thumbnail_id', '92'),
(443, 91, '_edit_last', '1'),
(444, 91, 'price', ''),
(445, 91, '_price', 'field_6640b83df90b5'),
(446, 93, 'price', ''),
(447, 93, '_price', 'field_6640b83df90b5'),
(448, 91, '_yoast_wpseo_primary_category-combo', '6'),
(449, 91, '_yoast_wpseo_content_score', '60'),
(450, 91, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(451, 91, '_yoast_wpseo_wordproof_timestamp', ''),
(452, 94, '_edit_lock', '1715682078:1'),
(453, 95, '_wp_attached_file', '2024/05/Rectangle-1-3.png'),
(454, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:386;s:6:\"height\";i:282;s:4:\"file\";s:25:\"2024/05/Rectangle-1-3.png\";s:8:\"filesize\";i:189119;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(455, 96, '_wp_attached_file', '2024/05/image-7.png'),
(456, 96, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:793;s:6:\"height\";i:446;s:4:\"file\";s:19:\"2024/05/image-7.png\";s:8:\"filesize\";i:646057;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(457, 94, '_thumbnail_id', '95'),
(458, 94, '_edit_last', '1'),
(459, 94, '_yoast_wpseo_primary_category-tour', '10'),
(460, 94, '_yoast_wpseo_content_score', '90'),
(461, 94, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(462, 94, '_yoast_wpseo_wordproof_timestamp', ''),
(463, 98, '_edit_lock', '1715682073:1'),
(464, 99, '_wp_attached_file', '2024/05/Rectangle-1-4.png'),
(465, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:386;s:6:\"height\";i:282;s:4:\"file\";s:25:\"2024/05/Rectangle-1-4.png\";s:8:\"filesize\";i:280088;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(466, 98, '_thumbnail_id', '99'),
(467, 98, '_edit_last', '1'),
(468, 98, '_yoast_wpseo_primary_category-tour', '10'),
(469, 98, '_yoast_wpseo_content_score', '90'),
(470, 98, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(471, 98, '_yoast_wpseo_wordproof_timestamp', ''),
(472, 101, '_edit_lock', '1715682065:1'),
(473, 102, '_wp_attached_file', '2024/05/Rectangle-1-5.png'),
(474, 102, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:386;s:6:\"height\";i:282;s:4:\"file\";s:25:\"2024/05/Rectangle-1-5.png\";s:8:\"filesize\";i:178212;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(475, 101, '_thumbnail_id', '102'),
(476, 101, '_edit_last', '1'),
(477, 101, '_yoast_wpseo_primary_category-tour', '10'),
(478, 101, '_yoast_wpseo_content_score', '90'),
(479, 101, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(480, 101, '_yoast_wpseo_wordproof_timestamp', ''),
(482, 105, '_wp_attached_file', '2024/05/Rectangle-1-6.png'),
(483, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:386;s:6:\"height\";i:282;s:4:\"file\";s:25:\"2024/05/Rectangle-1-6.png\";s:8:\"filesize\";i:272947;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(484, 106, '_wp_attached_file', '2024/05/image-9.png'),
(485, 106, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:788;s:6:\"height\";i:443;s:4:\"file\";s:19:\"2024/05/image-9.png\";s:8:\"filesize\";i:468117;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(486, 107, '_wp_attached_file', '2024/05/image-9-1.png'),
(487, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:788;s:6:\"height\";i:443;s:4:\"file\";s:21:\"2024/05/image-9-1.png\";s:8:\"filesize\";i:673856;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(499, 110, '_edit_lock', '1715682097:1'),
(500, 110, '_thumbnail_id', '105'),
(501, 110, '_edit_last', '1'),
(502, 110, '_yoast_wpseo_primary_category-food', '17'),
(503, 110, '_yoast_wpseo_content_score', '90'),
(504, 110, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(505, 110, '_yoast_wpseo_wordproof_timestamp', ''),
(506, 112, '_edit_lock', '1715682092:1'),
(507, 113, '_wp_attached_file', '2024/05/Rectangle-1-7.png'),
(508, 113, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:386;s:6:\"height\";i:282;s:4:\"file\";s:25:\"2024/05/Rectangle-1-7.png\";s:8:\"filesize\";i:199843;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(509, 112, '_thumbnail_id', '113'),
(510, 112, '_edit_last', '1'),
(511, 112, '_yoast_wpseo_primary_category-food', '17'),
(512, 112, '_yoast_wpseo_content_score', '90'),
(513, 112, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(514, 112, '_yoast_wpseo_wordproof_timestamp', ''),
(515, 115, '_edit_lock', '1715682087:1'),
(516, 116, '_wp_attached_file', '2024/05/Rectangle-1-8.png'),
(517, 116, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:386;s:6:\"height\";i:282;s:4:\"file\";s:25:\"2024/05/Rectangle-1-8.png\";s:8:\"filesize\";i:171756;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(518, 115, '_thumbnail_id', '116'),
(519, 115, '_edit_last', '1'),
(520, 115, '_yoast_wpseo_primary_category-food', '17'),
(521, 115, '_yoast_wpseo_content_score', '90'),
(522, 115, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(523, 115, '_yoast_wpseo_wordproof_timestamp', ''),
(527, 118, 'heading-slides_0_text', 'Hòa Mình Trong Hành Trình Khám Phá 🚀\r\n<h3>Khám Phá Vẻ Đẹp Tự Nhiên và Du Lịch</h3>\r\nHãy cùng chúng tôi khám phá những cung đường ít người biết và những điểm đến độc đáo.'),
(528, 118, '_heading-slides_0_text', 'field_663f14d5357be'),
(529, 118, 'heading-slides_0_img', '63'),
(530, 118, '_heading-slides_0_img', 'field_663f14e7357bf'),
(531, 118, 'heading-slides_1_text', 'Hòa Mình Trong Hành Trình Khám Phá 🚀\r\n<h3>Khám Phá Vẻ Đẹp Tự Nhiên và Du Lịch</h3>\r\nHãy cùng chúng tôi khám phá những cung đường ít người biết và những điểm đến độc đáo.'),
(532, 118, '_heading-slides_1_text', 'field_663f14d5357be'),
(533, 118, 'heading-slides_1_img', '63'),
(534, 118, '_heading-slides_1_img', 'field_663f14e7357bf'),
(535, 118, 'heading-slides', '2'),
(536, 118, '_heading-slides', 'field_663f1418357bd'),
(537, 118, 'office-title', 'Các điểm bán vé'),
(538, 118, '_office-title', 'field_663f2029d72bf'),
(539, 118, 'tickets-offices_0_name', 'Cảng Cầu Đá'),
(540, 118, '_tickets-offices_0_name', 'field_663f1d32997ff'),
(541, 118, 'tickets-offices_0_address', '9 Hạ Long, Phường 2, TP Vũng Tàu, Bà Rịa - Vũng Tàu'),
(542, 118, '_tickets-offices_0_address', 'field_663f1e0999800'),
(543, 118, 'tickets-offices_0_img', '64'),
(544, 118, '_tickets-offices_0_img', 'field_663f1e1399801'),
(545, 118, 'tickets-offices_1_name', 'Bến Hồ Mây'),
(546, 118, '_tickets-offices_1_name', 'field_663f1d32997ff'),
(547, 118, 'tickets-offices_1_address', '1A Trần Phú, Phường 1, TP Vũng Tàu, tỉnh Bà Rịa – Vũng Tàu'),
(548, 118, '_tickets-offices_1_address', 'field_663f1e0999800'),
(549, 118, 'tickets-offices_1_img', '65'),
(550, 118, '_tickets-offices_1_img', 'field_663f1e1399801'),
(551, 118, 'tickets-offices_2_name', 'Bến Bạch Đằng'),
(552, 118, '_tickets-offices_2_name', 'field_663f1d32997ff'),
(553, 118, 'tickets-offices_2_address', '10B Tôn Đức Thắng, phường Bến Nghé, quận 1, TP.HCM'),
(554, 118, '_tickets-offices_2_address', 'field_663f1e0999800'),
(555, 118, 'tickets-offices_2_img', '66'),
(556, 118, '_tickets-offices_2_img', 'field_663f1e1399801'),
(557, 118, 'tickets-offices', '3'),
(558, 118, '_tickets-offices', 'field_663f1b34997fe'),
(559, 118, 'highway-title', 'Các tuyến tàu cao tốc chính'),
(560, 118, '_highway-title', 'field_663f260b297fb'),
(561, 118, 'main-highways_0_from', 'Sài Gòn'),
(562, 118, '_main-highways_0_from', 'field_663f244beb422'),
(563, 118, 'main-highways_0_to', 'Vũng Tàu '),
(564, 118, '_main-highways_0_to', 'field_663f2451eb423'),
(565, 118, 'main-highways_0_weekday-price', 'Người lớn\r\n<h3><strong>320.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>270.000 </strong></h3>'),
(566, 118, '_main-highways_0_weekday-price', 'field_663f2456eb424'),
(567, 118, 'main-highways_0_weekend-price', 'Người lớn\r\n<h3><strong>350.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>290.000</strong></h3>'),
(568, 118, '_main-highways_0_weekend-price', 'field_663f2465eb425'),
(569, 118, 'main-highways_0_link', '#'),
(570, 118, '_main-highways_0_link', 'field_663f25137d4c3'),
(571, 118, 'main-highways_1_from', 'Sài Gòn'),
(572, 118, '_main-highways_1_from', 'field_663f244beb422'),
(573, 118, 'main-highways_1_to', 'Nha Trang'),
(574, 118, '_main-highways_1_to', 'field_663f2451eb423'),
(575, 118, 'main-highways_1_weekday-price', 'Người lớn\r\n<h3><strong>320.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>270.000 </strong></h3>'),
(576, 118, '_main-highways_1_weekday-price', 'field_663f2456eb424'),
(577, 118, 'main-highways_1_weekend-price', 'Người lớn\r\n<h3><strong>350.000</strong></h3>\r\nTrẻ em\r\n<h3><strong>290.000</strong></h3>'),
(578, 118, '_main-highways_1_weekend-price', 'field_663f2465eb425'),
(579, 118, 'main-highways_1_link', '#'),
(580, 118, '_main-highways_1_link', 'field_663f25137d4c3'),
(581, 118, 'main-highways', '2'),
(582, 118, '_main-highways', 'field_663f23f9eb421'),
(583, 118, 'combo-title', 'Combo nổi bật'),
(584, 118, '_combo-title', 'field_6640b9e3aa0fb'),
(585, 118, 'combo-desc', 'Điểm đến hot nhất do khách du lịch bình chọn.'),
(586, 118, '_combo-desc', 'field_6640ba15aa0fc'),
(587, 118, 'posts-1', 'combo');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(588, 118, '_posts-1', 'field_6641698ff018a'),
(589, 118, 'more-posts-1', ''),
(590, 118, '_more-posts-1', 'field_6641734cfd1d4'),
(591, 118, 'tour-title', 'Tour du lịch sông nước'),
(592, 118, '_tour-title', 'field_664176a6a9454'),
(593, 118, 'tour-desc', 'Những dòng sông hiền hòa uốn lượn'),
(594, 118, '_tour-desc', 'field_664176ffa9455'),
(595, 118, 'posts-2', 'tour'),
(596, 118, '_posts-2', 'field_66417713a9456'),
(597, 118, 'more-posts-2', ''),
(598, 118, '_more-posts-2', 'field_66417725a9457'),
(599, 118, 'food-title', 'Dịch vụ ẩm thực'),
(600, 118, '_food-title', 'field_66418cc1e3e7a'),
(601, 118, 'food-desc', 'Du lịch ẩm thực là một cuộc phiêu lưu tuyệt vời đưa bạn khám phá không chỉ vẻ đẹp của đất nước mà còn là văn hóa và truyền thống ẩm thực của nó. Mỗi món ăn đều là một câu chuyện, là một phần của lịch sử và đời sống của người dân địa phương.'),
(602, 118, '_food-desc', 'field_66418cd8e3e7b'),
(603, 118, 'posts-3', 'food'),
(604, 118, '_posts-3', 'field_66418cf7e3e7c'),
(605, 118, 'more-posts-3', ''),
(606, 118, '_more-posts-3', 'field_66418d16e3e7d'),
(607, 118, 'review-title', 'Trải nghiệm của du khách'),
(608, 118, '_review-title', 'field_6641c70174192'),
(609, 118, 'review-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Magna eget est'),
(610, 118, '_review-desc', 'field_6641c71f74193'),
(611, 118, 'reviews_0_img', '70'),
(612, 118, '_reviews_0_img', 'field_6641c75474195'),
(613, 118, 'reviews_0_name', 'Phong Nguyễn'),
(614, 118, '_reviews_0_name', 'field_6641c79974196'),
(615, 118, 'reviews_0_text', '\"Chuyến du lịch của tôi cùng GreenslinesDP thật sự tuyệt vời! Từ việc tổ chức chuyến đi cho đến dịch vụ phục vụ, đều vượt quá mong đợi của tôi. Tôi đã có những trải nghiệm đầy ý nghĩa và những kỷ niệm khó quên. Cảm ơn GreenslinesDP đã mang đến cho tôi một chuyến đi đáng nhớ!\" '),
(616, 118, '_reviews_0_text', 'field_6641c7a474197'),
(617, 118, 'reviews_1_img', '71'),
(618, 118, '_reviews_1_img', 'field_6641c75474195'),
(619, 118, 'reviews_1_name', 'Hằng Nguyễn'),
(620, 118, '_reviews_1_name', 'field_6641c79974196'),
(621, 118, 'reviews_1_text', '\"GreenslinesDP không chỉ đưa tôi đến những địa điểm đẹp mắt, mà còn giúp tôi khám phá những điều mới mẻ và thú vị về văn hóa địa phương. Dịch vụ chuyên nghiệp, nhân viên thân thiện và chuyên môn. Tôi sẽ chắc chắn quay lại với GreenslinesDP cho các chuyến đi tiếp theo của mình!\"'),
(622, 118, '_reviews_1_text', 'field_6641c7a474197'),
(623, 118, 'reviews_2_img', '72'),
(624, 118, '_reviews_2_img', 'field_6641c75474195'),
(625, 118, 'reviews_2_name', 'Tuấn Nguyễn'),
(626, 118, '_reviews_2_name', 'field_6641c79974196'),
(627, 118, 'reviews_2_text', '\"GreenslinesDP không chỉ đưa tôi đến những địa điểm đẹp mắt, mà còn giúp tôi khám phá những điều mới mẻ và thú vị về văn hóa địa phương. Dịch vụ chuyên nghiệp, nhân viên thân thiện và chuyên môn. Tôi sẽ chắc chắn quay lại với GreenslinesDP cho các chuyến đi tiếp theo của mình!\"'),
(628, 118, '_reviews_2_text', 'field_6641c7a474197'),
(629, 118, 'reviews', '3'),
(630, 118, '_reviews', 'field_6641c73274194'),
(631, 118, 'news-title', 'Sự Kiện & Tin Tức Du Lịch'),
(632, 118, '_news-title', 'field_6641e20384f90'),
(633, 118, 'news-text', 'Theo dõi những địa điểm thú vị thông qua tin tức và sự kiện du lịch của chúng tôi'),
(634, 118, '_news-text', 'field_6641e21184f91'),
(635, 120, '_menu_item_type', 'taxonomy'),
(636, 120, '_menu_item_menu_item_parent', '0'),
(637, 120, '_menu_item_object_id', '2'),
(638, 120, '_menu_item_object', 'category-tickets'),
(639, 120, '_menu_item_target', ''),
(640, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(641, 120, '_menu_item_xfn', ''),
(642, 120, '_menu_item_url', ''),
(644, 121, '_menu_item_type', 'taxonomy'),
(645, 121, '_menu_item_menu_item_parent', '0'),
(646, 121, '_menu_item_object_id', '6'),
(647, 121, '_menu_item_object', 'category-combo'),
(648, 121, '_menu_item_target', ''),
(649, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(650, 121, '_menu_item_xfn', ''),
(651, 121, '_menu_item_url', ''),
(653, 122, '_menu_item_type', 'taxonomy'),
(654, 122, '_menu_item_menu_item_parent', '0'),
(655, 122, '_menu_item_object_id', '10'),
(656, 122, '_menu_item_object', 'category-tour'),
(657, 122, '_menu_item_target', ''),
(658, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(659, 122, '_menu_item_xfn', ''),
(660, 122, '_menu_item_url', ''),
(662, 123, '_menu_item_type', 'taxonomy'),
(663, 123, '_menu_item_menu_item_parent', '0'),
(664, 123, '_menu_item_object_id', '17'),
(665, 123, '_menu_item_object', 'category-food'),
(666, 123, '_menu_item_target', ''),
(667, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(668, 123, '_menu_item_xfn', ''),
(669, 123, '_menu_item_url', ''),
(671, 124, '_menu_item_type', 'taxonomy'),
(672, 124, '_menu_item_menu_item_parent', '0'),
(673, 124, '_menu_item_object_id', '13'),
(674, 124, '_menu_item_object', 'category'),
(675, 124, '_menu_item_target', ''),
(676, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(677, 124, '_menu_item_xfn', ''),
(678, 124, '_menu_item_url', ''),
(680, 125, '_menu_item_type', 'post_type'),
(681, 125, '_menu_item_menu_item_parent', '0'),
(682, 125, '_menu_item_object_id', '13'),
(683, 125, '_menu_item_object', 'page'),
(684, 125, '_menu_item_target', ''),
(685, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(686, 125, '_menu_item_xfn', ''),
(687, 125, '_menu_item_url', ''),
(689, 130, '_menu_item_type', 'post_type'),
(690, 130, '_menu_item_menu_item_parent', '0'),
(691, 130, '_menu_item_object_id', '127'),
(692, 130, '_menu_item_object', 'language_switcher'),
(693, 130, '_menu_item_target', ''),
(694, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(695, 130, '_menu_item_xfn', ''),
(696, 130, '_menu_item_url', ''),
(698, 131, '_menu_item_type', 'post_type'),
(699, 131, '_menu_item_menu_item_parent', '0'),
(700, 131, '_menu_item_object_id', '126'),
(701, 131, '_menu_item_object', 'language_switcher'),
(702, 131, '_menu_item_target', ''),
(703, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(704, 131, '_menu_item_xfn', ''),
(705, 131, '_menu_item_url', ''),
(707, 132, '_menu_item_type', 'custom'),
(708, 132, '_menu_item_menu_item_parent', '0'),
(709, 132, '_menu_item_object_id', '132'),
(710, 132, '_menu_item_object', 'custom'),
(711, 132, '_menu_item_target', ''),
(712, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(713, 132, '_menu_item_xfn', ''),
(714, 132, '_menu_item_url', '#'),
(716, 133, '_menu_item_type', 'custom'),
(717, 133, '_menu_item_menu_item_parent', '0'),
(718, 133, '_menu_item_object_id', '133'),
(719, 133, '_menu_item_object', 'custom'),
(720, 133, '_menu_item_target', ''),
(721, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(722, 133, '_menu_item_xfn', ''),
(723, 133, '_menu_item_url', '#'),
(725, 134, '_menu_item_type', 'custom'),
(726, 134, '_menu_item_menu_item_parent', '0'),
(727, 134, '_menu_item_object_id', '134'),
(728, 134, '_menu_item_object', 'custom'),
(729, 134, '_menu_item_target', ''),
(730, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(731, 134, '_menu_item_xfn', ''),
(732, 134, '_menu_item_url', '#'),
(734, 135, '_menu_item_type', 'custom'),
(735, 135, '_menu_item_menu_item_parent', '0'),
(736, 135, '_menu_item_object_id', '135'),
(737, 135, '_menu_item_object', 'custom'),
(738, 135, '_menu_item_target', ''),
(739, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(740, 135, '_menu_item_xfn', ''),
(741, 135, '_menu_item_url', '#'),
(743, 136, '_menu_item_type', 'custom'),
(744, 136, '_menu_item_menu_item_parent', '0'),
(745, 136, '_menu_item_object_id', '136'),
(746, 136, '_menu_item_object', 'custom'),
(747, 136, '_menu_item_target', ''),
(748, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(749, 136, '_menu_item_xfn', ''),
(750, 136, '_menu_item_url', '#'),
(752, 137, '_menu_item_type', 'custom'),
(753, 137, '_menu_item_menu_item_parent', '0'),
(754, 137, '_menu_item_object_id', '137'),
(755, 137, '_menu_item_object', 'custom'),
(756, 137, '_menu_item_target', ''),
(757, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(758, 137, '_menu_item_xfn', ''),
(759, 137, '_menu_item_url', '#'),
(761, 138, '_menu_item_type', 'custom'),
(762, 138, '_menu_item_menu_item_parent', '0'),
(763, 138, '_menu_item_object_id', '138'),
(764, 138, '_menu_item_object', 'custom'),
(765, 138, '_menu_item_target', ''),
(766, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(767, 138, '_menu_item_xfn', ''),
(768, 138, '_menu_item_url', '#'),
(770, 139, '_menu_item_type', 'custom'),
(771, 139, '_menu_item_menu_item_parent', '0'),
(772, 139, '_menu_item_object_id', '139'),
(773, 139, '_menu_item_object', 'custom'),
(774, 139, '_menu_item_target', ''),
(775, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(776, 139, '_menu_item_xfn', ''),
(777, 139, '_menu_item_url', '#'),
(779, 140, '_menu_item_type', 'custom'),
(780, 140, '_menu_item_menu_item_parent', '0'),
(781, 140, '_menu_item_object_id', '140'),
(782, 140, '_menu_item_object', 'custom'),
(783, 140, '_menu_item_target', ''),
(784, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(785, 140, '_menu_item_xfn', ''),
(786, 140, '_menu_item_url', '#'),
(788, 141, '_menu_item_type', 'custom'),
(789, 141, '_menu_item_menu_item_parent', '0'),
(790, 141, '_menu_item_object_id', '141'),
(791, 141, '_menu_item_object', 'custom'),
(792, 141, '_menu_item_target', ''),
(793, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(794, 141, '_menu_item_xfn', ''),
(795, 141, '_menu_item_url', '#'),
(797, 142, '_menu_item_type', 'custom'),
(798, 142, '_menu_item_menu_item_parent', '0'),
(799, 142, '_menu_item_object_id', '142'),
(800, 142, '_menu_item_object', 'custom'),
(801, 142, '_menu_item_target', ''),
(802, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(803, 142, '_menu_item_xfn', ''),
(804, 142, '_menu_item_url', 'http://localhost/GreenLines/category-tickets/ve-tau/'),
(806, 143, '_menu_item_type', 'taxonomy'),
(807, 143, '_menu_item_menu_item_parent', '0'),
(808, 143, '_menu_item_object_id', '3'),
(809, 143, '_menu_item_object', 'category-tickets'),
(810, 143, '_menu_item_target', ''),
(811, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(812, 143, '_menu_item_xfn', ''),
(813, 143, '_menu_item_url', ''),
(815, 144, '_menu_item_type', 'taxonomy'),
(816, 144, '_menu_item_menu_item_parent', '0'),
(817, 144, '_menu_item_object_id', '4'),
(818, 144, '_menu_item_object', 'category-tickets'),
(819, 144, '_menu_item_target', ''),
(820, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(821, 144, '_menu_item_xfn', ''),
(822, 144, '_menu_item_url', ''),
(824, 145, '_menu_item_type', 'taxonomy'),
(825, 145, '_menu_item_menu_item_parent', '0'),
(826, 145, '_menu_item_object_id', '5'),
(827, 145, '_menu_item_object', 'category-tickets'),
(828, 145, '_menu_item_target', ''),
(829, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(830, 145, '_menu_item_xfn', ''),
(831, 145, '_menu_item_url', ''),
(833, 146, '_menu_item_type', 'custom'),
(834, 146, '_menu_item_menu_item_parent', '0'),
(835, 146, '_menu_item_object_id', '146'),
(836, 146, '_menu_item_object', 'custom'),
(837, 146, '_menu_item_target', ''),
(838, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(839, 146, '_menu_item_xfn', ''),
(840, 146, '_menu_item_url', 'http://localhost/GreenLines/category-combo/combo/'),
(842, 147, '_menu_item_type', 'taxonomy'),
(843, 147, '_menu_item_menu_item_parent', '0'),
(844, 147, '_menu_item_object_id', '7'),
(845, 147, '_menu_item_object', 'category-combo'),
(846, 147, '_menu_item_target', ''),
(847, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(848, 147, '_menu_item_xfn', ''),
(849, 147, '_menu_item_url', ''),
(851, 148, '_menu_item_type', 'taxonomy'),
(852, 148, '_menu_item_menu_item_parent', '0'),
(853, 148, '_menu_item_object_id', '8'),
(854, 148, '_menu_item_object', 'category-combo'),
(855, 148, '_menu_item_target', ''),
(856, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(857, 148, '_menu_item_xfn', ''),
(858, 148, '_menu_item_url', ''),
(860, 149, '_menu_item_type', 'taxonomy'),
(861, 149, '_menu_item_menu_item_parent', '0'),
(862, 149, '_menu_item_object_id', '9'),
(863, 149, '_menu_item_object', 'category-combo'),
(864, 149, '_menu_item_target', ''),
(865, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(866, 149, '_menu_item_xfn', ''),
(867, 149, '_menu_item_url', ''),
(869, 150, '_menu_item_type', 'custom'),
(870, 150, '_menu_item_menu_item_parent', '0'),
(871, 150, '_menu_item_object_id', '150'),
(872, 150, '_menu_item_object', 'custom'),
(873, 150, '_menu_item_target', ''),
(874, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(875, 150, '_menu_item_xfn', ''),
(876, 150, '_menu_item_url', 'http://localhost/GreenLines/category-tour/tour-du-lich-song-nuoc/'),
(878, 151, '_menu_item_type', 'taxonomy'),
(879, 151, '_menu_item_menu_item_parent', '0'),
(880, 151, '_menu_item_object_id', '11'),
(881, 151, '_menu_item_object', 'category-tour'),
(882, 151, '_menu_item_target', ''),
(883, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(884, 151, '_menu_item_xfn', ''),
(885, 151, '_menu_item_url', ''),
(887, 152, '_menu_item_type', 'taxonomy'),
(888, 152, '_menu_item_menu_item_parent', '0'),
(889, 152, '_menu_item_object_id', '12'),
(890, 152, '_menu_item_object', 'category-tour'),
(891, 152, '_menu_item_target', ''),
(892, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(893, 152, '_menu_item_xfn', ''),
(894, 152, '_menu_item_url', ''),
(896, 153, '_menu_item_type', 'custom'),
(897, 153, '_menu_item_menu_item_parent', '0'),
(898, 153, '_menu_item_object_id', '153'),
(899, 153, '_menu_item_object', 'custom'),
(900, 153, '_menu_item_target', ''),
(901, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(902, 153, '_menu_item_xfn', ''),
(903, 153, '_menu_item_url', 'http://localhost/GreenLines/category-food/am-thuc/'),
(905, 154, '_menu_item_type', 'taxonomy'),
(906, 154, '_menu_item_menu_item_parent', '0'),
(907, 154, '_menu_item_object_id', '20'),
(908, 154, '_menu_item_object', 'category-food'),
(909, 154, '_menu_item_target', ''),
(910, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(911, 154, '_menu_item_xfn', ''),
(912, 154, '_menu_item_url', ''),
(914, 155, '_menu_item_type', 'taxonomy'),
(915, 155, '_menu_item_menu_item_parent', '0'),
(916, 155, '_menu_item_object_id', '18'),
(917, 155, '_menu_item_object', 'category-food'),
(918, 155, '_menu_item_target', ''),
(919, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(920, 155, '_menu_item_xfn', ''),
(921, 155, '_menu_item_url', ''),
(925, 10, '_config_validation', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";s:22:\"invalid_mailbox_syntax\";s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(926, 156, '_edit_last', '1'),
(927, 156, '_edit_lock', '1715745376:1'),
(928, 13, 'title-contact', 'LIÊN HỆ VỚI CHÚNG TÔI'),
(929, 13, '_title-contact', 'field_66442cd2a7849'),
(930, 13, 'description', 'Bạn cần thông tin về chi tiết hãy nhắn tin cho chúng tôi'),
(931, 13, '_description', 'field_66442d30a784a'),
(932, 13, 'title-contact-2', 'TRỤ SỞ CHÍNH'),
(933, 13, '_title-contact-2', 'field_66442d3ca784b'),
(934, 13, 'description-2', 'Melinh Point Office Building 02 Ngô Đức Kế, Quận 1, TP Hồ Chí Minh\r\n\r\nTicket Hotline: 0988 009 579\r\n<ul>\r\n 	<li>Phòng vé Sài Gòn: 0901449888</li>\r\n 	<li>Phòng vé Vũng Tàu: 0986 908 907</li>\r\n</ul>\r\nEmail: contact@greenlines-dp.com.vn'),
(935, 13, '_description-2', 'field_66442d4ba784c'),
(936, 13, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4766133632415!2d106.70358227377493!3d10.774761259227015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f442ecf3577%3A0xd9bcb0368f2a6ff3!2zMiBOZ8O0IMSQ4bupYyBL4bq_LCBC4bq_biBOZ2jDqSwgUXXhuq1uIDEsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1715744301454!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(937, 13, '_map', 'field_66442d61a784d'),
(938, 14, 'title-contact', 'LIÊN HỆ VỚI CHÚNG TÔI'),
(939, 14, '_title-contact', 'field_66442cd2a7849'),
(940, 14, 'description', 'Bạn cần thông tin về chi tiết hãy nhắn tin cho chúng tôi'),
(941, 14, '_description', 'field_66442d30a784a'),
(942, 14, 'title-contact-2', 'TRỤ SỞ CHÍNH'),
(943, 14, '_title-contact-2', 'field_66442d3ca784b'),
(944, 14, 'description-2', 'Melinh Point Office Building 02 Ngô Đức Kế, Quận 1, TP Hồ Chí Minh\r\n\r\nTicket Hotline: 0988 009 579\r\n<ul>\r\n 	<li>Phòng vé Sài Gòn: 0901449888</li>\r\n 	<li>Phòng vé Vũng Tàu: 0986 908 907</li>\r\n</ul>\r\nEmail: contact@greenlines-dp.com.vn'),
(945, 14, '_description-2', 'field_66442d4ba784c'),
(946, 14, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4766133632415!2d106.70358227377493!3d10.774761259227015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f442ecf3577%3A0xd9bcb0368f2a6ff3!2zMiBOZ8O0IMSQ4bupYyBL4bq_LCBC4bq_biBOZ2jDqSwgUXXhuq1uIDEsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1715744301454!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(947, 14, '_map', 'field_66442d61a784d'),
(948, 162, 'title-contact', 'LIÊN HỆ VỚI CHÚNG TÔI'),
(949, 162, '_title-contact', 'field_66442cd2a7849'),
(950, 162, 'description', 'Bạn cần thông tin về chi tiết hãy nhắn tin cho chúng tôi'),
(951, 162, '_description', 'field_66442d30a784a'),
(952, 162, 'title-contact-2', 'TRỤ SỞ CHÍNH'),
(953, 162, '_title-contact-2', 'field_66442d3ca784b'),
(954, 162, 'description-2', 'Melinh Point Office Building 02 Ngô Đức Kế, Quận 1, TP Hồ Chí Minh\r\n\r\nTicket Hotline: 0988 009 579\r\n<ul>\r\n 	<li>Phòng vé Sài Gòn: 0901449888</li>\r\n 	<li>Phòng vé Vũng Tàu: 0986 908 907</li>\r\n</ul>\r\nEmail: contact@greenlines-dp.com.vn'),
(955, 162, '_description-2', 'field_66442d4ba784c'),
(956, 162, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4766133632415!2d106.70358227377493!3d10.774761259227015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f442ecf3577%3A0xd9bcb0368f2a6ff3!2zMiBOZ8O0IMSQ4bupYyBL4bq_LCBC4bq_biBOZ2jDqSwgUXXhuq1uIDEsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1715744301454!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(957, 162, '_map', 'field_66442d61a784d'),
(958, 163, 'title-contact', 'LIÊN HỆ VỚI CHÚNG TÔI'),
(959, 163, '_title-contact', 'field_66442cd2a7849'),
(960, 163, 'description', 'Bạn cần thông tin về chi tiết hãy nhắn tin cho chúng tôi'),
(961, 163, '_description', 'field_66442d30a784a'),
(962, 163, 'title-contact-2', 'TRỤ SỞ CHÍNH'),
(963, 163, '_title-contact-2', 'field_66442d3ca784b'),
(964, 163, 'description-2', 'Melinh Point Office Building 02 Ngô Đức Kế, Quận 1, TP Hồ Chí Minh\r\n\r\nTicket Hotline: 0988 009 579\r\n<ul>\r\n 	<li>Phòng vé Sài Gòn: 0901449888</li>\r\n 	<li>Phòng vé Vũng Tàu: 0986 908 907</li>\r\n</ul>\r\nEmail: contact@greenlines-dp.com.vn'),
(965, 163, '_description-2', 'field_66442d4ba784c'),
(966, 163, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4766133632415!2d106.70358227377493!3d10.774761259227015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f442ecf3577%3A0xd9bcb0368f2a6ff3!2zMiBOZ8O0IMSQ4bupYyBL4bq_LCBC4bq_biBOZ2jDqSwgUXXhuq1uIDEsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1715744301454!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(967, 163, '_map', 'field_66442d61a784d'),
(968, 164, 'title-contact', 'LIÊN HỆ VỚI CHÚNG TÔI'),
(969, 164, '_title-contact', 'field_66442cd2a7849'),
(970, 164, 'description', 'Bạn cần thông tin về chi tiết hãy nhắn tin cho chúng tôi'),
(971, 164, '_description', 'field_66442d30a784a'),
(972, 164, 'title-contact-2', 'TRỤ SỞ CHÍNH'),
(973, 164, '_title-contact-2', 'field_66442d3ca784b'),
(974, 164, 'description-2', 'Melinh Point Office Building 02 Ngô Đức Kế, Quận 1, TP Hồ Chí Minh\r\n\r\nTicket Hotline: 0988 009 579\r\n<ul>\r\n 	<li>Phòng vé Sài Gòn: 0901449888</li>\r\n 	<li>Phòng vé Vũng Tàu: 0986 908 907</li>\r\n</ul>\r\nEmail: contact@greenlines-dp.com.vn'),
(975, 164, '_description-2', 'field_66442d4ba784c'),
(976, 164, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4766133632415!2d106.70358227377493!3d10.774761259227015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f442ecf3577%3A0xd9bcb0368f2a6ff3!2zMiBOZ8O0IMSQ4bupYyBL4bq_LCBC4bq_biBOZ2jDqSwgUXXhuq1uIDEsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1715744301454!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(977, 164, '_map', 'field_66442d61a784d'),
(978, 165, 'title-contact', 'LIÊN HỆ VỚI CHÚNG TÔI'),
(979, 165, '_title-contact', 'field_66442cd2a7849'),
(980, 165, 'description', 'Bạn cần thông tin về chi tiết hãy nhắn tin cho chúng tôi'),
(981, 165, '_description', 'field_66442d30a784a'),
(982, 165, 'title-contact-2', 'TRỤ SỞ CHÍNH'),
(983, 165, '_title-contact-2', 'field_66442d3ca784b'),
(984, 165, 'description-2', 'Melinh Point Office Building 02 Ngô Đức Kế, Quận 1, TP Hồ Chí Minh\r\n\r\nTicket Hotline: 0988 009 579\r\n<ul>\r\n 	<li>Phòng vé Sài Gòn: 0901449888</li>\r\n 	<li>Phòng vé Vũng Tàu: 0986 908 907</li>\r\n</ul>\r\nEmail: contact@greenlines-dp.com.vn'),
(985, 165, '_description-2', 'field_66442d4ba784c'),
(986, 165, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4766133632415!2d106.70358227377493!3d10.774761259227015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f442ecf3577%3A0xd9bcb0368f2a6ff3!2zMiBOZ8O0IMSQ4bupYyBL4bq_LCBC4bq_biBOZ2jDqSwgUXXhuq1uIDEsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1715744301454!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(987, 165, '_map', 'field_66442d61a784d'),
(988, 167, '_form', '<div class=\"form-contact-2\">\n  <label> Họ và Tên\n    [text* your-name autocomplete:name class:input-contact] </label>\n\n  <label> Số điện thoại\n    [text* your-subject class:input-contact] </label>\n\n  <label> Email\n    [email* your-email autocomplete:email class:input-contact] </label>\n</div>\n\n<label> Nội dung\n    [textarea your-message class:textarea-book] </label>\n\n[submit class:sub-book \"Liên hệ với chúng tôi\"]'),
(989, 167, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:44:\"[_site_title] <contact@greenlines-dp.com.vn>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(990, 167, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:44:\"[_site_title] <contact@greenlines-dp.com.vn>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(991, 167, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(992, 167, '_additional_settings', ''),
(993, 167, '_locale', 'en_US'),
(994, 167, '_hash', 'c9b73815ccdea93c3f4b1a867ab963842f644d89');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 0, '2024-05-14 03:50:53', '2024-05-14 03:50:53', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-05-14 03:50:53', '2024-05-14 03:50:53', '', 0, 'http://localhost/GreenLines/2024/05/14/navigation/', 0, 'wp_navigation', '', 0),
(10, 1, '2024-05-14 04:03:25', '2024-05-14 04:03:25', '<label> Họ và Tên\r\n    [text* your-name autocomplete:name class:input-book] </label>\r\n\r\n<label> Số điện thoại/ Zalo\r\n    [text* phone class:input-book] </label>\r\n\r\n<label> Ngày đi\r\n    [text* date class:input-book] </label>\r\n\r\n[submit class:sub-book \"Liên hệ đặt vé\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <contact@greenlines-dp.com.vn>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <contact@greenlines-dp.com.vn>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Book Tickets', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2024-05-15 02:37:00', '2024-05-15 02:37:00', '', 0, 'http://localhost/GreenLines/?post_type=wpcf7_contact_form&#038;p=10', 0, 'wpcf7_contact_form', '', 0),
(11, 1, '2024-05-14 04:06:10', '2024-05-14 04:06:10', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2024-05-14 07:39:27', '2024-05-14 07:39:27', '', 0, 'http://localhost/GreenLines/?page_id=11', 0, 'page', '', 0),
(12, 1, '2024-05-14 04:06:10', '2024-05-14 04:06:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-05-14 04:06:10', '2024-05-14 04:06:10', '', 11, 'http://localhost/GreenLines/?p=12', 0, 'revision', '', 0),
(13, 1, '2024-05-14 04:07:42', '2024-05-14 04:07:42', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2024-05-15 03:51:39', '2024-05-15 03:51:39', '', 0, 'http://localhost/GreenLines/?page_id=13', 0, 'page', '', 0),
(14, 1, '2024-05-14 04:07:42', '2024-05-14 04:07:42', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-14 04:07:42', '2024-05-14 04:07:42', '', 13, 'http://localhost/GreenLines/?p=14', 0, 'revision', '', 0),
(15, 1, '2024-05-14 04:08:47', '2024-05-14 04:08:47', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-05-14 04:08:47', '2024-05-14 04:08:47', '', 11, 'http://localhost/GreenLines/?p=15', 0, 'revision', '', 0),
(16, 1, '2024-05-14 04:12:27', '2024-05-14 04:12:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"combo\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'combo', 'combo', 'publish', 'closed', 'closed', '', 'group_6640b83ce1231', '', '', '2024-05-14 04:12:27', '2024-05-14 04:12:27', '', 0, 'http://localhost/GreenLines/?p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2024-05-14 04:12:27', '2024-05-14 04:12:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'price', 'price', 'publish', 'closed', 'closed', '', 'field_6640b83df90b5', '', '', '2024-05-14 04:12:27', '2024-05-14 04:12:27', '', 16, 'http://localhost/GreenLines/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'header & footer', 'header-footer', 'publish', 'closed', 'closed', '', 'group_663d8b6e11934', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 0, 'http://localhost/GreenLines/?p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2024-05-14 04:12:27', '2024-05-14 04:12:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_663d8b6e3f8b1', '', '', '2024-05-14 04:12:27', '2024-05-14 04:12:27', '', 18, 'http://localhost/GreenLines/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'logo-footer', 'logo-footer', 'publish', 'closed', 'closed', '', 'field_663da15b692cc', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 18, 'http://localhost/GreenLines/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'phones', 'phones', 'publish', 'closed', 'closed', '', 'field_663d8bd33f8b3', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 18, 'http://localhost/GreenLines/?post_type=acf-field&p=21', 2, 'acf-field', '', 0),
(22, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'copyright', 'copyright', 'publish', 'closed', 'closed', '', 'field_663da7a67e4c6', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 18, 'http://localhost/GreenLines/?post_type=acf-field&p=22', 3, 'acf-field', '', 0),
(23, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'footer-img', 'footer-img', 'publish', 'closed', 'closed', '', 'field_663da841eb4de', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 18, 'http://localhost/GreenLines/?post_type=acf-field&p=23', 4, 'acf-field', '', 0),
(24, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"index.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'home', 'home', 'publish', 'closed', 'closed', '', 'group_663f14179bc86', '', '', '2024-05-14 07:38:24', '2024-05-14 07:38:24', '', 0, 'http://localhost/GreenLines/?p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'heading-slides', 'heading-slides', 'publish', 'closed', 'closed', '', 'field_663f1418357bd', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;s:15:\"parent_repeater\";s:19:\"field_663f1418357bd\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_663f14d5357be', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 25, 'http://localhost/GreenLines/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:15:\"parent_repeater\";s:19:\"field_663f1418357bd\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_663f14e7357bf', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 25, 'http://localhost/GreenLines/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'office-title', 'office-title', 'publish', 'closed', 'closed', '', 'field_663f2029d72bf', '', '', '2024-05-14 07:38:24', '2024-05-14 07:38:24', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&#038;p=28', 3, 'acf-field', '', 0),
(29, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'tickets-offices', 'tickets-offices', 'publish', 'closed', 'closed', '', 'field_663f1b34997fe', '', '', '2024-05-14 07:38:24', '2024-05-14 07:38:24', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&#038;p=29', 4, 'acf-field', '', 0),
(30, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_663f1b34997fe\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_663f1d32997ff', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 29, 'http://localhost/GreenLines/?post_type=acf-field&p=30', 0, 'acf-field', '', 0),
(31, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_663f1b34997fe\";}', 'address', 'address', 'publish', 'closed', 'closed', '', 'field_663f1e0999800', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 29, 'http://localhost/GreenLines/?post_type=acf-field&p=31', 1, 'acf-field', '', 0),
(32, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:15:\"parent_repeater\";s:19:\"field_663f1b34997fe\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_663f1e1399801', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 29, 'http://localhost/GreenLines/?post_type=acf-field&p=32', 2, 'acf-field', '', 0),
(33, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'highway-title', 'highway-title', 'publish', 'closed', 'closed', '', 'field_663f260b297fb', '', '', '2024-05-14 04:58:39', '2024-05-14 04:58:39', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&#038;p=33', 1, 'acf-field', '', 0),
(34, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'main-highways', 'main-highways', 'publish', 'closed', 'closed', '', 'field_663f23f9eb421', '', '', '2024-05-14 04:58:39', '2024-05-14 04:58:39', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&#038;p=34', 2, 'acf-field', '', 0),
(35, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_663f23f9eb421\";}', 'from', 'from', 'publish', 'closed', 'closed', '', 'field_663f244beb422', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 34, 'http://localhost/GreenLines/?post_type=acf-field&p=35', 0, 'acf-field', '', 0),
(36, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_663f23f9eb421\";}', 'to', 'to', 'publish', 'closed', 'closed', '', 'field_663f2451eb423', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 34, 'http://localhost/GreenLines/?post_type=acf-field&p=36', 1, 'acf-field', '', 0),
(37, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;s:15:\"parent_repeater\";s:19:\"field_663f23f9eb421\";}', 'weekday-price', 'weekday-price', 'publish', 'closed', 'closed', '', 'field_663f2456eb424', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 34, 'http://localhost/GreenLines/?post_type=acf-field&p=37', 2, 'acf-field', '', 0),
(38, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;s:15:\"parent_repeater\";s:19:\"field_663f23f9eb421\";}', 'weekend-price', 'weekend-price', 'publish', 'closed', 'closed', '', 'field_663f2465eb425', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 34, 'http://localhost/GreenLines/?post_type=acf-field&p=38', 3, 'acf-field', '', 0),
(39, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_663f23f9eb421\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_663f25137d4c3', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 34, 'http://localhost/GreenLines/?post_type=acf-field&p=39', 4, 'acf-field', '', 0),
(40, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'combo-title', 'combo-title', 'publish', 'closed', 'closed', '', 'field_6640b9e3aa0fb', '', '', '2024-05-14 07:38:24', '2024-05-14 07:38:24', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&#038;p=40', 5, 'acf-field', '', 0),
(41, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'combo-desc', 'combo-desc', 'publish', 'closed', 'closed', '', 'field_6640ba15aa0fc', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=41', 6, 'acf-field', '', 0),
(42, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:5:\"combo\";s:5:\"combo\";s:4:\"tour\";s:4:\"tour\";s:7:\"tickets\";s:7:\"tickets\";s:4:\"food\";s:4:\"food\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'posts-1', 'posts-1', 'publish', 'closed', 'closed', '', 'field_6641698ff018a', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=42', 7, 'acf-field', '', 0),
(43, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'more-posts-1', 'more-posts-1', 'publish', 'closed', 'closed', '', 'field_6641734cfd1d4', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=43', 8, 'acf-field', '', 0),
(44, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'tour-title', 'tour-title', 'publish', 'closed', 'closed', '', 'field_664176a6a9454', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=44', 9, 'acf-field', '', 0),
(45, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'tour-desc', 'tour-desc', 'publish', 'closed', 'closed', '', 'field_664176ffa9455', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=45', 10, 'acf-field', '', 0),
(46, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:5:\"combo\";s:5:\"combo\";s:4:\"tour\";s:4:\"tour\";s:7:\"tickets\";s:7:\"tickets\";s:4:\"food\";s:4:\"food\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'posts-2', 'posts-2', 'publish', 'closed', 'closed', '', 'field_66417713a9456', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=46', 11, 'acf-field', '', 0),
(47, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'more-posts-2', 'more-posts-2', 'publish', 'closed', 'closed', '', 'field_66417725a9457', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=47', 12, 'acf-field', '', 0),
(48, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'food-title', 'food-title', 'publish', 'closed', 'closed', '', 'field_66418cc1e3e7a', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=48', 13, 'acf-field', '', 0),
(49, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'food-desc', 'food-desc', 'publish', 'closed', 'closed', '', 'field_66418cd8e3e7b', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=49', 14, 'acf-field', '', 0),
(50, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:5:\"combo\";s:5:\"combo\";s:4:\"tour\";s:4:\"tour\";s:7:\"tickets\";s:7:\"tickets\";s:4:\"food\";s:4:\"food\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'posts-3', 'posts-3', 'publish', 'closed', 'closed', '', 'field_66418cf7e3e7c', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=50', 15, 'acf-field', '', 0),
(51, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'more-posts-3', 'more-posts-3', 'publish', 'closed', 'closed', '', 'field_66418d16e3e7d', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=51', 16, 'acf-field', '', 0),
(52, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'review-title', 'review-title', 'publish', 'closed', 'closed', '', 'field_6641c70174192', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=52', 17, 'acf-field', '', 0),
(53, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'review-desc', 'review-desc', 'publish', 'closed', 'closed', '', 'field_6641c71f74193', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=53', 18, 'acf-field', '', 0),
(54, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'reviews', 'reviews', 'publish', 'closed', 'closed', '', 'field_6641c73274194', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=54', 19, 'acf-field', '', 0),
(55, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:15:\"parent_repeater\";s:19:\"field_6641c73274194\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_6641c75474195', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 54, 'http://localhost/GreenLines/?post_type=acf-field&p=55', 0, 'acf-field', '', 0),
(56, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_6641c73274194\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_6641c79974196', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 54, 'http://localhost/GreenLines/?post_type=acf-field&p=56', 1, 'acf-field', '', 0),
(57, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_6641c73274194\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_6641c7a474197', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 54, 'http://localhost/GreenLines/?post_type=acf-field&p=57', 2, 'acf-field', '', 0),
(58, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'news-title', 'news-title', 'publish', 'closed', 'closed', '', 'field_6641e20384f90', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=58', 20, 'acf-field', '', 0),
(59, 1, '2024-05-14 04:12:28', '2024-05-14 04:12:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'news-text', 'news-text', 'publish', 'closed', 'closed', '', 'field_6641e21184f91', '', '', '2024-05-14 04:12:28', '2024-05-14 04:12:28', '', 24, 'http://localhost/GreenLines/?post_type=acf-field&p=59', 21, 'acf-field', '', 0),
(60, 1, '2024-05-14 04:22:09', '2024-05-14 04:22:09', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2024-05-14 04:22:09', '2024-05-14 04:22:09', '', 0, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Logo.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2024-05-14 04:22:25', '2024-05-14 04:22:25', '', 'LOGO GREENLINESDP 1in 1', '', 'inherit', 'open', 'closed', '', 'logo-greenlinesdp-1in-1', '', '', '2024-05-14 04:22:25', '2024-05-14 04:22:25', '', 0, 'http://localhost/GreenLines/wp-content/uploads/2024/05/LOGO-GREENLINESDP-1in-1.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2024-05-14 04:23:23', '2024-05-14 04:23:23', '', 'image 2', '', 'inherit', 'open', 'closed', '', 'image-2', '', '', '2024-05-14 04:23:23', '2024-05-14 04:23:23', '', 0, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-2.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2024-05-14 04:29:35', '2024-05-14 04:29:35', '', 'tàu hai thân GreenlinesDP bài 2', '', 'inherit', 'open', 'closed', '', 'tau-hai-than-greenlinesdp-bai-2', '', '', '2024-05-14 04:29:35', '2024-05-14 04:29:35', '', 11, 'http://localhost/GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2024-05-14 04:35:06', '2024-05-14 04:35:06', '', 'cang-cau-da-60a1d66a8bb80', '', 'inherit', 'open', 'closed', '', 'cang-cau-da-60a1d66a8bb80', '', '', '2024-05-14 04:35:06', '2024-05-14 04:35:06', '', 11, 'http://localhost/GreenLines/wp-content/uploads/2024/05/cang-cau-da-60a1d66a8bb80.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2024-05-14 04:35:08', '2024-05-14 04:35:08', '', 'Khu-Du-lich-Ho-May-Vung-Tau-1024x683', '', 'inherit', 'open', 'closed', '', 'khu-du-lich-ho-may-vung-tau-1024x683', '', '', '2024-05-14 04:35:08', '2024-05-14 04:35:08', '', 11, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Khu-Du-lich-Ho-May-Vung-Tau-1024x683-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2024-05-14 04:35:21', '2024-05-14 04:35:21', '', 'Rectangle 25', '', 'inherit', 'open', 'closed', '', 'rectangle-25', '', '', '2024-05-14 04:35:21', '2024-05-14 04:35:21', '', 11, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-25.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2024-05-14 04:55:09', '2024-05-14 04:55:09', '', 'Rectangle 29', '', 'inherit', 'open', 'closed', '', 'rectangle-29', '', '', '2024-05-14 04:55:09', '2024-05-14 04:55:09', '', 11, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-29.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2024-05-14 04:55:11', '2024-05-14 04:55:11', '', 'Rectangle 30', '', 'inherit', 'open', 'closed', '', 'rectangle-30', '', '', '2024-05-14 04:55:11', '2024-05-14 04:55:11', '', 11, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-30.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2024-05-14 04:55:13', '2024-05-14 04:55:13', '', 'Rectangle 31', '', 'inherit', 'open', 'closed', '', 'rectangle-31', '', '', '2024-05-14 04:55:13', '2024-05-14 04:55:13', '', 11, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-31.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2024-05-14 04:55:54', '2024-05-14 04:55:54', '', '7ec8c2145919a627326e71122dd7d196', '', 'inherit', 'open', 'closed', '', '7ec8c2145919a627326e71122dd7d196', '', '', '2024-05-14 04:55:54', '2024-05-14 04:55:54', '', 11, 'http://localhost/GreenLines/wp-content/uploads/2024/05/7ec8c2145919a627326e71122dd7d196.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2024-05-14 04:55:56', '2024-05-14 04:55:56', '', '27f08a3f8dfaf82a273a84eed22b56d9', '', 'inherit', 'open', 'closed', '', '27f08a3f8dfaf82a273a84eed22b56d9', '', '', '2024-05-14 04:55:56', '2024-05-14 04:55:56', '', 11, 'http://localhost/GreenLines/wp-content/uploads/2024/05/27f08a3f8dfaf82a273a84eed22b56d9.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2024-05-14 04:55:58', '2024-05-14 04:55:58', '', '48e2ac767863651b9a50d505c8aaaec4', '', 'inherit', 'open', 'closed', '', '48e2ac767863651b9a50d505c8aaaec4', '', '', '2024-05-14 04:55:58', '2024-05-14 04:55:58', '', 11, 'http://localhost/GreenLines/wp-content/uploads/2024/05/48e2ac767863651b9a50d505c8aaaec4.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2024-05-14 04:57:46', '2024-05-14 04:57:46', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-05-14 04:57:46', '2024-05-14 04:57:46', '', 11, 'http://localhost/GreenLines/?p=73', 0, 'revision', '', 0),
(74, 1, '2024-05-14 06:44:56', '2024-05-14 06:44:56', '{\n    \"blogname\": {\n        \"value\": \"GreenlinesDP\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-05-14 06:44:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0931773f-97b0-4c20-b513-98424401ffbd', '', '', '2024-05-14 06:44:56', '2024-05-14 06:44:56', '', 0, 'http://localhost/GreenLines/0931773f-97b0-4c20-b513-98424401ffbd/', 0, 'customize_changeset', '', 0),
(75, 1, '2024-05-14 06:51:49', '2024-05-14 06:51:49', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Lịch tàu cao tốc Sài Gòn – Vũng Tàu</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>GreenLineDP hân hạnh là đại lý vé uy tin giúp quý khách trong việc kiểm tra, đặt vé. Nhân viên sẽ liên hệ ngay với quý khách qua đường dây nóng: 02999 999 999 hoặc thông qua các số điện thoại của nhân viên tại phòng vé:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Tường Vy (nhân viên sale) : 093 999 4567</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh Ngân (nhân viên sale): 0939 999 777</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Nhựt Tiến (nhân viên sale): 0907 991 991</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Hình thức thanh toán</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quý khách vui lòng thanh toán vé tàu Sài Gòn Vũng Tàu – Tàu Greenlines qua hình thức:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Chuyển khoản qua ngân hàng, thẻ ATM, thẻ tín dụng</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh toán trực tiếp bằng tiền mặt</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Giới thiệu tàu cao tốc Greenlines</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tàu cao tốc Greenlines đời mới được trang bị ghế ngồi êm ái với chất liệu da cao cấp, cùng sức chứa lên tới 150 hành khách mỗi chuyến. Không gian tàu được chia thành khoang thường và khoang VIP.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":76,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-4.png\" alt=\"\" class=\"wp-image-76\"/></figure>\n<!-- /wp:image -->', 'Vé Tàu Sài Gòn Vũng Tàu – Tàu cao tốc Greenlines', '', 'publish', 'open', 'open', '', 've-tau-sai-gon-vung-tau-tau-cao-toc-greenlines', '', '', '2024-05-14 08:49:22', '2024-05-14 08:49:22', '', 0, 'http://localhost/GreenLines/?post_type=tickets&#038;p=75', 0, 'tickets', '', 0),
(76, 1, '2024-05-14 06:51:38', '2024-05-14 06:51:38', '', 'image-4', '', 'inherit', 'open', 'closed', '', 'image-4', '', '', '2024-05-14 06:51:38', '2024-05-14 06:51:38', '', 75, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-4.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2024-05-14 06:51:49', '2024-05-14 06:51:49', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Lịch tàu cao tốc Sài Gòn – Vũng Tàu</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>GreenLineDP hân hạnh là đại lý vé uy tin giúp quý khách trong việc kiểm tra, đặt vé. Nhân viên sẽ liên hệ ngay với quý khách qua đường dây nóng: 02999 999 999 hoặc thông qua các số điện thoại của nhân viên tại phòng vé:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Tường Vy (nhân viên sale) : 093 999 4567</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh Ngân (nhân viên sale): 0939 999 777</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Nhựt Tiến (nhân viên sale): 0907 991 991</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Hình thức thanh toán</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quý khách vui lòng thanh toán vé tàu Sài Gòn Vũng Tàu – Tàu Greenlines qua hình thức:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Chuyển khoản qua ngân hàng, thẻ ATM, thẻ tín dụng</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh toán trực tiếp bằng tiền mặt</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Giới thiệu tàu cao tốc Greenlines</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tàu cao tốc Greenlines đời mới được trang bị ghế ngồi êm ái với chất liệu da cao cấp, cùng sức chứa lên tới 150 hành khách mỗi chuyến. Không gian tàu được chia thành khoang thường và khoang VIP.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":76,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-4.png\" alt=\"\" class=\"wp-image-76\"/></figure>\n<!-- /wp:image -->', 'Vé Tàu Sài Gòn Vũng Tàu – Tàu cao tốc Greenlines', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2024-05-14 06:51:49', '2024-05-14 06:51:49', '', 75, 'http://localhost/GreenLines/?p=77', 0, 'revision', '', 0),
(78, 1, '2024-05-14 06:53:27', '2024-05-14 06:53:27', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Lịch tàu cao tốc Sài Gòn – Vũng Tàu</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>GreenLineDP hân hạnh là đại lý vé uy tin giúp quý khách trong việc kiểm tra, đặt vé. Nhân viên sẽ liên hệ ngay với quý khách qua đường dây nóng: 02999 999 999 hoặc thông qua các số điện thoại của nhân viên tại phòng vé:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Tường Vy (nhân viên sale) :&nbsp;093 999 4567</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh Ngân (nhân viên sale):&nbsp;0939 999 777</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Nhựt Tiến (nhân viên sale):&nbsp;0907 991 991</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Hình thức thanh toán</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quý khách vui lòng thanh toán vé tàu Sài Gòn Vũng Tàu – Tàu Greenlines qua hình thức:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Chuyển khoản qua ngân hàng, thẻ ATM, thẻ tín dụng</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh toán trực tiếp bằng tiền mặt</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Giới thiệu tàu cao tốc Greenlines</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tàu cao tốc Greenlines đời mới được trang bị ghế ngồi êm ái với chất liệu da cao cấp, cùng sức chứa lên tới 150 hành khách mỗi chuyến. Không gian tàu được chia thành khoang thường và khoang VIP.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":76,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-4.png\" alt=\"\" class=\"wp-image-76\"/></figure>\n<!-- /wp:image -->', 'Vé Tàu Sài Gòn Côn Đảo – Tàu cao tốc Greenlines', '', 'publish', 'open', 'open', '', 've-tau-sai-gon-con-dao-tau-cao-toc-greenlines', '', '', '2024-05-14 08:49:17', '2024-05-14 08:49:17', '', 0, 'http://localhost/GreenLines/?post_type=tickets&#038;p=78', 0, 'tickets', '', 0),
(79, 1, '2024-05-14 06:53:27', '2024-05-14 06:53:27', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Lịch tàu cao tốc Sài Gòn – Vũng Tàu</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>GreenLineDP hân hạnh là đại lý vé uy tin giúp quý khách trong việc kiểm tra, đặt vé. Nhân viên sẽ liên hệ ngay với quý khách qua đường dây nóng: 02999 999 999 hoặc thông qua các số điện thoại của nhân viên tại phòng vé:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Tường Vy (nhân viên sale) :&nbsp;093 999 4567</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh Ngân (nhân viên sale):&nbsp;0939 999 777</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Nhựt Tiến (nhân viên sale):&nbsp;0907 991 991</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Hình thức thanh toán</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quý khách vui lòng thanh toán vé tàu Sài Gòn Vũng Tàu – Tàu Greenlines qua hình thức:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Chuyển khoản qua ngân hàng, thẻ ATM, thẻ tín dụng</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh toán trực tiếp bằng tiền mặt</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Giới thiệu tàu cao tốc Greenlines</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tàu cao tốc Greenlines đời mới được trang bị ghế ngồi êm ái với chất liệu da cao cấp, cùng sức chứa lên tới 150 hành khách mỗi chuyến. Không gian tàu được chia thành khoang thường và khoang VIP.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":76,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-4.png\" alt=\"\" class=\"wp-image-76\"/></figure>\n<!-- /wp:image -->', 'Vé Tàu Sài Gòn Côn Đảo – Tàu cao tốc Greenlines', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2024-05-14 06:53:27', '2024-05-14 06:53:27', '', 78, 'http://localhost/GreenLines/?p=79', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(80, 1, '2024-05-14 06:54:25', '2024-05-14 06:54:25', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Lịch tàu cao tốc Sài Gòn – Vũng Tàu</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>GreenLineDP hân hạnh là đại lý vé uy tin giúp quý khách trong việc kiểm tra, đặt vé. Nhân viên sẽ liên hệ ngay với quý khách qua đường dây nóng: 02999 999 999 hoặc thông qua các số điện thoại của nhân viên tại phòng vé:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Tường Vy (nhân viên sale) :&nbsp;093 999 4567</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh Ngân (nhân viên sale):&nbsp;0939 999 777</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Nhựt Tiến (nhân viên sale):&nbsp;0907 991 991</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Hình thức thanh toán</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quý khách vui lòng thanh toán vé tàu Sài Gòn Vũng Tàu – Tàu Greenlines qua hình thức:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Chuyển khoản qua ngân hàng, thẻ ATM, thẻ tín dụng</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh toán trực tiếp bằng tiền mặt</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Giới thiệu tàu cao tốc Greenlines</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tàu cao tốc Greenlines đời mới được trang bị ghế ngồi êm ái với chất liệu da cao cấp, cùng sức chứa lên tới 150 hành khách mỗi chuyến. Không gian tàu được chia thành khoang thường và khoang VIP.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":76,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-4.png\" alt=\"\" class=\"wp-image-76\"/></figure>\n<!-- /wp:image -->', 'Vé Tàu Sài Gòn Phan thiết – Tàu cao tốc Greenlines', '', 'publish', 'open', 'open', '', 've-tau-sai-gon-phan-thiet-tau-cao-toc-greenlines', '', '', '2024-05-14 08:49:11', '2024-05-14 08:49:11', '', 0, 'http://localhost/GreenLines/?post_type=tickets&#038;p=80', 0, 'tickets', '', 0),
(81, 1, '2024-05-14 06:54:25', '2024-05-14 06:54:25', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Lịch tàu cao tốc Sài Gòn – Vũng Tàu</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>GreenLineDP hân hạnh là đại lý vé uy tin giúp quý khách trong việc kiểm tra, đặt vé. Nhân viên sẽ liên hệ ngay với quý khách qua đường dây nóng: 02999 999 999 hoặc thông qua các số điện thoại của nhân viên tại phòng vé:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Tường Vy (nhân viên sale) :&nbsp;093 999 4567</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh Ngân (nhân viên sale):&nbsp;0939 999 777</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Nhựt Tiến (nhân viên sale):&nbsp;0907 991 991</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Hình thức thanh toán</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quý khách vui lòng thanh toán vé tàu Sài Gòn Vũng Tàu – Tàu Greenlines qua hình thức:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Chuyển khoản qua ngân hàng, thẻ ATM, thẻ tín dụng</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh toán trực tiếp bằng tiền mặt</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Giới thiệu tàu cao tốc Greenlines</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tàu cao tốc Greenlines đời mới được trang bị ghế ngồi êm ái với chất liệu da cao cấp, cùng sức chứa lên tới 150 hành khách mỗi chuyến. Không gian tàu được chia thành khoang thường và khoang VIP.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":76,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-4.png\" alt=\"\" class=\"wp-image-76\"/></figure>\n<!-- /wp:image -->', 'Vé Tàu Sài Gòn Phan thiết – Tàu cao tốc Greenlines', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2024-05-14 06:54:25', '2024-05-14 06:54:25', '', 80, 'http://localhost/GreenLines/?p=81', 0, 'revision', '', 0),
(82, 1, '2024-05-14 07:01:07', '2024-05-14 07:01:07', '<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Những lợi ích chỉ có tại Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn của Nụ Cười Mê Kông?</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Dịch vụ bao gồm trong combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn </li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Địa điểm đón tiễn khách khi đặt combo Côn Đảo</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Ưu đãi 25% đồ lễ viếng Cô Sáu khi đặt Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn  – Trải nghiệm ẩm thực và thiên nhiên phong phú</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Liên hệ mua Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Combo Côn Đảo 2 ngày 1 đêm</strong> từ Sài Gòn là sự lựa chọn hoàn hảo cho những ai mong muốn tận hưởng vẻ đẹp thiên nhiên yên bình tại một hòn đảo xinh đẹp. Nơi đây hứa hẹn sẽ là điểm đến cho bạn nhiều trải nghiệm đáng nhớ với những dấu ấn lịch sử đầy hào hùng. Đừng bỏ lỡ cơ hội khám phá vẻ đẹp tuyệt vời của Côn Đảo từ Nụ Cười Mê Kông nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":84,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png\" alt=\"\" class=\"wp-image-84\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn bao gồm dịch vụ vé tàu và nhà nghỉ. Với combo trọn gói vô cùng tiện lợi và tự chủ về thời gian, du khách có thể khám phá Côn Đảo với những trải nghiệm đầy thú vị. Và đặc biệt hơn nữa, hiện nay du khách đã có thể di chuyển đến Côn Đảo bằng tàu Thăng Long.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Siêu tàu cao tốc Thăng Long là phương tiện di chuyển hiện đại và nhanh chóng. Du khách đến Côn Đảo chỉ trong vòng 5 giờ từ Sài Gòn. Tàu Thăng Long có thiết kế vô cùng đặc biệt, giúp hạn chế trình trạng say sóng mang đến cho du khách trải nghiệm êm ái và thư giãn trên biển. Tàu được trang bị đầy đủ tiện nghi như:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Hệ thống ghế ngồi thoải mái</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Máy lạnh</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Wifi miễn phí</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Các tiện nghi giải trí khác</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour du lịch Vũng Tàu 3 ngày 2 đêm', '', 'publish', 'open', 'open', '', 'tour-du-lich-vung-tau-3-ngay-2-dem', '', '', '2024-05-14 10:20:57', '2024-05-14 10:20:57', '', 0, 'http://localhost/GreenLines/?post_type=combo&#038;p=82', 0, 'combo', '', 0),
(83, 1, '2024-05-14 06:58:23', '2024-05-14 06:58:23', '', 'Rectangle 1', '', 'inherit', 'open', 'closed', '', 'rectangle-1', '', '', '2024-05-14 06:58:23', '2024-05-14 06:58:23', '', 82, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2024-05-14 07:00:00', '2024-05-14 07:00:00', '', 'Sai-Gon-Vung-Tau-1280x721-1', '', 'inherit', 'open', 'closed', '', 'sai-gon-vung-tau-1280x721-1', '', '', '2024-05-14 07:00:00', '2024-05-14 07:00:00', '', 82, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2024-05-14 07:01:07', '2024-05-14 07:01:07', '<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Những lợi ích chỉ có tại Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn của Nụ Cười Mê Kông?</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Dịch vụ bao gồm trong combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn </li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Địa điểm đón tiễn khách khi đặt combo Côn Đảo</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Ưu đãi 25% đồ lễ viếng Cô Sáu khi đặt Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn  – Trải nghiệm ẩm thực và thiên nhiên phong phú</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Liên hệ mua Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Combo Côn Đảo 2 ngày 1 đêm</strong> từ Sài Gòn là sự lựa chọn hoàn hảo cho những ai mong muốn tận hưởng vẻ đẹp thiên nhiên yên bình tại một hòn đảo xinh đẹp. Nơi đây hứa hẹn sẽ là điểm đến cho bạn nhiều trải nghiệm đáng nhớ với những dấu ấn lịch sử đầy hào hùng. Đừng bỏ lỡ cơ hội khám phá vẻ đẹp tuyệt vời của Côn Đảo từ Nụ Cười Mê Kông nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":84,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png\" alt=\"\" class=\"wp-image-84\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn bao gồm dịch vụ vé tàu và nhà nghỉ. Với combo trọn gói vô cùng tiện lợi và tự chủ về thời gian, du khách có thể khám phá Côn Đảo với những trải nghiệm đầy thú vị. Và đặc biệt hơn nữa, hiện nay du khách đã có thể di chuyển đến Côn Đảo bằng tàu Thăng Long.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Siêu tàu cao tốc Thăng Long là phương tiện di chuyển hiện đại và nhanh chóng. Du khách đến Côn Đảo chỉ trong vòng 5 giờ từ Sài Gòn. Tàu Thăng Long có thiết kế vô cùng đặc biệt, giúp hạn chế trình trạng say sóng mang đến cho du khách trải nghiệm êm ái và thư giãn trên biển. Tàu được trang bị đầy đủ tiện nghi như:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Hệ thống ghế ngồi thoải mái</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Máy lạnh</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Wifi miễn phí</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Các tiện nghi giải trí khác</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour du lịch Vũng Tàu 3 ngày 2 đêm', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2024-05-14 07:01:07', '2024-05-14 07:01:07', '', 82, 'http://localhost/GreenLines/?p=85', 0, 'revision', '', 0),
(86, 1, '2024-05-14 07:01:13', '2024-05-14 07:01:13', '<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Những lợi ích chỉ có tại Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn của Nụ Cười Mê Kông?</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Dịch vụ bao gồm trong combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn </li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Địa điểm đón tiễn khách khi đặt combo Côn Đảo</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Ưu đãi 25% đồ lễ viếng Cô Sáu khi đặt Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn  – Trải nghiệm ẩm thực và thiên nhiên phong phú</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Liên hệ mua Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Combo Côn Đảo 2 ngày 1 đêm</strong> từ Sài Gòn là sự lựa chọn hoàn hảo cho những ai mong muốn tận hưởng vẻ đẹp thiên nhiên yên bình tại một hòn đảo xinh đẹp. Nơi đây hứa hẹn sẽ là điểm đến cho bạn nhiều trải nghiệm đáng nhớ với những dấu ấn lịch sử đầy hào hùng. Đừng bỏ lỡ cơ hội khám phá vẻ đẹp tuyệt vời của Côn Đảo từ Nụ Cười Mê Kông nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":84,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png\" alt=\"\" class=\"wp-image-84\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn bao gồm dịch vụ vé tàu và nhà nghỉ. Với combo trọn gói vô cùng tiện lợi và tự chủ về thời gian, du khách có thể khám phá Côn Đảo với những trải nghiệm đầy thú vị. Và đặc biệt hơn nữa, hiện nay du khách đã có thể di chuyển đến Côn Đảo bằng tàu Thăng Long.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Siêu tàu cao tốc Thăng Long là phương tiện di chuyển hiện đại và nhanh chóng. Du khách đến Côn Đảo chỉ trong vòng 5 giờ từ Sài Gòn. Tàu Thăng Long có thiết kế vô cùng đặc biệt, giúp hạn chế trình trạng say sóng mang đến cho du khách trải nghiệm êm ái và thư giãn trên biển. Tàu được trang bị đầy đủ tiện nghi như:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Hệ thống ghế ngồi thoải mái</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Máy lạnh</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Wifi miễn phí</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Các tiện nghi giải trí khác</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour du lịch Vũng Tàu 3 ngày 2 đêm', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2024-05-14 07:01:13', '2024-05-14 07:01:13', '', 82, 'http://localhost/GreenLines/?p=86', 0, 'revision', '', 0),
(87, 1, '2024-05-14 07:01:30', '2024-05-14 07:01:30', '<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Những lợi ích chỉ có tại Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn của Nụ Cười Mê Kông?</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Dịch vụ bao gồm trong combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn </li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Địa điểm đón tiễn khách khi đặt combo Côn Đảo</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Ưu đãi 25% đồ lễ viếng Cô Sáu khi đặt Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn  – Trải nghiệm ẩm thực và thiên nhiên phong phú</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Liên hệ mua Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Combo Côn Đảo 2 ngày 1 đêm</strong> từ Sài Gòn là sự lựa chọn hoàn hảo cho những ai mong muốn tận hưởng vẻ đẹp thiên nhiên yên bình tại một hòn đảo xinh đẹp. Nơi đây hứa hẹn sẽ là điểm đến cho bạn nhiều trải nghiệm đáng nhớ với những dấu ấn lịch sử đầy hào hùng. Đừng bỏ lỡ cơ hội khám phá vẻ đẹp tuyệt vời của Côn Đảo từ Nụ Cười Mê Kông nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":84,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png\" alt=\"\" class=\"wp-image-84\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn bao gồm dịch vụ vé tàu và nhà nghỉ. Với combo trọn gói vô cùng tiện lợi và tự chủ về thời gian, du khách có thể khám phá Côn Đảo với những trải nghiệm đầy thú vị. Và đặc biệt hơn nữa, hiện nay du khách đã có thể di chuyển đến Côn Đảo bằng tàu Thăng Long.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Siêu tàu cao tốc Thăng Long là phương tiện di chuyển hiện đại và nhanh chóng. Du khách đến Côn Đảo chỉ trong vòng 5 giờ từ Sài Gòn. Tàu Thăng Long có thiết kế vô cùng đặc biệt, giúp hạn chế trình trạng say sóng mang đến cho du khách trải nghiệm êm ái và thư giãn trên biển. Tàu được trang bị đầy đủ tiện nghi như:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Hệ thống ghế ngồi thoải mái</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Máy lạnh</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Wifi miễn phí</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Các tiện nghi giải trí khác</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour du lịch Vũng Tàu 3 ngày 2 đêm', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2024-05-14 07:01:30', '2024-05-14 07:01:30', '', 82, 'http://localhost/GreenLines/?p=87', 0, 'revision', '', 0),
(88, 1, '2024-05-14 07:02:52', '2024-05-14 07:02:52', '<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Những lợi ích chỉ có tại Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn của Nụ Cười Mê Kông?</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Dịch vụ bao gồm trong combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn&nbsp;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Địa điểm đón tiễn khách khi đặt combo Côn Đảo</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Ưu đãi 25% đồ lễ viếng Cô Sáu khi đặt Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn&nbsp; – Trải nghiệm ẩm thực và thiên nhiên phong phú</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Liên hệ mua Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Combo Côn Đảo 2 ngày 1 đêm</strong> từ Sài Gòn&nbsp;là sự lựa chọn hoàn hảo cho những ai mong muốn tận hưởng vẻ đẹp thiên nhiên yên bình tại một hòn đảo xinh đẹp. Nơi đây hứa hẹn sẽ là điểm đến cho bạn nhiều trải nghiệm đáng nhớ với những dấu ấn lịch sử đầy hào hùng. Đừng bỏ lỡ cơ hội khám phá vẻ đẹp tuyệt vời của Côn Đảo từ Nụ Cười Mê Kông nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":84,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png\" alt=\"\" class=\"wp-image-84\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn bao gồm dịch vụ vé tàu và nhà nghỉ. Với combo trọn gói vô cùng tiện lợi và tự chủ về thời gian, du khách có thể khám phá Côn Đảo với những trải nghiệm đầy thú vị. Và đặc biệt hơn nữa, hiện nay du khách đã có thể di chuyển đến Côn Đảo bằng tàu Thăng Long.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Siêu tàu cao tốc Thăng Long là phương tiện di chuyển hiện đại và nhanh chóng. Du khách đến Côn Đảo chỉ trong vòng 5 giờ từ Sài Gòn. Tàu Thăng Long có thiết kế vô cùng đặc biệt, giúp hạn chế trình trạng say sóng mang đến cho du khách trải nghiệm êm ái và thư giãn trên biển. Tàu được trang bị đầy đủ tiện nghi như:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Hệ thống ghế ngồi thoải mái</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Máy lạnh</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Wifi miễn phí</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Các tiện nghi giải trí khác</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour du lịch Phan Thiết trong ngày', '', 'publish', 'open', 'open', '', 'tour-du-lich-phan-thiet-trong-ngay', '', '', '2024-05-14 10:20:52', '2024-05-14 10:20:52', '', 0, 'http://localhost/GreenLines/?post_type=combo&#038;p=88', 0, 'combo', '', 0),
(89, 1, '2024-05-14 07:02:19', '2024-05-14 07:02:19', '', 'Rectangle 1 (1)', '', 'inherit', 'open', 'closed', '', 'rectangle-1-1', '', '', '2024-05-14 07:02:19', '2024-05-14 07:02:19', '', 88, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-1.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2024-05-14 07:02:52', '2024-05-14 07:02:52', '<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Những lợi ích chỉ có tại Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn của Nụ Cười Mê Kông?</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Dịch vụ bao gồm trong combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn&nbsp;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Địa điểm đón tiễn khách khi đặt combo Côn Đảo</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Ưu đãi 25% đồ lễ viếng Cô Sáu khi đặt Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn&nbsp; – Trải nghiệm ẩm thực và thiên nhiên phong phú</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Liên hệ mua Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Combo Côn Đảo 2 ngày 1 đêm</strong> từ Sài Gòn&nbsp;là sự lựa chọn hoàn hảo cho những ai mong muốn tận hưởng vẻ đẹp thiên nhiên yên bình tại một hòn đảo xinh đẹp. Nơi đây hứa hẹn sẽ là điểm đến cho bạn nhiều trải nghiệm đáng nhớ với những dấu ấn lịch sử đầy hào hùng. Đừng bỏ lỡ cơ hội khám phá vẻ đẹp tuyệt vời của Côn Đảo từ Nụ Cười Mê Kông nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":84,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png\" alt=\"\" class=\"wp-image-84\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn bao gồm dịch vụ vé tàu và nhà nghỉ. Với combo trọn gói vô cùng tiện lợi và tự chủ về thời gian, du khách có thể khám phá Côn Đảo với những trải nghiệm đầy thú vị. Và đặc biệt hơn nữa, hiện nay du khách đã có thể di chuyển đến Côn Đảo bằng tàu Thăng Long.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Siêu tàu cao tốc Thăng Long là phương tiện di chuyển hiện đại và nhanh chóng. Du khách đến Côn Đảo chỉ trong vòng 5 giờ từ Sài Gòn. Tàu Thăng Long có thiết kế vô cùng đặc biệt, giúp hạn chế trình trạng say sóng mang đến cho du khách trải nghiệm êm ái và thư giãn trên biển. Tàu được trang bị đầy đủ tiện nghi như:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Hệ thống ghế ngồi thoải mái</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Máy lạnh</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Wifi miễn phí</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Các tiện nghi giải trí khác</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour du lịch Phan Thiết trong ngày', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2024-05-14 07:02:52', '2024-05-14 07:02:52', '', 88, 'http://localhost/GreenLines/?p=90', 0, 'revision', '', 0),
(91, 1, '2024-05-14 07:04:29', '2024-05-14 07:04:29', '<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Những lợi ích chỉ có tại Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn của Nụ Cười Mê Kông?</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Dịch vụ bao gồm trong combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn&nbsp;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Địa điểm đón tiễn khách khi đặt combo Côn Đảo</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Ưu đãi 25% đồ lễ viếng Cô Sáu khi đặt Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn&nbsp; – Trải nghiệm ẩm thực và thiên nhiên phong phú</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Liên hệ mua Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Combo Côn Đảo 2 ngày 1 đêm</strong> từ Sài Gòn&nbsp;là sự lựa chọn hoàn hảo cho những ai mong muốn tận hưởng vẻ đẹp thiên nhiên yên bình tại một hòn đảo xinh đẹp. Nơi đây hứa hẹn sẽ là điểm đến cho bạn nhiều trải nghiệm đáng nhớ với những dấu ấn lịch sử đầy hào hùng. Đừng bỏ lỡ cơ hội khám phá vẻ đẹp tuyệt vời của Côn Đảo từ Nụ Cười Mê Kông nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":84,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png\" alt=\"\" class=\"wp-image-84\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn bao gồm dịch vụ vé tàu và nhà nghỉ. Với combo trọn gói vô cùng tiện lợi và tự chủ về thời gian, du khách có thể khám phá Côn Đảo với những trải nghiệm đầy thú vị. Và đặc biệt hơn nữa, hiện nay du khách đã có thể di chuyển đến Côn Đảo bằng tàu Thăng Long.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Siêu tàu cao tốc Thăng Long là phương tiện di chuyển hiện đại và nhanh chóng. Du khách đến Côn Đảo chỉ trong vòng 5 giờ từ Sài Gòn. Tàu Thăng Long có thiết kế vô cùng đặc biệt, giúp hạn chế trình trạng say sóng mang đến cho du khách trải nghiệm êm ái và thư giãn trên biển. Tàu được trang bị đầy đủ tiện nghi như:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Hệ thống ghế ngồi thoải mái</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Máy lạnh</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Wifi miễn phí</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Các tiện nghi giải trí khác</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour du lịch Côn Đảo 4 ngày 3 đêm', '', 'publish', 'open', 'open', '', 'tour-du-lich-con-dao-4-ngay-3-dem', '', '', '2024-05-14 10:20:47', '2024-05-14 10:20:47', '', 0, 'http://localhost/GreenLines/?post_type=combo&#038;p=91', 0, 'combo', '', 0),
(92, 1, '2024-05-14 07:04:00', '2024-05-14 07:04:00', '', 'Rectangle 1 (2)', '', 'inherit', 'open', 'closed', '', 'rectangle-1-2', '', '', '2024-05-14 07:04:00', '2024-05-14 07:04:00', '', 91, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-2.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2024-05-14 07:04:29', '2024-05-14 07:04:29', '<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Những lợi ích chỉ có tại Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn của Nụ Cười Mê Kông?</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Dịch vụ bao gồm trong combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn&nbsp;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Địa điểm đón tiễn khách khi đặt combo Côn Đảo</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Ưu đãi 25% đồ lễ viếng Cô Sáu khi đặt Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn&nbsp; – Trải nghiệm ẩm thực và thiên nhiên phong phú</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Liên hệ mua Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Combo Côn Đảo 2 ngày 1 đêm</strong> từ Sài Gòn&nbsp;là sự lựa chọn hoàn hảo cho những ai mong muốn tận hưởng vẻ đẹp thiên nhiên yên bình tại một hòn đảo xinh đẹp. Nơi đây hứa hẹn sẽ là điểm đến cho bạn nhiều trải nghiệm đáng nhớ với những dấu ấn lịch sử đầy hào hùng. Đừng bỏ lỡ cơ hội khám phá vẻ đẹp tuyệt vời của Côn Đảo từ Nụ Cười Mê Kông nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn với siêu tàu cao tốc Thăng Long</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":84,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png\" alt=\"\" class=\"wp-image-84\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Combo Côn Đảo 2 ngày 1 đêm từ Sài Gòn bao gồm dịch vụ vé tàu và nhà nghỉ. Với combo trọn gói vô cùng tiện lợi và tự chủ về thời gian, du khách có thể khám phá Côn Đảo với những trải nghiệm đầy thú vị. Và đặc biệt hơn nữa, hiện nay du khách đã có thể di chuyển đến Côn Đảo bằng tàu Thăng Long.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Siêu tàu cao tốc Thăng Long là phương tiện di chuyển hiện đại và nhanh chóng. Du khách đến Côn Đảo chỉ trong vòng 5 giờ từ Sài Gòn. Tàu Thăng Long có thiết kế vô cùng đặc biệt, giúp hạn chế trình trạng say sóng mang đến cho du khách trải nghiệm êm ái và thư giãn trên biển. Tàu được trang bị đầy đủ tiện nghi như:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Hệ thống ghế ngồi thoải mái</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Máy lạnh</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Wifi miễn phí</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Các tiện nghi giải trí khác</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour du lịch Côn Đảo 4 ngày 3 đêm', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2024-05-14 07:04:29', '2024-05-14 07:04:29', '', 91, 'http://localhost/GreenLines/?p=93', 0, 'revision', '', 0),
(94, 1, '2024-05-14 07:10:46', '2024-05-14 07:10:46', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chương trình tour Cần Thơ 1 ngày (Ăn sáng, trưa)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>05h00: HDV đón quý khách tại địa điểm hẹn trước, sau đó di chuyển xuống tàu tham quan, bắt đầu hành trình khám phá vùng đất Cần Thơ</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Tham quan chợ nổi Cái Răng Cần Thơ, chợ nổi bán sỉ lớn nhất của vùng đất Miền Tây. Len lỏi giữa hàng trăm chiếc ghe bán hàng nông sản, quý khách có thể mua nhiều loại trái cây đặc sản tươi ngon tại chợ nổi như xoài, chôm chôm, sầu riêng, măng cụt, mít, mãng cầu…(theo mùa)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đừng quên thưởng thức 1 tô hủ tiếu nóng hổi, nhâm nhi 1 ly cafe mát lạnh trên ghe tại chợ bạn nhé.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Check- in ghe khóm địa phương: chụp ảnh lưu niệm trên ghe và ăn khóm tươi (theo mùa)</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":96,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-7.png\" alt=\"\" class=\"wp-image-96\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Khám phá lò hủ tiếu Cần Thơ, tự do thưởng thức đặc sản pizza hủ tiếu trứ danh, độc đáo (chi phí tự túc). Bạn có thể học cách làm hủ tiếu tươi truyền thống với sự hướng dẫn của người địa phương. Đặc biệt, bạn còn được tự tay trải nghiệm làm hủ tiếu và có những tấm ảnh cực đẹp.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Tour Cồn Sơn Cần Thơ nửa ngày – Nhà cổ Bình Thuỷ', '', 'publish', 'open', 'open', '', 'tour-con-son-can-tho-nua-ngay-nha-co-binh-thuy', '', '', '2024-05-14 10:21:17', '2024-05-14 10:21:17', '', 0, 'http://localhost/GreenLines/?post_type=tour&#038;p=94', 0, 'tour', '', 0),
(95, 1, '2024-05-14 07:07:07', '2024-05-14 07:07:07', '', 'Rectangle 1 (3)', '', 'inherit', 'open', 'closed', '', 'rectangle-1-3', '', '', '2024-05-14 07:07:07', '2024-05-14 07:07:07', '', 94, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-3.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2024-05-14 07:08:54', '2024-05-14 07:08:54', '', 'image-7', '', 'inherit', 'open', 'closed', '', 'image-7', '', '', '2024-05-14 07:08:54', '2024-05-14 07:08:54', '', 94, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-7.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2024-05-14 07:10:46', '2024-05-14 07:10:46', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chương trình tour Cần Thơ 1 ngày (Ăn sáng, trưa)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>05h00: HDV đón quý khách tại địa điểm hẹn trước, sau đó di chuyển xuống tàu tham quan, bắt đầu hành trình khám phá vùng đất Cần Thơ</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Tham quan chợ nổi Cái Răng Cần Thơ, chợ nổi bán sỉ lớn nhất của vùng đất Miền Tây. Len lỏi giữa hàng trăm chiếc ghe bán hàng nông sản, quý khách có thể mua nhiều loại trái cây đặc sản tươi ngon tại chợ nổi như xoài, chôm chôm, sầu riêng, măng cụt, mít, mãng cầu…(theo mùa)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đừng quên thưởng thức 1 tô hủ tiếu nóng hổi, nhâm nhi 1 ly cafe mát lạnh trên ghe tại chợ bạn nhé.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Check- in ghe khóm địa phương: chụp ảnh lưu niệm trên ghe và ăn khóm tươi (theo mùa)</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":96,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-7.png\" alt=\"\" class=\"wp-image-96\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Khám phá lò hủ tiếu Cần Thơ, tự do thưởng thức đặc sản pizza hủ tiếu trứ danh, độc đáo (chi phí tự túc). Bạn có thể học cách làm hủ tiếu tươi truyền thống với sự hướng dẫn của người địa phương. Đặc biệt, bạn còn được tự tay trải nghiệm làm hủ tiếu và có những tấm ảnh cực đẹp.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Tour Cồn Sơn Cần Thơ nửa ngày – Nhà cổ Bình Thuỷ', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2024-05-14 07:10:46', '2024-05-14 07:10:46', '', 94, 'http://localhost/GreenLines/?p=97', 0, 'revision', '', 0),
(98, 1, '2024-05-14 07:12:32', '2024-05-14 07:12:32', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chương trình tour Cần Thơ 1 ngày (Ăn sáng, trưa)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>05h00: HDV đón quý khách tại địa điểm hẹn trước, sau đó di chuyển xuống tàu tham quan, bắt đầu hành trình khám phá vùng đất Cần Thơ</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Tham quan&nbsp;chợ nổi Cái Răng Cần Thơ, chợ nổi bán sỉ lớn nhất của vùng đất Miền Tây. Len lỏi giữa hàng trăm chiếc ghe bán hàng nông sản, quý khách có thể mua nhiều loại trái cây đặc sản tươi ngon tại chợ nổi như xoài, chôm chôm, sầu riêng, măng cụt, mít, mãng cầu…(theo mùa)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đừng quên thưởng thức 1 tô hủ tiếu nóng hổi, nhâm nhi 1 ly cafe mát lạnh trên ghe tại chợ bạn nhé.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Check- in ghe khóm địa phương: chụp ảnh lưu niệm trên ghe và ăn khóm tươi (theo mùa)</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":96,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-7.png\" alt=\"\" class=\"wp-image-96\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Khám phá lò hủ tiếu Cần Thơ, tự do thưởng thức đặc sản&nbsp;pizza hủ tiếu&nbsp;trứ danh, độc đáo (chi phí tự túc). Bạn có thể học cách làm hủ tiếu tươi truyền thống với sự hướng dẫn của người địa phương. Đặc biệt, bạn còn được tự tay trải nghiệm làm hủ tiếu và có những tấm ảnh cực đẹp.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour Cần Thơ 1 Ngày giá rẻ | Chợ nổi Cái Răng – Cồn Sơn', '', 'publish', 'open', 'open', '', 'tour-can-tho-1-ngay-gia-re-cho-noi-cai-rang-con-son', '', '', '2024-05-14 10:21:13', '2024-05-14 10:21:13', '', 0, 'http://localhost/GreenLines/?post_type=tour&#038;p=98', 0, 'tour', '', 0),
(99, 1, '2024-05-14 07:11:49', '2024-05-14 07:11:49', '', 'Rectangle 1 (4)', '', 'inherit', 'open', 'closed', '', 'rectangle-1-4', '', '', '2024-05-14 07:11:49', '2024-05-14 07:11:49', '', 98, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-4.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2024-05-14 07:12:32', '2024-05-14 07:12:32', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chương trình tour Cần Thơ 1 ngày (Ăn sáng, trưa)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>05h00: HDV đón quý khách tại địa điểm hẹn trước, sau đó di chuyển xuống tàu tham quan, bắt đầu hành trình khám phá vùng đất Cần Thơ</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Tham quan&nbsp;chợ nổi Cái Răng Cần Thơ, chợ nổi bán sỉ lớn nhất của vùng đất Miền Tây. Len lỏi giữa hàng trăm chiếc ghe bán hàng nông sản, quý khách có thể mua nhiều loại trái cây đặc sản tươi ngon tại chợ nổi như xoài, chôm chôm, sầu riêng, măng cụt, mít, mãng cầu…(theo mùa)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đừng quên thưởng thức 1 tô hủ tiếu nóng hổi, nhâm nhi 1 ly cafe mát lạnh trên ghe tại chợ bạn nhé.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Check- in ghe khóm địa phương: chụp ảnh lưu niệm trên ghe và ăn khóm tươi (theo mùa)</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":96,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-7.png\" alt=\"\" class=\"wp-image-96\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Khám phá lò hủ tiếu Cần Thơ, tự do thưởng thức đặc sản&nbsp;pizza hủ tiếu&nbsp;trứ danh, độc đáo (chi phí tự túc). Bạn có thể học cách làm hủ tiếu tươi truyền thống với sự hướng dẫn của người địa phương. Đặc biệt, bạn còn được tự tay trải nghiệm làm hủ tiếu và có những tấm ảnh cực đẹp.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour Cần Thơ 1 Ngày giá rẻ | Chợ nổi Cái Răng – Cồn Sơn', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2024-05-14 07:12:32', '2024-05-14 07:12:32', '', 98, 'http://localhost/GreenLines/?p=100', 0, 'revision', '', 0),
(101, 1, '2024-05-14 07:18:13', '2024-05-14 07:18:13', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chương trình tour Cần Thơ 1 ngày (Ăn sáng, trưa)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>05h00: HDV đón quý khách tại địa điểm hẹn trước, sau đó di chuyển xuống tàu tham quan, bắt đầu hành trình khám phá vùng đất Cần Thơ</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Tham quan&nbsp;chợ nổi Cái Răng Cần Thơ, chợ nổi bán sỉ lớn nhất của vùng đất Miền Tây. Len lỏi giữa hàng trăm chiếc ghe bán hàng nông sản, quý khách có thể mua nhiều loại trái cây đặc sản tươi ngon tại chợ nổi như xoài, chôm chôm, sầu riêng, măng cụt, mít, mãng cầu…(theo mùa)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đừng quên thưởng thức 1 tô hủ tiếu nóng hổi, nhâm nhi 1 ly cafe mát lạnh trên ghe tại chợ bạn nhé.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Check- in ghe khóm địa phương: chụp ảnh lưu niệm trên ghe và ăn khóm tươi (theo mùa)</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":96,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-7.png\" alt=\"\" class=\"wp-image-96\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Khám phá lò hủ tiếu Cần Thơ, tự do thưởng thức đặc sản&nbsp;pizza hủ tiếu&nbsp;trứ danh, độc đáo (chi phí tự túc). Bạn có thể học cách làm hủ tiếu tươi truyền thống với sự hướng dẫn của người địa phương. Đặc biệt, bạn còn được tự tay trải nghiệm làm hủ tiếu và có những tấm ảnh cực đẹp.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour miền Tây 2 ngày 1 đêm | Sài Gòn – Cần Thơ', '', 'publish', 'open', 'open', '', 'tour-mien-tay-2-ngay-1-dem-sai-gon-can-tho', '', '', '2024-05-14 10:21:05', '2024-05-14 10:21:05', '', 0, 'http://localhost/GreenLines/?post_type=tour&#038;p=101', 0, 'tour', '', 0),
(102, 1, '2024-05-14 07:13:54', '2024-05-14 07:13:54', '', 'Rectangle 1 (5)', '', 'inherit', 'open', 'closed', '', 'rectangle-1-5', '', '', '2024-05-14 07:13:54', '2024-05-14 07:13:54', '', 101, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-5.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2024-05-14 07:18:13', '2024-05-14 07:18:13', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Chương trình tour Cần Thơ 1 ngày (Ăn sáng, trưa)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>05h00: HDV đón quý khách tại địa điểm hẹn trước, sau đó di chuyển xuống tàu tham quan, bắt đầu hành trình khám phá vùng đất Cần Thơ</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Tham quan&nbsp;chợ nổi Cái Răng Cần Thơ, chợ nổi bán sỉ lớn nhất của vùng đất Miền Tây. Len lỏi giữa hàng trăm chiếc ghe bán hàng nông sản, quý khách có thể mua nhiều loại trái cây đặc sản tươi ngon tại chợ nổi như xoài, chôm chôm, sầu riêng, măng cụt, mít, mãng cầu…(theo mùa)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đừng quên thưởng thức 1 tô hủ tiếu nóng hổi, nhâm nhi 1 ly cafe mát lạnh trên ghe tại chợ bạn nhé.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Check- in ghe khóm địa phương: chụp ảnh lưu niệm trên ghe và ăn khóm tươi (theo mùa)</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":96,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-7.png\" alt=\"\" class=\"wp-image-96\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Khám phá lò hủ tiếu Cần Thơ, tự do thưởng thức đặc sản&nbsp;pizza hủ tiếu&nbsp;trứ danh, độc đáo (chi phí tự túc). Bạn có thể học cách làm hủ tiếu tươi truyền thống với sự hướng dẫn của người địa phương. Đặc biệt, bạn còn được tự tay trải nghiệm làm hủ tiếu và có những tấm ảnh cực đẹp.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Tour miền Tây 2 ngày 1 đêm | Sài Gòn – Cần Thơ', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2024-05-14 07:18:13', '2024-05-14 07:18:13', '', 101, 'http://localhost/GreenLines/?p=103', 0, 'revision', '', 0),
(105, 1, '2024-05-14 07:23:51', '2024-05-14 07:23:51', '', 'Rectangle 1 (6)', '', 'inherit', 'open', 'closed', '', 'rectangle-1-6', '', '', '2024-05-14 07:23:51', '2024-05-14 07:23:51', '', 0, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-6.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2024-05-14 07:26:06', '2024-05-14 07:26:06', '', 'image-9', '', 'inherit', 'open', 'closed', '', 'image-9', '', '', '2024-05-14 07:26:06', '2024-05-14 07:26:06', '', 0, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-9.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2024-05-14 07:26:34', '2024-05-14 07:26:34', '', 'image-9-1', '', 'inherit', 'open', 'closed', '', 'image-9-1', '', '', '2024-05-14 07:26:34', '2024-05-14 07:26:34', '', 0, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-9-1.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2024-05-14 07:31:35', '2024-05-14 07:31:35', '<!-- wp:list {\"ordered\":true,\"start\":2} -->\n<ol start=\"2\"><!-- wp:list-item -->\n<li>Đặc sản rượu dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản cơm dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản bánh tráng Mỹ Lồng Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản củ hủ dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản kẹo dừa Bến Tre</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Đặc sản Bến Tre&nbsp;rất đa dạng, vừa ngon khi thưởng thức ngay mà còn có thể mua về làm quà để tặng người thân. Vậy&nbsp;đặc sản Bến Tre là gì? Dưới đây là top 11 đặc sản ngon khó cưỡng ở xứ dừa Bến Tre mà bạn nên thử qua khi&nbsp;đi du lịch miền Tây&nbsp;nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">1.&nbsp; Đặc sản kẹo dừa Bến Tre</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Người dân Bến Tre rất tự hào với đặc sản quê hương mình, đặc biệt là món kẹo dừa. Bất cứ ai cầm chiếc kẹo dừa hình chữ nhật nhỏ nhỏ xinh xinh khi cắn một miếng. Vị ngọt của kẹo tan chảy trong miệng chắc chắn sẽ khiến người thưởng thức nhớ mãi hương vị ấy. Nếu đến Bến Tre thì chắc chắn không thể quên&nbsp;đặc sản Bến Tre&nbsp;cực ngon này nhé</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":106,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9.png\" alt=\"\" class=\"wp-image-106\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Hai nguyên liệu chính làm nên hương vị độc đáo của kẹo là nước cốt dừa và kẹo mạch nha. Bến Tre nổi tiếng là xứ sở của nhiều loại dừa ngon. Tuy nhiên chỉ có dừa xiêm, cơm dày, dẻo, màu trắng tinh khiết là thích hợp để làm kẹo dừa. Mạch nha cũng phải có quy trình làm cẩn thận, đòi hỏi người thợ phải tỉ mỉ, kiên nhẫn. Đặc biệt, một thứ nguyên liệu không thể thiếu để tạo nên thức quà bình dị này. Là đường thô, phải chọn loại đường tốt, mới, có màu vàng tươi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":107,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9-1.png\" alt=\"\" class=\"wp-image-107\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ngày nay, người dân Bến Tre đã sáng tạo ra nhiều loại kẹo dừa với những hương vị khác khau. Như kẹo dừa cacao, sầu riêng, mít, hay nhân đậu phộng… nhằm đáp ứng mọi nhu cầu của thực khách. Mỗi loại có hương vị đặc trưng riêng nhưng vẫn đảm bảo nguyên vẹn nét truyền thống.</p>\n<!-- /wp:paragraph -->', 'Đặc sản Đà Nẵng – Top 25+ món ngon nhất định phải thử (2024)', '', 'publish', 'open', 'open', '', 'dac-san-da-nang-top-25-mon-ngon-nhat-dinh-phai-thu-2024', '', '', '2024-05-14 10:21:37', '2024-05-14 10:21:37', '', 0, 'http://localhost/GreenLines/?post_type=food&#038;p=110', 0, 'food', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(111, 1, '2024-05-14 07:31:35', '2024-05-14 07:31:35', '<!-- wp:list {\"ordered\":true,\"start\":2} -->\n<ol start=\"2\"><!-- wp:list-item -->\n<li>Đặc sản rượu dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản cơm dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản bánh tráng Mỹ Lồng Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản củ hủ dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản kẹo dừa Bến Tre</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Đặc sản Bến Tre&nbsp;rất đa dạng, vừa ngon khi thưởng thức ngay mà còn có thể mua về làm quà để tặng người thân. Vậy&nbsp;đặc sản Bến Tre là gì? Dưới đây là top 11 đặc sản ngon khó cưỡng ở xứ dừa Bến Tre mà bạn nên thử qua khi&nbsp;đi du lịch miền Tây&nbsp;nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">1.&nbsp; Đặc sản kẹo dừa Bến Tre</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Người dân Bến Tre rất tự hào với đặc sản quê hương mình, đặc biệt là món kẹo dừa. Bất cứ ai cầm chiếc kẹo dừa hình chữ nhật nhỏ nhỏ xinh xinh khi cắn một miếng. Vị ngọt của kẹo tan chảy trong miệng chắc chắn sẽ khiến người thưởng thức nhớ mãi hương vị ấy. Nếu đến Bến Tre thì chắc chắn không thể quên&nbsp;đặc sản Bến Tre&nbsp;cực ngon này nhé</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":106,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9.png\" alt=\"\" class=\"wp-image-106\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Hai nguyên liệu chính làm nên hương vị độc đáo của kẹo là nước cốt dừa và kẹo mạch nha. Bến Tre nổi tiếng là xứ sở của nhiều loại dừa ngon. Tuy nhiên chỉ có dừa xiêm, cơm dày, dẻo, màu trắng tinh khiết là thích hợp để làm kẹo dừa. Mạch nha cũng phải có quy trình làm cẩn thận, đòi hỏi người thợ phải tỉ mỉ, kiên nhẫn. Đặc biệt, một thứ nguyên liệu không thể thiếu để tạo nên thức quà bình dị này. Là đường thô, phải chọn loại đường tốt, mới, có màu vàng tươi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":107,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9-1.png\" alt=\"\" class=\"wp-image-107\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ngày nay, người dân Bến Tre đã sáng tạo ra nhiều loại kẹo dừa với những hương vị khác khau. Như kẹo dừa cacao, sầu riêng, mít, hay nhân đậu phộng… nhằm đáp ứng mọi nhu cầu của thực khách. Mỗi loại có hương vị đặc trưng riêng nhưng vẫn đảm bảo nguyên vẹn nét truyền thống.</p>\n<!-- /wp:paragraph -->', 'Đặc sản Đà Nẵng – Top 25+ món ngon nhất định phải thử (2024)', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2024-05-14 07:31:35', '2024-05-14 07:31:35', '', 110, 'http://localhost/GreenLines/?p=111', 0, 'revision', '', 0),
(112, 1, '2024-05-14 07:32:53', '2024-05-14 07:32:53', '<!-- wp:list {\"ordered\":true,\"start\":2} -->\n<ol start=\"2\"><!-- wp:list-item -->\n<li>Đặc sản rượu dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản cơm dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản bánh tráng Mỹ Lồng Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản củ hủ dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản kẹo dừa Bến Tre</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Đặc sản Bến Tre&nbsp;rất đa dạng, vừa ngon khi thưởng thức ngay mà còn có thể mua về làm quà để tặng người thân. Vậy&nbsp;đặc sản Bến Tre là gì? Dưới đây là top 11 đặc sản ngon khó cưỡng ở xứ dừa Bến Tre mà bạn nên thử qua khi&nbsp;đi du lịch miền Tây&nbsp;nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">1.&nbsp; Đặc sản kẹo dừa Bến Tre</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Người dân Bến Tre rất tự hào với đặc sản quê hương mình, đặc biệt là món kẹo dừa. Bất cứ ai cầm chiếc kẹo dừa hình chữ nhật nhỏ nhỏ xinh xinh khi cắn một miếng. Vị ngọt của kẹo tan chảy trong miệng chắc chắn sẽ khiến người thưởng thức nhớ mãi hương vị ấy. Nếu đến Bến Tre thì chắc chắn không thể quên&nbsp;đặc sản Bến Tre&nbsp;cực ngon này nhé</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":106,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9.png\" alt=\"\" class=\"wp-image-106\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Hai nguyên liệu chính làm nên hương vị độc đáo của kẹo là nước cốt dừa và kẹo mạch nha. Bến Tre nổi tiếng là xứ sở của nhiều loại dừa ngon. Tuy nhiên chỉ có dừa xiêm, cơm dày, dẻo, màu trắng tinh khiết là thích hợp để làm kẹo dừa. Mạch nha cũng phải có quy trình làm cẩn thận, đòi hỏi người thợ phải tỉ mỉ, kiên nhẫn. Đặc biệt, một thứ nguyên liệu không thể thiếu để tạo nên thức quà bình dị này. Là đường thô, phải chọn loại đường tốt, mới, có màu vàng tươi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":107,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9-1.png\" alt=\"\" class=\"wp-image-107\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ngày nay, người dân Bến Tre đã sáng tạo ra nhiều loại kẹo dừa với những hương vị khác khau. Như kẹo dừa cacao, sầu riêng, mít, hay nhân đậu phộng… nhằm đáp ứng mọi nhu cầu của thực khách. Mỗi loại có hương vị đặc trưng riêng nhưng vẫn đảm bảo nguyên vẹn nét truyền thống.</p>\n<!-- /wp:paragraph -->', 'Đặc sản Bến Tre – Top 11 Đặc sản xứ dừa ngon ngây ngất (2024)', '', 'publish', 'open', 'open', '', 'dac-san-ben-tre-top-11-dac-san-xu-dua-ngon-ngay-ngat-2024', '', '', '2024-05-14 10:21:32', '2024-05-14 10:21:32', '', 0, 'http://localhost/GreenLines/?post_type=food&#038;p=112', 0, 'food', '', 0),
(113, 1, '2024-05-14 07:32:32', '2024-05-14 07:32:32', '', 'Rectangle 1 (7)', '', 'inherit', 'open', 'closed', '', 'rectangle-1-7', '', '', '2024-05-14 07:32:32', '2024-05-14 07:32:32', '', 112, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-7.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2024-05-14 07:32:53', '2024-05-14 07:32:53', '<!-- wp:list {\"ordered\":true,\"start\":2} -->\n<ol start=\"2\"><!-- wp:list-item -->\n<li>Đặc sản rượu dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản cơm dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản bánh tráng Mỹ Lồng Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản củ hủ dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản kẹo dừa Bến Tre</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Đặc sản Bến Tre&nbsp;rất đa dạng, vừa ngon khi thưởng thức ngay mà còn có thể mua về làm quà để tặng người thân. Vậy&nbsp;đặc sản Bến Tre là gì? Dưới đây là top 11 đặc sản ngon khó cưỡng ở xứ dừa Bến Tre mà bạn nên thử qua khi&nbsp;đi du lịch miền Tây&nbsp;nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">1.&nbsp; Đặc sản kẹo dừa Bến Tre</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Người dân Bến Tre rất tự hào với đặc sản quê hương mình, đặc biệt là món kẹo dừa. Bất cứ ai cầm chiếc kẹo dừa hình chữ nhật nhỏ nhỏ xinh xinh khi cắn một miếng. Vị ngọt của kẹo tan chảy trong miệng chắc chắn sẽ khiến người thưởng thức nhớ mãi hương vị ấy. Nếu đến Bến Tre thì chắc chắn không thể quên&nbsp;đặc sản Bến Tre&nbsp;cực ngon này nhé</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":106,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9.png\" alt=\"\" class=\"wp-image-106\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Hai nguyên liệu chính làm nên hương vị độc đáo của kẹo là nước cốt dừa và kẹo mạch nha. Bến Tre nổi tiếng là xứ sở của nhiều loại dừa ngon. Tuy nhiên chỉ có dừa xiêm, cơm dày, dẻo, màu trắng tinh khiết là thích hợp để làm kẹo dừa. Mạch nha cũng phải có quy trình làm cẩn thận, đòi hỏi người thợ phải tỉ mỉ, kiên nhẫn. Đặc biệt, một thứ nguyên liệu không thể thiếu để tạo nên thức quà bình dị này. Là đường thô, phải chọn loại đường tốt, mới, có màu vàng tươi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":107,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9-1.png\" alt=\"\" class=\"wp-image-107\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ngày nay, người dân Bến Tre đã sáng tạo ra nhiều loại kẹo dừa với những hương vị khác khau. Như kẹo dừa cacao, sầu riêng, mít, hay nhân đậu phộng… nhằm đáp ứng mọi nhu cầu của thực khách. Mỗi loại có hương vị đặc trưng riêng nhưng vẫn đảm bảo nguyên vẹn nét truyền thống.</p>\n<!-- /wp:paragraph -->', 'Đặc sản Bến Tre – Top 11 Đặc sản xứ dừa ngon ngây ngất (2024)', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2024-05-14 07:32:53', '2024-05-14 07:32:53', '', 112, 'http://localhost/GreenLines/?p=114', 0, 'revision', '', 0),
(115, 1, '2024-05-14 07:34:11', '2024-05-14 07:34:11', '<!-- wp:list {\"ordered\":true,\"start\":2} -->\n<ol start=\"2\"><!-- wp:list-item -->\n<li>Đặc sản rượu dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản cơm dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản bánh tráng Mỹ Lồng Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản củ hủ dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản kẹo dừa Bến Tre</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Đặc sản Bến Tre&nbsp;rất đa dạng, vừa ngon khi thưởng thức ngay mà còn có thể mua về làm quà để tặng người thân. Vậy&nbsp;đặc sản Bến Tre là gì? Dưới đây là top 11 đặc sản ngon khó cưỡng ở xứ dừa Bến Tre mà bạn nên thử qua khi&nbsp;đi du lịch miền Tây&nbsp;nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">1.&nbsp; Đặc sản kẹo dừa Bến Tre</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Người dân Bến Tre rất tự hào với đặc sản quê hương mình, đặc biệt là món kẹo dừa. Bất cứ ai cầm chiếc kẹo dừa hình chữ nhật nhỏ nhỏ xinh xinh khi cắn một miếng. Vị ngọt của kẹo tan chảy trong miệng chắc chắn sẽ khiến người thưởng thức nhớ mãi hương vị ấy. Nếu đến Bến Tre thì chắc chắn không thể quên&nbsp;đặc sản Bến Tre&nbsp;cực ngon này nhé</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":106,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9.png\" alt=\"\" class=\"wp-image-106\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Hai nguyên liệu chính làm nên hương vị độc đáo của kẹo là nước cốt dừa và kẹo mạch nha. Bến Tre nổi tiếng là xứ sở của nhiều loại dừa ngon. Tuy nhiên chỉ có dừa xiêm, cơm dày, dẻo, màu trắng tinh khiết là thích hợp để làm kẹo dừa. Mạch nha cũng phải có quy trình làm cẩn thận, đòi hỏi người thợ phải tỉ mỉ, kiên nhẫn. Đặc biệt, một thứ nguyên liệu không thể thiếu để tạo nên thức quà bình dị này. Là đường thô, phải chọn loại đường tốt, mới, có màu vàng tươi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":107,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9-1.png\" alt=\"\" class=\"wp-image-107\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ngày nay, người dân Bến Tre đã sáng tạo ra nhiều loại kẹo dừa với những hương vị khác khau. Như kẹo dừa cacao, sầu riêng, mít, hay nhân đậu phộng… nhằm đáp ứng mọi nhu cầu của thực khách. Mỗi loại có hương vị đặc trưng riêng nhưng vẫn đảm bảo nguyên vẹn nét truyền thống.</p>\n<!-- /wp:paragraph -->', 'Top 15 quán phở bò ngon ở Cần Thơ – Đậm đà hương vị miền Tây', '', 'publish', 'open', 'open', '', 'top-15-quan-pho-bo-ngon-o-can-tho-dam-da-huong-vi-mien-tay', '', '', '2024-05-14 10:21:27', '2024-05-14 10:21:27', '', 0, 'http://localhost/GreenLines/?post_type=food&#038;p=115', 0, 'food', '', 0),
(116, 1, '2024-05-14 07:33:50', '2024-05-14 07:33:50', '', 'Rectangle 1 (8)', '', 'inherit', 'open', 'closed', '', 'rectangle-1-8', '', '', '2024-05-14 07:33:50', '2024-05-14 07:33:50', '', 115, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-8.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2024-05-14 07:34:11', '2024-05-14 07:34:11', '<!-- wp:list {\"ordered\":true,\"start\":2} -->\n<ol start=\"2\"><!-- wp:list-item -->\n<li>Đặc sản rượu dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản cơm dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản bánh tráng Mỹ Lồng Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản củ hủ dừa Bến Tre</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Đặc sản kẹo dừa Bến Tre</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Đặc sản Bến Tre&nbsp;rất đa dạng, vừa ngon khi thưởng thức ngay mà còn có thể mua về làm quà để tặng người thân. Vậy&nbsp;đặc sản Bến Tre là gì? Dưới đây là top 11 đặc sản ngon khó cưỡng ở xứ dừa Bến Tre mà bạn nên thử qua khi&nbsp;đi du lịch miền Tây&nbsp;nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">1.&nbsp; Đặc sản kẹo dừa Bến Tre</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Người dân Bến Tre rất tự hào với đặc sản quê hương mình, đặc biệt là món kẹo dừa. Bất cứ ai cầm chiếc kẹo dừa hình chữ nhật nhỏ nhỏ xinh xinh khi cắn một miếng. Vị ngọt của kẹo tan chảy trong miệng chắc chắn sẽ khiến người thưởng thức nhớ mãi hương vị ấy. Nếu đến Bến Tre thì chắc chắn không thể quên&nbsp;đặc sản Bến Tre&nbsp;cực ngon này nhé</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":106,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9.png\" alt=\"\" class=\"wp-image-106\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Hai nguyên liệu chính làm nên hương vị độc đáo của kẹo là nước cốt dừa và kẹo mạch nha. Bến Tre nổi tiếng là xứ sở của nhiều loại dừa ngon. Tuy nhiên chỉ có dừa xiêm, cơm dày, dẻo, màu trắng tinh khiết là thích hợp để làm kẹo dừa. Mạch nha cũng phải có quy trình làm cẩn thận, đòi hỏi người thợ phải tỉ mỉ, kiên nhẫn. Đặc biệt, một thứ nguyên liệu không thể thiếu để tạo nên thức quà bình dị này. Là đường thô, phải chọn loại đường tốt, mới, có màu vàng tươi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":107,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/GreenLines/wp-content/uploads/2024/05/image-9-1.png\" alt=\"\" class=\"wp-image-107\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ngày nay, người dân Bến Tre đã sáng tạo ra nhiều loại kẹo dừa với những hương vị khác khau. Như kẹo dừa cacao, sầu riêng, mít, hay nhân đậu phộng… nhằm đáp ứng mọi nhu cầu của thực khách. Mỗi loại có hương vị đặc trưng riêng nhưng vẫn đảm bảo nguyên vẹn nét truyền thống.</p>\n<!-- /wp:paragraph -->', 'Top 15 quán phở bò ngon ở Cần Thơ – Đậm đà hương vị miền Tây', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2024-05-14 07:34:11', '2024-05-14 07:34:11', '', 115, 'http://localhost/GreenLines/?p=117', 0, 'revision', '', 0),
(118, 1, '2024-05-14 07:36:02', '2024-05-14 07:36:02', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-05-14 07:36:02', '2024-05-14 07:36:02', '', 11, 'http://localhost/GreenLines/?p=118', 0, 'revision', '', 0),
(119, 1, '2024-05-14 07:39:27', '2024-05-14 07:39:27', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2024-05-14 07:39:27', '2024-05-14 07:39:27', '', 11, 'http://localhost/GreenLines/?p=119', 0, 'revision', '', 0),
(120, 1, '2024-05-14 08:25:52', '2024-05-14 07:41:53', 'Tàu cao tốc Greenlines', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2024-05-14 08:25:52', '2024-05-14 08:25:52', '', 0, 'http://localhost/GreenLines/?p=120', 1, 'nav_menu_item', '', 0),
(121, 1, '2024-05-14 08:25:52', '2024-05-14 07:41:53', 'Tổng hợp các chương trình Tour Phan Thiết trọn gói và Tour Phan Thiết trong ngày đa dạng.', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2024-05-14 08:25:52', '2024-05-14 08:25:52', '', 0, 'http://localhost/GreenLines/?p=121', 2, 'nav_menu_item', '', 0),
(122, 1, '2024-05-14 08:25:52', '2024-05-14 07:41:53', 'Tour tham quan sông nước', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2024-05-14 08:25:52', '2024-05-14 08:25:52', '', 0, 'http://localhost/GreenLines/?p=122', 3, 'nav_menu_item', '', 0),
(123, 1, '2024-05-14 08:25:52', '2024-05-14 07:41:53', 'Ẩm thực là một trong những chủ đề luôn nhận được nhiều sự quan tâm nhất đối với du khách. Đôi khi ẩm thực chính là sự đặc biệt, là yếu tố thu hút du khách. Review ẩm thực dần trở thành điều không thể thiếu mỗi khi đến với một vùng đất mới. Từ Bắc vào Nam, ở bất cứ tỉnh thành nào chúng ta cũng có thể tìm thấy điểm đặc biệt trong văn hóa ẩm thực ở đó như rượu sim Phú Quốc, lẩu mắm Cần Thơ, cơm tấm Long Xuyên,…', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2024-05-14 08:25:52', '2024-05-14 08:25:52', '', 0, 'http://localhost/GreenLines/?p=123', 4, 'nav_menu_item', '', 0),
(124, 1, '2024-05-14 08:25:52', '2024-05-14 07:41:53', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2024-05-14 08:25:52', '2024-05-14 08:25:52', '', 0, 'http://localhost/GreenLines/?p=124', 5, 'nav_menu_item', '', 0),
(125, 1, '2024-05-14 08:25:52', '2024-05-14 07:41:53', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2024-05-14 08:25:52', '2024-05-14 08:25:52', '', 0, 'http://localhost/GreenLines/?p=125', 6, 'nav_menu_item', '', 0),
(126, 1, '2024-05-14 07:49:06', '2024-05-14 07:49:06', 'en_US', 'English', '', 'publish', 'closed', 'closed', '', 'english', '', '', '2024-05-14 07:49:06', '2024-05-14 07:49:06', '', 0, 'http://localhost/GreenLines/language_switcher/english/', 0, 'language_switcher', '', 0),
(127, 1, '2024-05-14 07:49:06', '2024-05-14 07:49:06', 'vi', 'Vietnamese', '', 'publish', 'closed', 'closed', '', 'vietnamese', '', '', '2024-05-14 07:49:06', '2024-05-14 07:49:06', '', 0, 'http://localhost/GreenLines/language_switcher/vietnamese/', 0, 'language_switcher', '', 0),
(128, 1, '2024-05-14 07:49:06', '2024-05-14 07:49:06', 'current_language', 'Current Language', '', 'publish', 'closed', 'closed', '', 'current-language', '', '', '2024-05-14 07:49:06', '2024-05-14 07:49:06', '', 0, 'http://localhost/GreenLines/language_switcher/current-language/', 0, 'language_switcher', '', 0),
(129, 1, '2024-05-14 07:49:06', '2024-05-14 07:49:06', 'opposite_language', 'Opposite Language', '', 'publish', 'closed', 'closed', '', 'opposite-language', '', '', '2024-05-14 07:49:06', '2024-05-14 07:49:06', '', 0, 'http://localhost/GreenLines/language_switcher/opposite-language/', 0, 'language_switcher', '', 0),
(130, 1, '2024-05-14 08:22:57', '2024-05-14 08:22:57', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2024-05-14 08:22:57', '2024-05-14 08:22:57', '', 0, 'http://localhost/GreenLines/?p=130', 1, 'nav_menu_item', '', 0),
(131, 1, '2024-05-14 08:22:57', '2024-05-14 08:22:57', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2024-05-14 08:22:57', '2024-05-14 08:22:57', '', 0, 'http://localhost/GreenLines/?p=131', 2, 'nav_menu_item', '', 0),
(132, 1, '2024-05-14 08:24:27', '2024-05-14 08:24:09', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2024-05-14 08:24:27', '2024-05-14 08:24:27', '', 0, 'http://localhost/GreenLines/?p=132', 1, 'nav_menu_item', '', 0),
(133, 1, '2024-05-14 08:24:27', '2024-05-14 08:24:09', '', 'Dịch vụ tàu hai thân', '', 'publish', 'closed', 'closed', '', 'dich-vu-tau-hai-than', '', '', '2024-05-14 08:24:27', '2024-05-14 08:24:27', '', 0, 'http://localhost/GreenLines/?p=133', 2, 'nav_menu_item', '', 0),
(134, 1, '2024-05-14 08:24:27', '2024-05-14 08:24:09', '', 'Chính sách thanh toán', '', 'publish', 'closed', 'closed', '', 'chinh-sach-thanh-toan', '', '', '2024-05-14 08:24:27', '2024-05-14 08:24:27', '', 0, 'http://localhost/GreenLines/?p=134', 3, 'nav_menu_item', '', 0),
(135, 1, '2024-05-14 08:24:27', '2024-05-14 08:24:09', '', 'Chính sách đổi trả vé tàu', '', 'publish', 'closed', 'closed', '', 'chinh-sach-doi-tra-ve-tau', '', '', '2024-05-14 08:24:27', '2024-05-14 08:24:27', '', 0, 'http://localhost/GreenLines/?p=135', 4, 'nav_menu_item', '', 0),
(136, 1, '2024-05-14 08:24:27', '2024-05-14 08:24:09', '', 'Chính sách bảo mật thông tin', '', 'publish', 'closed', 'closed', '', 'chinh-sach-bao-mat-thong-tin', '', '', '2024-05-14 08:24:27', '2024-05-14 08:24:27', '', 0, 'http://localhost/GreenLines/?p=136', 5, 'nav_menu_item', '', 0),
(137, 1, '2024-05-14 08:25:43', '2024-05-14 08:25:34', '', 'Khuyến mãi', '', 'publish', 'closed', 'closed', '', 'khuyen-mai', '', '', '2024-05-14 08:25:43', '2024-05-14 08:25:43', '', 0, 'http://localhost/GreenLines/?p=137', 1, 'nav_menu_item', '', 0),
(138, 1, '2024-05-14 08:25:43', '2024-05-14 08:25:34', '', 'Hướng dẫn thanh toán', '', 'publish', 'closed', 'closed', '', 'huong-dan-thanh-toan', '', '', '2024-05-14 08:25:43', '2024-05-14 08:25:43', '', 0, 'http://localhost/GreenLines/?p=138', 2, 'nav_menu_item', '', 0),
(139, 1, '2024-05-14 08:25:43', '2024-05-14 08:25:34', '', 'Chính sách giá', '', 'publish', 'closed', 'closed', '', 'chinh-sach-gia', '', '', '2024-05-14 08:25:43', '2024-05-14 08:25:43', '', 0, 'http://localhost/GreenLines/?p=139', 3, 'nav_menu_item', '', 0),
(140, 1, '2024-05-14 08:25:43', '2024-05-14 08:25:34', '', 'Lịch tàu chạy', '', 'publish', 'closed', 'closed', '', 'lich-tau-chay', '', '', '2024-05-14 08:25:43', '2024-05-14 08:25:43', '', 0, 'http://localhost/GreenLines/?p=140', 4, 'nav_menu_item', '', 0),
(141, 1, '2024-05-14 08:25:43', '2024-05-14 08:25:34', '', 'Tra cứu điểm tích lũy', '', 'publish', 'closed', 'closed', '', 'tra-cuu-diem-tich-luy', '', '', '2024-05-14 08:25:43', '2024-05-14 08:25:43', '', 0, 'http://localhost/GreenLines/?p=141', 5, 'nav_menu_item', '', 0),
(142, 1, '2024-05-14 09:13:13', '2024-05-14 09:13:13', '', 'Tất cả', '', 'publish', 'closed', 'closed', '', 'tat-ca', '', '', '2024-05-14 09:13:13', '2024-05-14 09:13:13', '', 0, 'http://localhost/GreenLines/?p=142', 1, 'nav_menu_item', '', 0),
(143, 1, '2024-05-14 09:13:13', '2024-05-14 09:13:13', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2024-05-14 09:13:13', '2024-05-14 09:13:13', '', 2, 'http://localhost/GreenLines/?p=143', 2, 'nav_menu_item', '', 0),
(144, 1, '2024-05-14 09:13:13', '2024-05-14 09:13:13', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2024-05-14 09:13:13', '2024-05-14 09:13:13', '', 2, 'http://localhost/GreenLines/?p=144', 3, 'nav_menu_item', '', 0),
(145, 1, '2024-05-14 09:13:13', '2024-05-14 09:13:13', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2024-05-14 09:13:13', '2024-05-14 09:13:13', '', 2, 'http://localhost/GreenLines/?p=145', 4, 'nav_menu_item', '', 0),
(146, 1, '2024-05-14 09:22:47', '2024-05-14 09:22:09', '', 'Tất cả', '', 'publish', 'closed', 'closed', '', 'tat-ca-2', '', '', '2024-05-14 09:22:47', '2024-05-14 09:22:47', '', 0, 'http://localhost/GreenLines/?p=146', 1, 'nav_menu_item', '', 0),
(147, 1, '2024-05-14 09:22:47', '2024-05-14 09:22:09', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2024-05-14 09:22:47', '2024-05-14 09:22:47', '', 6, 'http://localhost/GreenLines/?p=147', 2, 'nav_menu_item', '', 0),
(148, 1, '2024-05-14 09:22:47', '2024-05-14 09:22:09', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2024-05-14 09:22:47', '2024-05-14 09:22:47', '', 6, 'http://localhost/GreenLines/?p=148', 3, 'nav_menu_item', '', 0),
(149, 1, '2024-05-14 09:22:47', '2024-05-14 09:22:09', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2024-05-14 09:22:47', '2024-05-14 09:22:47', '', 6, 'http://localhost/GreenLines/?p=149', 4, 'nav_menu_item', '', 0),
(150, 1, '2024-05-14 09:28:32', '2024-05-14 09:28:32', '', 'Tất cả', '', 'publish', 'closed', 'closed', '', 'tat-ca-3', '', '', '2024-05-14 09:28:32', '2024-05-14 09:28:32', '', 0, 'http://localhost/GreenLines/?p=150', 1, 'nav_menu_item', '', 0),
(151, 1, '2024-05-14 09:28:33', '2024-05-14 09:28:33', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2024-05-14 09:28:33', '2024-05-14 09:28:33', '', 10, 'http://localhost/GreenLines/?p=151', 2, 'nav_menu_item', '', 0),
(152, 1, '2024-05-14 09:28:33', '2024-05-14 09:28:33', ' ', '', '', 'publish', 'closed', 'closed', '', '152', '', '', '2024-05-14 09:28:33', '2024-05-14 09:28:33', '', 10, 'http://localhost/GreenLines/?p=152', 3, 'nav_menu_item', '', 0),
(153, 1, '2024-05-14 09:39:17', '2024-05-14 09:39:17', '', 'Tất cả', '', 'publish', 'closed', 'closed', '', 'tat-ca-4', '', '', '2024-05-14 09:39:17', '2024-05-14 09:39:17', '', 0, 'http://localhost/GreenLines/?p=153', 1, 'nav_menu_item', '', 0),
(154, 1, '2024-05-14 09:39:18', '2024-05-14 09:39:18', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2024-05-14 09:39:18', '2024-05-14 09:39:18', '', 17, 'http://localhost/GreenLines/?p=154', 2, 'nav_menu_item', '', 0),
(155, 1, '2024-05-14 09:39:18', '2024-05-14 09:39:18', ' ', '', '', 'publish', 'closed', 'closed', '', '155', '', '', '2024-05-14 09:39:18', '2024-05-14 09:39:18', '', 17, 'http://localhost/GreenLines/?p=155', 3, 'nav_menu_item', '', 0),
(156, 1, '2024-05-15 03:35:14', '2024-05-15 03:35:14', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_66442cd0b7253', '', '', '2024-05-15 03:35:27', '2024-05-15 03:35:27', '', 0, 'http://localhost/GreenLines/?post_type=acf-field-group&#038;p=156', 0, 'acf-field-group', '', 0),
(157, 1, '2024-05-15 03:35:14', '2024-05-15 03:35:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title-contact', 'title-contact', 'publish', 'closed', 'closed', '', 'field_66442cd2a7849', '', '', '2024-05-15 03:35:14', '2024-05-15 03:35:14', '', 156, 'http://localhost/GreenLines/?post_type=acf-field&p=157', 0, 'acf-field', '', 0),
(158, 1, '2024-05-15 03:35:14', '2024-05-15 03:35:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'description', 'description', 'publish', 'closed', 'closed', '', 'field_66442d30a784a', '', '', '2024-05-15 03:35:14', '2024-05-15 03:35:14', '', 156, 'http://localhost/GreenLines/?post_type=acf-field&p=158', 1, 'acf-field', '', 0),
(159, 1, '2024-05-15 03:35:14', '2024-05-15 03:35:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title-contact-2', 'title-contact-2', 'publish', 'closed', 'closed', '', 'field_66442d3ca784b', '', '', '2024-05-15 03:35:14', '2024-05-15 03:35:14', '', 156, 'http://localhost/GreenLines/?post_type=acf-field&p=159', 2, 'acf-field', '', 0),
(160, 1, '2024-05-15 03:35:14', '2024-05-15 03:35:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'description-2', 'description-2', 'publish', 'closed', 'closed', '', 'field_66442d4ba784c', '', '', '2024-05-15 03:35:14', '2024-05-15 03:35:14', '', 156, 'http://localhost/GreenLines/?post_type=acf-field&p=160', 3, 'acf-field', '', 0),
(161, 1, '2024-05-15 03:35:14', '2024-05-15 03:35:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'map', 'map', 'publish', 'closed', 'closed', '', 'field_66442d61a784d', '', '', '2024-05-15 03:35:14', '2024-05-15 03:35:14', '', 156, 'http://localhost/GreenLines/?post_type=acf-field&p=161', 4, 'acf-field', '', 0),
(162, 1, '2024-05-15 03:38:37', '2024-05-15 03:38:37', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-15 03:38:37', '2024-05-15 03:38:37', '', 13, 'http://localhost/GreenLines/?p=162', 0, 'revision', '', 0),
(163, 1, '2024-05-15 03:38:48', '2024-05-15 03:38:48', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-15 03:38:48', '2024-05-15 03:38:48', '', 13, 'http://localhost/GreenLines/?p=163', 0, 'revision', '', 0),
(164, 1, '2024-05-15 03:41:34', '2024-05-15 03:41:34', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-15 03:41:34', '2024-05-15 03:41:34', '', 13, 'http://localhost/GreenLines/?p=164', 0, 'revision', '', 0),
(165, 1, '2024-05-15 03:45:24', '2024-05-15 03:45:24', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-15 03:45:24', '2024-05-15 03:45:24', '', 13, 'http://localhost/GreenLines/?p=165', 0, 'revision', '', 0),
(166, 1, '2024-05-15 03:51:39', '2024-05-15 03:51:39', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-15 03:51:39', '2024-05-15 03:51:39', '', 13, 'http://localhost/GreenLines/?p=166', 0, 'revision', '', 0),
(167, 1, '2024-05-15 04:29:24', '2024-05-15 04:29:24', '<div class=\"form-contact-2\">\r\n  <label> Họ và Tên\r\n    [text* your-name autocomplete:name class:input-contact] </label>\r\n\r\n  <label> Số điện thoại\r\n    [text* your-subject class:input-contact] </label>\r\n\r\n  <label> Email\r\n    [email* your-email autocomplete:email class:input-contact] </label>\r\n</div>\r\n\r\n<label> Nội dung\r\n    [textarea your-message class:textarea-book] </label>\r\n\r\n[submit class:sub-book \"Liên hệ với chúng tôi\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <contact@greenlines-dp.com.vn>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <contact@greenlines-dp.com.vn>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2024-05-15 04:41:29', '2024-05-15 04:41:29', '', 0, 'http://localhost/GreenLines/?post_type=wpcf7_contact_form&#038;p=167', 0, 'wpcf7_contact_form', '', 0),
(168, 1, '2024-05-22 09:17:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-22 09:17:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/GreenLines/?p=168', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(2, 'Vé tàu', 've-tau', 0),
(3, 'Vũng Tàu', 'vung-tau', 0),
(4, 'Côn Đảo', 'con-dao', 0),
(5, 'Phan Thiết', 'phan-thiet', 0),
(6, 'Combo', 'combo', 0),
(7, 'Tour Vũng Tàu', 'tour-vung-tau', 0),
(8, 'Tour Côn Đảo', 'tour-con-dao', 0),
(9, 'Tour Phan Thiết', 'tour-phan-thiet', 0),
(10, 'Tour du lịch sông nước', 'tour-du-lich-song-nuoc', 0),
(11, 'Tour Cần Thơ', 'tour-can-tho', 0),
(12, 'Tour Miền Tây', 'tour-mien-tay', 0),
(13, 'Tin tức và Sự kiện', 'tin-tuc-va-su-kien', 0),
(17, 'Ẩm thực', 'am-thuc', 0),
(18, 'Miền Trung', 'mien-trung', 0),
(19, 'Miền Tây', 'mien-tay', 0),
(20, 'Miền Nam', 'mien-nam', 0),
(21, 'PC', 'pc', 0),
(22, 'Language', 'language', 0),
(23, 'footer 1', 'footer-1', 0),
(24, 'footer 2', 'footer-2', 0),
(25, 'Menu Vé Tàu', 'menu-ve-tau', 0),
(26, 'Menu combo', 'menu-combo', 0),
(27, 'Menu tour', 'menu-tour', 0),
(28, 'Menu food', 'menu-food', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(16, 13, 0),
(18, 13, 0),
(24, 13, 0),
(75, 3, 0),
(78, 4, 0),
(80, 5, 0),
(82, 7, 0),
(88, 9, 0),
(91, 8, 0),
(94, 11, 0),
(98, 11, 0),
(101, 12, 0),
(110, 18, 0),
(112, 20, 0),
(115, 20, 0),
(120, 21, 0),
(121, 21, 0),
(122, 21, 0),
(123, 21, 0),
(124, 21, 0),
(125, 21, 0),
(130, 22, 0),
(131, 22, 0),
(132, 23, 0),
(133, 23, 0),
(134, 23, 0),
(135, 23, 0),
(136, 23, 0),
(137, 24, 0),
(138, 24, 0),
(139, 24, 0),
(140, 24, 0),
(141, 24, 0),
(142, 25, 0),
(143, 25, 0),
(144, 25, 0),
(145, 25, 0),
(146, 26, 0),
(147, 26, 0),
(148, 26, 0),
(149, 26, 0),
(150, 27, 0),
(151, 27, 0),
(152, 27, 0),
(153, 28, 0),
(154, 28, 0),
(155, 28, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(2, 2, 'category-tickets', 'Tàu cao tốc Greenlines', 0, 0),
(3, 3, 'category-tickets', '', 2, 1),
(4, 4, 'category-tickets', '', 2, 1),
(5, 5, 'category-tickets', '', 2, 1),
(6, 6, 'category-combo', 'Tổng hợp các chương trình Tour Phan Thiết trọn gói và Tour Phan Thiết trong ngày đa dạng.', 0, 0),
(7, 7, 'category-combo', '', 6, 1),
(8, 8, 'category-combo', '', 6, 1),
(9, 9, 'category-combo', '', 6, 1),
(10, 10, 'category-tour', 'Tour tham quan sông nước', 0, 0),
(11, 11, 'category-tour', '', 10, 2),
(12, 12, 'category-tour', '', 10, 1),
(13, 13, 'category', '', 0, 0),
(17, 17, 'category-food', 'Ẩm thực là một trong những chủ đề luôn nhận được nhiều sự quan tâm nhất đối với du khách. Đôi khi ẩm thực chính là sự đặc biệt, là yếu tố thu hút du khách. Review ẩm thực dần trở thành điều không thể thiếu mỗi khi đến với một vùng đất mới. Từ Bắc vào Nam, ở bất cứ tỉnh thành nào chúng ta cũng có thể tìm thấy điểm đặc biệt trong văn hóa ẩm thực ở đó như rượu sim Phú Quốc, lẩu mắm Cần Thơ, cơm tấm Long Xuyên,…', 0, 0),
(18, 18, 'category-food', '', 17, 1),
(19, 19, 'category-food', '', 17, 0),
(20, 20, 'category-food', '', 17, 2),
(21, 21, 'nav_menu', '', 0, 6),
(22, 22, 'nav_menu', '', 0, 2),
(23, 23, 'nav_menu', '', 0, 5),
(24, 24, 'nav_menu', '', 0, 5),
(25, 25, 'nav_menu', '', 0, 4),
(26, 26, 'nav_menu', '', 0, 4),
(27, 27, 'nav_menu', '', 0, 3),
(28, 28, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_trp_dictionary_en_us_vi`
--

CREATE TABLE `wp_trp_dictionary_en_us_vi` (
  `id` bigint(20) NOT NULL,
  `original` longtext NOT NULL,
  `translated` longtext DEFAULT NULL,
  `status` int(20) DEFAULT 0,
  `block_type` int(20) DEFAULT 0,
  `original_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_trp_gettext_en_us`
--

CREATE TABLE `wp_trp_gettext_en_us` (
  `id` bigint(20) NOT NULL,
  `original` longtext NOT NULL,
  `translated` longtext DEFAULT NULL,
  `domain` longtext DEFAULT NULL,
  `status` int(20) DEFAULT NULL,
  `original_id` bigint(20) DEFAULT NULL,
  `plural_form` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_trp_gettext_original_meta`
--

CREATE TABLE `wp_trp_gettext_original_meta` (
  `meta_id` bigint(20) NOT NULL,
  `original_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_trp_gettext_original_strings`
--

CREATE TABLE `wp_trp_gettext_original_strings` (
  `id` bigint(20) NOT NULL,
  `original` text NOT NULL,
  `domain` text NOT NULL,
  `context` text DEFAULT NULL,
  `original_plural` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_trp_gettext_vi`
--

CREATE TABLE `wp_trp_gettext_vi` (
  `id` bigint(20) NOT NULL,
  `original` longtext NOT NULL,
  `translated` longtext DEFAULT NULL,
  `domain` longtext DEFAULT NULL,
  `status` int(20) DEFAULT NULL,
  `original_id` bigint(20) DEFAULT NULL,
  `plural_form` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_trp_original_meta`
--

CREATE TABLE `wp_trp_original_meta` (
  `meta_id` bigint(20) NOT NULL,
  `original_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_trp_original_strings`
--

CREATE TABLE `wp_trp_original_strings` (
  `id` bigint(20) NOT NULL,
  `original` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'greenlines'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"6beca35b704c911fbfbd34e5a3e48ec052c50d57e7a48b2351b2ec1495778182\";a:4:{s:10:\"expiration\";i:1716542223;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36\";s:5:\"login\";i:1716369423;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '168'),
(19, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(20, 1, 'metaboxhidden_page', 'a:0:{}'),
(21, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-05-14T07:31:05.943Z\";s:4:\"core\";a:1:{s:10:\"openPanels\";a:8:{i:0;s:11:\"post-status\";i:1;s:24:\"yoast-seo/document-panel\";i:2;s:31:\"taxonomy-panel-category-tickets\";i:3;s:14:\"featured-image\";i:4;s:29:\"taxonomy-panel-category-combo\";i:5;s:28:\"taxonomy-panel-category-tour\";i:6;s:23:\"taxonomy-panel-category\";i:7;s:28:\"taxonomy-panel-category-food\";}}}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1715660609'),
(24, 1, 'closedpostboxes_tickets', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(25, 1, 'metaboxhidden_tickets', 'a:0:{}'),
(26, 1, 'closedpostboxes_combo', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(27, 1, 'metaboxhidden_combo', 'a:0:{}'),
(28, 1, 'closedpostboxes_tour', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(29, 1, 'metaboxhidden_tour', 'a:0:{}'),
(30, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(31, 1, 'metaboxhidden_post', 'a:0:{}'),
(32, 1, 'closedpostboxes_food', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(33, 1, 'metaboxhidden_food', 'a:0:{}'),
(34, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(35, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-tickets\";i:1;s:19:\"add-post-type-combo\";i:2;s:18:\"add-post-type-tour\";i:3;s:18:\"add-post-type-food\";}'),
(36, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(37, 1, 'nav_menu_recently_edited', '21'),
(38, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:30;s:9:\"\0*\0reason\";s:26:\"permalink_settings_changed\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:7:\"user_id\";i:1;s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'greenlines', '$P$BR6ljsJNkzuaOIA23Fejm4ziMXPl72/', 'greenlines', 'contact@greenlines-dp.com.vn', 'http://localhost/GreenLines', '2024-05-14 03:50:48', '', 0, 'greenlines');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'http://localhost/GreenLines/', '28:e18de98c533d3d13676db12da542ba6c', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2024-05-14 04:03:45', '2024-05-15 01:51:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL),
(2, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 04:03:45', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(3, 'http://localhost/GreenLines/', '28:e18de98c533d3d13676db12da542ba6c', 11, 'post', 'page', 1, 0, NULL, NULL, 'Trang chủ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 04:05:55', '2024-05-14 21:34:02', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-14 07:39:27', '2024-05-14 04:06:10', 0),
(5, 'http://localhost/GreenLines/lien-he/', '36:5246d523791c6319651201b7c9b4d2c7', 13, 'post', 'page', 1, 0, NULL, NULL, 'Liên hệ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 04:07:42', '2024-05-14 21:34:01', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2024-05-15 03:51:39', '2024-05-14 04:07:42', 0),
(6, NULL, NULL, 16, 'post', 'post', 1, 0, NULL, NULL, 'group_6640b83ce1231', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 04:12:27', '2024-05-15 04:01:52', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(7, NULL, NULL, 18, 'post', 'post', 1, 0, NULL, NULL, 'group_663d8b6e11934', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 04:12:27', '2024-05-15 04:01:52', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(8, NULL, NULL, 24, 'post', 'post', 1, 0, NULL, NULL, 'group_663f14179bc86', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 04:12:28', '2024-05-15 04:01:52', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(9, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 05:02:46', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(10, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 05:02:46', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(11, 'http://localhost/GreenLines/category-tickets/ve-tau/', '52:adf5612ad1e32065a5e5a9103fd0eac3', 2, 'term', 'category-tickets', NULL, NULL, '%%term_title%% %%page%% %%sep%% %%sitename%%', NULL, 'Vé tàu', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 06:45:43', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL),
(12, 'http://localhost/GreenLines/category-tickets/vung-tau/', '54:75630d067190b063a079ac6fa33724db', 3, 'term', 'category-tickets', NULL, NULL, NULL, NULL, 'Vũng Tàu', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 06:45:59', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2024-05-14 08:49:22', '2024-05-14 06:51:49', NULL),
(13, 'http://localhost/GreenLines/category-tickets/con-dao/', '53:baf1e6a584883a913af006c871bb6feb', 4, 'term', 'category-tickets', NULL, NULL, NULL, NULL, 'Côn Đảo', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 06:46:13', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2024-05-14 08:49:17', '2024-05-14 06:53:27', NULL),
(14, 'http://localhost/GreenLines/category-tickets/phan-thiet/', '56:c63d270e7120918c4838756bbabdf299', 5, 'term', 'category-tickets', NULL, NULL, NULL, NULL, 'Phan Thiết', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 06:46:22', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2024-05-14 08:49:11', '2024-05-14 06:54:25', NULL),
(15, 'http://localhost/GreenLines/tickets/ve-tau-sai-gon-vung-tau-tau-cao-toc-greenlines/', '83:2211124a7837b52de0bea8e589d7cb26', 75, 'post', 'tickets', 1, 0, NULL, NULL, 'Vé Tàu Sài Gòn Vũng Tàu – Tàu cao tốc Greenlines', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg', NULL, '63', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg', '63', 'featured-image', '{\n    \"width\": 1366,\n    \"height\": 692,\n    \"filesize\": 194658,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg\",\n    \"size\": \"full\",\n    \"id\": 63,\n    \"alt\": \"\",\n    \"pixels\": 945272,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-14 06:48:30', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2024-05-14 08:49:22', '2024-05-14 06:51:49', 0),
(16, 'http://localhost/GreenLines/tickets/ve-tau-sai-gon-con-dao-tau-cao-toc-greenlines/', '82:a79d8b1d351e6f1fb28c17451778cff7', 78, 'post', 'tickets', 1, 0, NULL, NULL, 'Vé Tàu Sài Gòn Côn Đảo – Tàu cao tốc Greenlines', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg', NULL, '63', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg', '63', 'featured-image', '{\n    \"width\": 1366,\n    \"height\": 692,\n    \"filesize\": 194658,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg\",\n    \"size\": \"full\",\n    \"id\": 63,\n    \"alt\": \"\",\n    \"pixels\": 945272,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-14 06:53:27', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2024-05-14 08:49:17', '2024-05-14 06:53:27', 0),
(17, 'http://localhost/GreenLines/tickets/ve-tau-sai-gon-phan-thiet-tau-cao-toc-greenlines/', '85:99eb48a3713a10fd6d0dc39cb1fe0763', 80, 'post', 'tickets', 1, 0, NULL, NULL, 'Vé Tàu Sài Gòn Phan thiết – Tàu cao tốc Greenlines', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg', NULL, '63', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg', '63', 'featured-image', '{\n    \"width\": 1366,\n    \"height\": 692,\n    \"filesize\": 194658,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/tau-hai-than-GreenlinesDP-bai-2.jpg\",\n    \"size\": \"full\",\n    \"id\": 63,\n    \"alt\": \"\",\n    \"pixels\": 945272,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-14 06:54:25', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2024-05-14 08:49:11', '2024-05-14 06:54:25', 0),
(18, 'http://localhost/GreenLines/category-combo/combo/', '49:379808c2fba3f43f44fa59e5879ce1a3', 6, 'term', 'category-combo', NULL, NULL, '%%term_title%% %%page%% %%sep%% %%sitename%%', NULL, 'Combo', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 06:55:38', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL),
(19, 'http://localhost/GreenLines/category-combo/tour-vung-tau/', '57:9f3a6406815fc1bdb54255b4efe7e62f', 7, 'term', 'category-combo', NULL, NULL, NULL, NULL, 'Tour Vũng Tàu', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 06:55:57', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2024-05-14 10:20:57', '2024-05-14 07:01:07', NULL),
(20, 'http://localhost/GreenLines/category-combo/tour-con-dao/', '56:60f8a98e100847a2d3843b41ff408280', 8, 'term', 'category-combo', NULL, NULL, NULL, NULL, 'Tour Côn Đảo', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 06:56:11', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2024-05-14 10:20:47', '2024-05-14 07:04:29', NULL),
(21, 'http://localhost/GreenLines/category-combo/tour-phan-thiet/', '59:728a079544071ab0da4c9bc46df2dab9', 9, 'term', 'category-combo', NULL, NULL, NULL, NULL, 'Tour Phan Thiết', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 06:56:18', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2024-05-14 10:20:52', '2024-05-14 07:02:52', NULL),
(22, 'http://localhost/GreenLines/combo/tour-du-lich-vung-tau-3-ngay-2-dem/', '69:219706fd8799af6b2bf7580b65c684cf', 82, 'post', 'combo', 1, 0, NULL, NULL, 'Tour du lịch Vũng Tàu 3 ngày 2 đêm', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1.png', NULL, '83', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1.png', '83', 'featured-image', '{\n    \"width\": 282,\n    \"height\": 282,\n    \"filesize\": 156848,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/Rectangle-1.png\",\n    \"size\": \"full\",\n    \"id\": 83,\n    \"alt\": \"\",\n    \"pixels\": 79524,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-05-14 06:58:21', '2024-05-15 00:06:39', 1, NULL, NULL, NULL, NULL, 0, 3, 2, '2024-05-14 10:20:57', '2024-05-14 07:01:07', 0),
(23, 'http://localhost/GreenLines/combo/tour-du-lich-phan-thiet-trong-ngay/', '69:91c3bbddba9e888fda8318a28272b1a3', 88, 'post', 'combo', 1, 0, NULL, NULL, 'Tour du lịch Phan Thiết trong ngày', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-1.png', NULL, '89', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-1.png', '89', 'featured-image', '{\n    \"width\": 282,\n    \"height\": 282,\n    \"filesize\": 130289,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-1.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/Rectangle-1-1.png\",\n    \"size\": \"full\",\n    \"id\": 89,\n    \"alt\": \"\",\n    \"pixels\": 79524,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-05-14 07:02:44', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, 3, 2, '2024-05-14 10:20:52', '2024-05-14 07:02:52', 0),
(24, 'http://localhost/GreenLines/combo/tour-du-lich-con-dao-4-ngay-3-dem/', '68:18a65f9ab792acdb44763d9394d2c7fa', 91, 'post', 'combo', 1, 0, NULL, NULL, 'Tour du lịch Côn Đảo 4 ngày 3 đêm', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-2.png', NULL, '92', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-2.png', '92', 'featured-image', '{\n    \"width\": 282,\n    \"height\": 282,\n    \"filesize\": 87302,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-2.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/Rectangle-1-2.png\",\n    \"size\": \"full\",\n    \"id\": 92,\n    \"alt\": \"\",\n    \"pixels\": 79524,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-05-14 07:04:21', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, 3, 2, '2024-05-14 10:20:47', '2024-05-14 07:04:29', 0),
(25, 'http://localhost/GreenLines/category-tour/tour-du-lich-song-nuoc/', '65:4309a33c51557e2748563bce7b2c9dea', 10, 'term', 'category-tour', NULL, NULL, '%%term_title%% %%page%% %%sep%% %%sitename%%', NULL, 'Tour du lịch sông nước', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 07:05:07', '2024-05-14 21:57:37', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL),
(26, 'http://localhost/GreenLines/category-tour/tour-can-tho/', '55:45184ef2e00b3cee352742e4028f62de', 11, 'term', 'category-tour', NULL, NULL, NULL, NULL, 'Tour Cần Thơ', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 07:05:56', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2024-05-14 10:21:17', '2024-05-14 07:10:46', NULL),
(27, 'http://localhost/GreenLines/category-tour/tour-mien-tay/', '56:ce4b4e8a669e36820f22e7ee9b91ca0a', 12, 'term', 'category-tour', NULL, NULL, NULL, NULL, 'Tour Miền Tây', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 07:06:03', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2024-05-14 10:21:05', '2024-05-14 07:18:13', NULL),
(28, 'http://localhost/GreenLines/tour/tour-con-son-can-tho-nua-ngay-nha-co-binh-thuy/', '80:17b9149baafba6206dc599167bff5f6b', 94, 'post', 'tour', 1, 0, NULL, NULL, 'Tour Cồn Sơn Cần Thơ nửa ngày – Nhà cổ Bình Thuỷ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-3.png', NULL, '95', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-3.png', '95', 'featured-image', '{\n    \"width\": 386,\n    \"height\": 282,\n    \"filesize\": 189119,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-3.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/Rectangle-1-3.png\",\n    \"size\": \"full\",\n    \"id\": 95,\n    \"alt\": \"\",\n    \"pixels\": 108852,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-05-14 07:07:52', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2024-05-14 10:21:17', '2024-05-14 07:10:46', 0),
(29, 'http://localhost/GreenLines/tour/tour-can-tho-1-ngay-gia-re-cho-noi-cai-rang-con-son/', '85:bd7af2f7c84cac381905351b90fb1815', 98, 'post', 'tour', 1, 0, NULL, NULL, 'Tour Cần Thơ 1 Ngày giá rẻ | Chợ nổi Cái Răng – Cồn Sơn', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-4.png', NULL, '99', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-4.png', '99', 'featured-image', '{\n    \"width\": 386,\n    \"height\": 282,\n    \"filesize\": 280088,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-4.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/Rectangle-1-4.png\",\n    \"size\": \"full\",\n    \"id\": 99,\n    \"alt\": \"\",\n    \"pixels\": 108852,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-05-14 07:12:24', '2024-05-14 21:57:41', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2024-05-14 10:21:13', '2024-05-14 07:12:32', 0),
(30, 'http://localhost/GreenLines/tour/tour-mien-tay-2-ngay-1-dem-sai-gon-can-tho/', '76:87cdf42767bbb5822df3fece46a51c39', 101, 'post', 'tour', 1, 0, NULL, NULL, 'Tour miền Tây 2 ngày 1 đêm | Sài Gòn – Cần Thơ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-5.png', NULL, '102', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-5.png', '102', 'featured-image', '{\n    \"width\": 386,\n    \"height\": 282,\n    \"filesize\": 178212,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-5.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/Rectangle-1-5.png\",\n    \"size\": \"full\",\n    \"id\": 102,\n    \"alt\": \"\",\n    \"pixels\": 108852,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-05-14 07:14:05', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2024-05-14 10:21:05', '2024-05-14 07:18:13', 0),
(31, 'http://localhost/GreenLines/category/tin-tuc-va-su-kien/', '56:4d983611481f82ba7af3037982189ca7', 13, 'term', 'category', NULL, NULL, '%%term_title%% %%page%% %%sep%% %%sitename%%', NULL, 'Tin tức và Sự kiện', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 07:21:12', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-14 07:38:24', '2024-05-14 04:12:27', NULL),
(37, 'http://localhost/GreenLines/category-food/am-thuc/', '50:2176e8cc626f5761ec831dc825cf8c80', 17, 'term', 'category-food', NULL, NULL, '%%term_title%% %%page%% %%sep%% %%sitename%%', NULL, 'Ẩm thực', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 07:29:28', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL),
(38, 'http://localhost/GreenLines/category-food/mien-trung/', '53:4ba7591a8650fc6c9091fa6938c63ab5', 18, 'term', 'category-food', NULL, NULL, NULL, NULL, 'Miền Trung', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 07:29:44', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2024-05-14 10:21:37', '2024-05-14 07:31:35', NULL),
(39, 'http://localhost/GreenLines/category-food/mien-tay/', '51:5027d3c059a0867b6d667d622806811d', 19, 'term', 'category-food', NULL, NULL, NULL, NULL, 'Miền Tây', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 07:29:54', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, NULL, NULL),
(40, 'http://localhost/GreenLines/category-food/mien-nam/', '51:067b35e327accea71d587bf8a79a470b', 20, 'term', 'category-food', NULL, NULL, NULL, NULL, 'Miền Nam', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-14 07:30:11', '2024-05-15 00:06:41', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2024-05-14 10:21:32', '2024-05-14 07:32:53', NULL),
(41, 'http://localhost/GreenLines/food/dac-san-da-nang-top-25-mon-ngon-nhat-dinh-phai-thu-2024/', '89:3225a4947049e74b8a7523687a5a805c', 110, 'post', 'food', 1, 0, NULL, NULL, 'Đặc sản Đà Nẵng – Top 25+ món ngon nhất định phải thử (2024)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-6.png', NULL, '105', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-6.png', '105', 'featured-image', '{\n    \"width\": 386,\n    \"height\": 282,\n    \"filesize\": 272947,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-6.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/Rectangle-1-6.png\",\n    \"size\": \"full\",\n    \"id\": 105,\n    \"alt\": \"\",\n    \"pixels\": 108852,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-05-14 07:31:35', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, 3, 2, '2024-05-14 10:21:37', '2024-05-14 07:31:35', 0),
(42, 'http://localhost/GreenLines/food/dac-san-ben-tre-top-11-dac-san-xu-dua-ngon-ngay-ngat-2024/', '91:b7bd444eef5f507bb1f724b5f11887bf', 112, 'post', 'food', 1, 0, NULL, NULL, 'Đặc sản Bến Tre – Top 11 Đặc sản xứ dừa ngon ngây ngất (2024)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-7.png', NULL, '113', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-7.png', '113', 'featured-image', '{\n    \"width\": 386,\n    \"height\": 282,\n    \"filesize\": 199843,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-7.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/Rectangle-1-7.png\",\n    \"size\": \"full\",\n    \"id\": 113,\n    \"alt\": \"\",\n    \"pixels\": 108852,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-05-14 07:32:53', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, 3, 2, '2024-05-14 10:21:32', '2024-05-14 07:32:53', 0),
(43, 'http://localhost/GreenLines/food/top-15-quan-pho-bo-ngon-o-can-tho-dam-da-huong-vi-mien-tay/', '92:817cff3a1339b48adc15ae440345a599', 115, 'post', 'food', 1, 0, NULL, NULL, 'Top 15 quán phở bò ngon ở Cần Thơ – Đậm đà hương vị miền Tây', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-8.png', NULL, '116', 'featured-image', NULL, NULL, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-8.png', '116', 'featured-image', '{\n    \"width\": 386,\n    \"height\": 282,\n    \"filesize\": 171756,\n    \"url\": \"http://localhost/GreenLines/wp-content/uploads/2024/05/Rectangle-1-8.png\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\GreenLines/wp-content/uploads/2024/05/Rectangle-1-8.png\",\n    \"size\": \"full\",\n    \"id\": 116,\n    \"alt\": \"\",\n    \"pixels\": 108852,\n    \"type\": \"image/png\"\n}', 0, NULL, NULL, '2024-05-14 07:34:11', '2024-05-15 00:06:40', 1, NULL, NULL, NULL, NULL, 0, 3, 2, '2024-05-14 10:21:27', '2024-05-14 07:34:11', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(3, 0, 0, 1),
(5, 0, 0, 1),
(11, 0, 0, 1),
(12, 11, 1, 1),
(13, 11, 1, 1),
(14, 11, 1, 1),
(15, 11, 2, 1),
(15, 12, 1, 1),
(16, 11, 1, 1),
(17, 11, 1, 1),
(18, 0, 0, 1),
(19, 18, 1, 1),
(20, 18, 1, 1),
(21, 18, 1, 1),
(22, 18, 1, 1),
(23, 18, 1, 1),
(24, 18, 1, 1),
(25, 0, 0, 1),
(26, 25, 1, 1),
(27, 25, 1, 1),
(28, 25, 1, 1),
(29, 25, 1, 1),
(30, 25, 1, 1),
(31, 0, 0, 1),
(37, 0, 0, 1),
(38, 37, 1, 1),
(39, 37, 1, 1),
(40, 37, 1, 1),
(41, 37, 1, 1),
(42, 37, 1, 1),
(43, 37, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_primary_term`
--

INSERT INTO `wp_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 75, 3, 'category-tickets', '2024-05-14 06:51:51', '2024-05-15 00:06:40', 1),
(2, 78, 2, 'category-tickets', '2024-05-14 06:53:29', '2024-05-15 00:06:40', 1),
(3, 80, 2, 'category-tickets', '2024-05-14 06:54:27', '2024-05-15 00:06:40', 1),
(4, 82, 6, 'category-combo', '2024-05-14 07:01:30', '2024-05-15 00:06:40', 1),
(5, 88, 6, 'category-combo', '2024-05-14 07:02:54', '2024-05-15 00:06:40', 1),
(6, 91, 6, 'category-combo', '2024-05-14 07:04:31', '2024-05-15 00:06:40', 1),
(7, 94, 10, 'category-tour', '2024-05-14 07:10:54', '2024-05-15 00:06:40', 1),
(8, 98, 10, 'category-tour', '2024-05-14 07:12:35', '2024-05-14 21:57:41', 1),
(9, 101, 10, 'category-tour', '2024-05-14 07:18:19', '2024-05-15 00:06:40', 1),
(11, 110, 17, 'category-food', '2024-05-14 07:31:38', '2024-05-15 00:06:40', 1),
(12, 112, 17, 'category-food', '2024-05-14 07:32:55', '2024-05-15 00:06:40', 1),
(13, 115, 17, 'category-food', '2024-05-14 07:34:16', '2024-05-15 00:06:40', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-4.png', 75, 76, 'image-in', 15, NULL, 446, 793, 632846, NULL, NULL),
(2, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-4.png', 78, 76, 'image-in', 16, NULL, 446, 793, 632846, NULL, NULL),
(3, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-4.png', 80, 76, 'image-in', 17, NULL, 446, 793, 632846, NULL, NULL),
(4, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png', 82, 84, 'image-in', 22, NULL, 445, 793, 641116, NULL, NULL),
(5, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png', 88, 84, 'image-in', 23, NULL, 445, 793, 641116, NULL, NULL),
(6, 'http://localhost/GreenLines/wp-content/uploads/2024/05/Sai-Gon-Vung-Tau-1280x721-1.png', 91, 84, 'image-in', 24, NULL, 445, 793, 641116, NULL, NULL),
(7, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-7.png', 94, 96, 'image-in', 28, NULL, 446, 793, 646057, NULL, NULL),
(8, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-7.png', 98, 96, 'image-in', 29, NULL, 446, 793, 646057, NULL, NULL),
(9, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-7.png', 101, 96, 'image-in', 30, NULL, 446, 793, 646057, NULL, NULL),
(12, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-9.png', 110, 106, 'image-in', 41, NULL, 443, 788, 468117, NULL, NULL),
(13, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-9-1.png', 110, 107, 'image-in', 41, NULL, 443, 788, 673856, NULL, NULL),
(14, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-9.png', 112, 106, 'image-in', 42, NULL, 443, 788, 468117, NULL, NULL),
(15, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-9-1.png', 112, 107, 'image-in', 42, NULL, 443, 788, 673856, NULL, NULL),
(16, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-9.png', 115, 106, 'image-in', 43, NULL, 443, 788, 468117, NULL, NULL),
(17, 'http://localhost/GreenLines/wp-content/uploads/2024/05/image-9-1.png', 115, 107, 'image-in', 43, NULL, 443, 788, 673856, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_trp_dictionary_en_us_vi`
--
ALTER TABLE `wp_trp_dictionary_en_us_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `index_name` (`original`(100)),
  ADD KEY `block_type` (`block_type`);
ALTER TABLE `wp_trp_dictionary_en_us_vi` ADD FULLTEXT KEY `original_fulltext` (`original`);

--
-- Chỉ mục cho bảng `wp_trp_gettext_en_us`
--
ALTER TABLE `wp_trp_gettext_en_us`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `index_name` (`original`(100));
ALTER TABLE `wp_trp_gettext_en_us` ADD FULLTEXT KEY `original_fulltext` (`original`);

--
-- Chỉ mục cho bảng `wp_trp_gettext_original_meta`
--
ALTER TABLE `wp_trp_gettext_original_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD UNIQUE KEY `meta_id` (`meta_id`),
  ADD KEY `gettext_index_original_id` (`original_id`),
  ADD KEY `gettext_meta_key` (`meta_key`);

--
-- Chỉ mục cho bảng `wp_trp_gettext_original_strings`
--
ALTER TABLE `wp_trp_gettext_original_strings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gettext_index_original` (`original`(100));

--
-- Chỉ mục cho bảng `wp_trp_gettext_vi`
--
ALTER TABLE `wp_trp_gettext_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `index_name` (`original`(100));
ALTER TABLE `wp_trp_gettext_vi` ADD FULLTEXT KEY `original_fulltext` (`original`);

--
-- Chỉ mục cho bảng `wp_trp_original_meta`
--
ALTER TABLE `wp_trp_original_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD UNIQUE KEY `meta_id` (`meta_id`),
  ADD KEY `index_original_id` (`original_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Chỉ mục cho bảng `wp_trp_original_strings`
--
ALTER TABLE `wp_trp_original_strings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_original` (`original`(100));

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Chỉ mục cho bảng `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Chỉ mục cho bảng `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Chỉ mục cho bảng `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=995;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `wp_trp_dictionary_en_us_vi`
--
ALTER TABLE `wp_trp_dictionary_en_us_vi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_trp_gettext_en_us`
--
ALTER TABLE `wp_trp_gettext_en_us`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_trp_gettext_original_meta`
--
ALTER TABLE `wp_trp_gettext_original_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_trp_gettext_original_strings`
--
ALTER TABLE `wp_trp_gettext_original_strings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_trp_gettext_vi`
--
ALTER TABLE `wp_trp_gettext_vi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_trp_original_meta`
--
ALTER TABLE `wp_trp_original_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_trp_original_strings`
--
ALTER TABLE `wp_trp_original_strings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
