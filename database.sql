-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2022 at 10:55 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `textmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `description`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '<div style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(97, 94, 88); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 15px;\"><b>Nabik Bazar </b>is an online Floating Sea Market available in&nbsp; Chattogram . We believe time is valuable to Chittagong Port Authorities And our fellow Nabik And for there Ship Owners As well,&nbsp; And that they should not have to waste hours&nbsp; in traffic, brave harsh weather and wait in line just to buy necessities like eggs!&nbsp; This is why we deliver every day needs to our customersâ€™ Ship To Ships In Chattogram<br style=\"-webkit-tap-highlight-color: transparent;\"></div><div style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(97, 94, 88); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 15px;\"><b>Nabik Bazar</b>&nbsp;is a work in progress, and we hope to get better over time. We are firm believers in using technology and education to improve Bangladesh, and we will continue to invest all our effort in pushing the boundaries of technology.</div><div style=\"-webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; color: rgb(97, 94, 88); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 15px;\">If you have ideas on how we can improve, we would love to hear from you. Please do email us at&nbsp;<a href=\"mailto:founders@chaldal.com\" style=\"-webkit-tap-highlight-color: transparent; color: inherit;\"><span style=\"-webkit-tap-highlight-color: transparent; font-weight: 700;\">info@nabiknazar.com</span></a>.</div><div><br></div>', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `adminmainmenu`
--

CREATE TABLE `adminmainmenu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Link_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNo` int(11) NOT NULL,
  `routeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminmainmenu`
--

INSERT INTO `adminmainmenu` (`id`, `Link_Name`, `serialNo`, `routeName`, `created_at`, `updated_at`) VALUES
(1, 'Admin Setup', 1, '0', '2020-09-23 02:12:13', '2020-09-23 02:12:13'),
(3, 'Website Setting', 2, '0', '2020-09-23 02:28:00', '2020-09-23 02:28:00'),
(4, 'Product Information', 3, '0', '2020-09-23 02:28:31', '2020-09-23 02:28:31'),
(8, 'Guest Informatin', 6, '0', '2020-09-23 22:54:35', '2020-09-23 22:54:35'),
(10, 'Order Information', 9, '0', '2020-09-23 22:56:52', '2020-09-23 22:56:52'),
(15, 'Other Setting', 11, '0', NULL, NULL),
(17, 'Product Report', 12, '0', NULL, NULL),
(21, 'SEO Setting', 13, '0', NULL, NULL),
(22, 'Page Setting', 14, '0', NULL, NULL),
(23, 'Employee Setting', 15, '0', NULL, NULL),
(25, 'Coupon', 16, '0', NULL, NULL),
(26, 'Payment Method', 17, '0', NULL, NULL),
(27, 'Stock', 18, '0', NULL, NULL),
(28, 'Delivery Charge Setup', 19, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `adminsubmenu`
--

CREATE TABLE `adminsubmenu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mainmenuId` bigint(20) UNSIGNED NOT NULL,
  `submenuname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialno` int(11) NOT NULL,
  `routeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adminsubmenu`
--

INSERT INTO `adminsubmenu` (`id`, `mainmenuId`, `submenuname`, `serialno`, `routeName`, `created_at`, `updated_at`) VALUES
(1, 1, 'Create Admin', 1, 'create-admin', '2020-09-23 02:13:55', '2020-09-23 02:13:55'),
(2, 1, 'View Admin', 2, 'view-admin', '2020-09-23 02:14:12', '2020-09-23 02:14:12'),
(4, 4, 'Item Add', 1, 'item-add/create', '2020-09-23 05:03:27', '2020-09-23 05:03:27'),
(5, 3, 'Contact Us', 2, 'admin/contact_us', '2020-09-23 22:58:58', '2020-09-23 22:59:49'),
(6, 3, 'Privacy  & Policy', 3, 'admin/privacy&policy', '2020-09-23 23:01:20', '2020-09-23 23:01:20'),
(8, 3, 'How to Buy', 11, 'howtobuy', '2020-09-23 23:03:58', '2020-09-23 23:03:58'),
(9, 3, 'Slider', 15, 'slider/create', '2020-09-23 23:08:21', '2020-09-23 23:08:21'),
(12, 4, 'Category Add', 2, 'category-add/create', '2020-09-23 23:14:47', '2020-09-23 23:14:47'),
(13, 4, 'Product Add', 6, 'product-add/create', '2020-09-23 23:15:12', '2020-09-23 23:15:12'),
(14, 6, 'Seller Register', 1, 'sellerlist', '2020-09-23 23:27:44', '2020-09-23 23:27:44'),
(18, 8, 'Guest Register', 1, 'GuestList', '2020-09-23 23:29:40', '2020-09-23 23:29:40'),
(19, 9, 'Coupon Add', 1, 'CouponAdd/create', '2020-09-23 23:30:12', '2020-09-23 23:30:12'),
(20, 10, 'Pending Order', 2, 'pendingOrder', '2020-09-23 23:30:40', '2020-09-23 23:30:40'),
(21, 10, 'Process Order', 2, 'ProcessOrder', '2020-09-23 23:31:22', '2020-09-23 23:31:22'),
(22, 10, 'On the Way Order', 4, 'onthewayOrder', '2020-09-23 23:31:56', '2020-09-23 23:31:56'),
(23, 10, 'Complete Order', 5, 'CompleteOrder', '2020-09-23 23:34:01', '2020-09-23 23:34:01'),
(24, 10, 'Reject Order', 6, 'RejectOrder', '2020-09-23 23:34:17', '2020-09-23 23:34:17'),
(26, 4, 'Brand Add', 4, 'brand-add/create', NULL, NULL),
(53, 11, 'Delivery Charge Add', 1, 'deliverychargeadd/create', NULL, NULL),
(58, 12, 'Offer Add', 1, 'offer-setup/create', NULL, NULL),
(59, 11, 'Shipping Class', 2, 'shippingclasscreate', NULL, NULL),
(60, 11, 'District Setup', 3, 'district-add/create', NULL, NULL),
(61, 11, 'Zone Add', 4, 'deliveryzone', NULL, NULL),
(63, 13, 'Add Product Stock', 1, 'productstock', NULL, NULL),
(64, 13, 'View Product Stock', 2, 'viewproductstock', NULL, NULL),
(65, 13, 'Stock Report', 3, 'stockreport', NULL, NULL),
(66, 4, 'Measurement', 9, 'Measurementadd', NULL, NULL),
(67, 14, 'Announcement info', 1, 'announcementadd', NULL, NULL),
(68, 14, 'Update News info', 2, 'newsadd', NULL, NULL),
(69, 15, 'Setting', 1, 'setting', NULL, NULL),
(70, 11, 'Thana Setup', 4, 'thana-add/create', NULL, NULL),
(71, 3, 'Offer Banner', 16, 'Explore/create', NULL, NULL),
(72, 4, 'View All Product', 6, 'product-add', NULL, NULL),
(73, 10, 'Shipping Order', 3, 'Shipping-Order', NULL, NULL),
(78, 10, 'Search Order List', 7, 'date-to-date-order', NULL, NULL),
(81, 10, 'All Order info', 2, 'totalOrder', NULL, NULL),
(82, 10, 'Refund Order', 7, 'Refound-Order', NULL, NULL),
(84, 12, 'Offer Banner', 2, 'offer-banner-setup', NULL, NULL),
(85, 12, 'Discount Mela Add', 3, 'offer-setup-discount-mela', NULL, NULL),
(86, 12, 'Discount Mela View', 4, 'offer-setup-discount-mela-view', NULL, NULL),
(87, 12, 'Life Style Mela Add', 5, 'offer-setup-life-style', NULL, NULL),
(88, 12, 'Life Style Mela View', 6, 'offer-setup-life-style-view', NULL, NULL),
(89, 12, 'Gadget Mela Add', 7, 'offer-setup-gadget-mela', NULL, NULL),
(90, 12, 'Gadget Mela View', 8, 'offer-setup-gadget-mela-view', NULL, NULL),
(91, 12, 'Deshi Mela Add', 9, 'offer-setup-deshi-mela', NULL, NULL),
(92, 12, 'Deshi Mela View', 10, 'offer-setup-deshi-mela-view', NULL, NULL),
(93, 12, 'Offer Time Setup', 1, 'set-up-offer-control', NULL, NULL),
(94, 10, 'All Order Status', 10, 'allorderstatus', NULL, NULL),
(95, 16, 'Date to date order report', 1, 'date-to-date-order-report', NULL, NULL),
(96, 17, 'All products report', 1, 'all-product-report', NULL, NULL),
(97, 18, 'Holyday Input', 17, 'add-holyday', NULL, NULL),
(98, 19, 'Order Report', 18, 'amarpay', NULL, NULL),
(100, 12, 'Wholesales Add', 12, 'offer-setup-whole-sale', NULL, NULL),
(101, 12, 'Wholesales View', 13, 'offer-setup-wholesale-view', NULL, NULL),
(103, 21, 'Website SEO', 17, 'seosetting', NULL, NULL),
(104, 22, 'Manage Page Category', 19, 'pagecategory', NULL, NULL),
(105, 22, 'Add Page Category', 18, 'pagecategory/create', NULL, NULL),
(106, 22, 'Add Page', 20, 'page/create', NULL, NULL),
(107, 22, 'Manage Page', 21, 'page', NULL, NULL),
(108, 23, 'Add Employee', 22, 'employee/create', NULL, NULL),
(109, 23, 'Manage Employee', 23, 'employee', NULL, NULL),
(111, 25, 'Coupon Add', 24, 'CouponAdd/create', NULL, NULL),
(112, 26, 'Add Method', 25, 'paymentmethod/create', NULL, NULL),
(113, 26, 'Manage Method', 26, 'paymentmethod', NULL, NULL),
(114, 27, 'Add Stock', 27, 'productstock', NULL, NULL),
(115, 27, 'View Stock', 28, 'viewproductstock', NULL, NULL),
(116, 27, 'Stock Report', 29, 'stockreport', NULL, NULL),
(117, 4, 'Add Color', 30, 'color-info', NULL, NULL),
(118, 4, 'Add Size', 31, 'size-info', NULL, NULL),
(119, 4, 'Flash Deals', 32, 'flashdeal', NULL, NULL),
(120, 28, 'Zone', 33, 'deliveryzone', NULL, NULL),
(121, 28, 'Delivery Charge Add', 34, 'deliverychargeadd/create', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `career_infos`
--

CREATE TABLE `career_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `career_infos`
--

INSERT INTO `career_infos` (`id`, `description`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"margin-bottom: 20px; color: rgb(33, 37, 41);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be</p><p style=\"margin-top: 20px; margin-bottom: 20px; color: rgb(33, 37, 41);\">distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,</p><p style=\"margin-top: 20px; margin-bottom: 20px; color: rgb(33, 37, 41);\"><br></p><p style=\"margin-top: 20px; margin-bottom: 20px; color: rgb(33, 37, 41);\">and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cod_us`
--

CREATE TABLE `cod_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cod_us`
--

INSERT INTO `cod_us` (`id`, `description`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '<p></p><div class=\"product-ads-content\" style=\"margin: 0px; padding: 0px 15px 20px; border: 1px solid rgb(222, 222, 222); border-radius: 4px; background: rgba(0, 146, 69, 0.03); color: rgb(51, 51, 51); letter-spacing: 0.7px;\"><ul class=\"items\" style=\"font-family: poppins, sans-serif, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; margin-bottom: 0px; padding: 0px; list-style: none none; border-right: none;\"><li style=\"margin: 0px; padding: 5px 0px; list-style: none;\"><span class=\"fa fa-exchange\" style=\"margin: 0px; padding: 0px; font-size: 20px; position: relative; left: 0px; color: rgb(255, 71, 71); top: 30px;\">&nbsp;</span><h4 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 26px; font-weight: 700; line-height: 30px; font-size: 16px;\">3 Days Return</h4>If goods have problems</li><li style=\"margin: 0px; padding: 5px 0px; list-style: none;\"><span class=\"fa fa-thumbs-o-up\" style=\"margin: 0px; padding: 0px; font-size: 20px; position: relative; left: 0px; color: rgb(255, 71, 71); top: 30px;\">&nbsp;</span><h4 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 26px; font-weight: 700; line-height: 30px; font-size: 16px;\">Authentic Product</h4>100% authentic products</li><li style=\"margin: 0px; padding: 5px 0px; list-style: none;\"><span class=\"fa fa-lock\" style=\"margin: 0px; padding: 0px; font-size: 20px; position: relative; left: 0px; color: rgb(255, 71, 71); top: 30px;\">&nbsp;</span><h4 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 26px; font-weight: 700; line-height: 30px; font-size: 16px;\">Secure Payment</h4>100% secure payment</li><li style=\"margin: 0px; padding: 5px 0px; list-style: none;\"><span class=\"fa fa-headphones\" style=\"margin: 0px; padding: 0px; font-size: 20px; position: relative; left: 0px; color: rgb(255, 71, 71); top: 30px;\">&nbsp;</span><h4 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 26px; font-weight: 700; line-height: 30px; font-size: 16px;\">Dedicated support</h4>From 10 am-10 pm Sat-Thu</li></ul></div><div class=\"product-ads-banner\" style=\"margin: 0px; padding: 0px; float: left; color: rgb(51, 51, 51); font-family: poppins, sans-serif, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.7px;\"><br></div><div><br></div><div><br></div>', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `description`, `map`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '<font face=\"Titillium web, sans-serif\"><span style=\"font-size: 12px;\">Contact</span></font>', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_policy`
--

CREATE TABLE `cookie_policy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cookie_policy`
--

INSERT INTO `cookie_policy` (`id`, `description`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '<strong><span style=\"color: #333333; font-family: \'Verdana\',\'sans-serif\'; font-size: 10.0pt; mso-bidi-font-family: Arial; mso-bidi-language: BN-BD; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 18.0pt;\"></span></strong>\r\n<div class=\"MsoNormal\" style=\"background: white; margin-bottom: 0.0001pt;\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be</p><p>distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,</p><p><br style=\"color: rgb(0, 0, 0);\"></p><p>and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div>', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `min_price` double NOT NULL,
  `discout_per` double NOT NULL,
  `discout_price` double DEFAULT NULL,
  `end_date` date NOT NULL,
  `apply_coupon` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `use` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `start_date`, `min_price`, `discout_per`, `discout_price`, `end_date`, `apply_coupon`, `status`, `use`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'd100Taka', '2022-03-06', 1000, 10, 100, '2022-03-22', 2, 1, 0, 0, '2022-03-06 08:55:04', '2022-03-06 08:56:27'),
(81, 'd60tk', '2021-09-01', 100, 10, 0, '2022-03-31', 100000, 1, 0, 1, '2021-09-01 17:08:37', '2022-03-06 10:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `createadmin`
--

CREATE TABLE `createadmin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(5) NOT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1-main,2-sub',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `createadmin`
--

INSERT INTO `createadmin` (`id`, `name`, `email`, `email_verified_at`, `phone`, `address`, `password`, `image`, `status`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nabik Bazar', 'admin@nabikbazar.com', NULL, '01619222777', 'Chattogram', '$2y$10$jVnUSfmiYmrIGeB8WSgKUui7qwvJRde6wEVz7QBMZ78jm3CO0RHcm', '1445430825.jfif', 1, 1, NULL, '2020-09-21 23:40:39', '2021-11-18 01:35:04'),
(2, 'Admin', 'admin@gmail.com', NULL, '0170000000', 'Narshingdi, Dhaka 1650', '$2y$10$4UElOIwGy.NLc/KPQtdk9.n81gsCx6p5JTFJMlO22zB4ry3CkzPPK', '286507394.webp', 1, 1, NULL, '2022-02-28 09:30:43', '2022-02-28 09:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `current_order_infos`
--

CREATE TABLE `current_order_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `thana_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_messages`
--

CREATE TABLE `customer_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `charge` double(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`id`, `district_id`, `shipping_id`, `zone_id`, `charge`, `created_at`, `updated_at`) VALUES
(46, NULL, 0, 1, 60.00, '2022-01-25 10:51:23', '2022-01-25 10:51:23'),
(47, NULL, 0, 2, 120.00, '2022-01-25 10:51:28', '2022-01-25 10:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_infos`
--

CREATE TABLE `delivery_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vessel_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `thana_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_infos`
--

INSERT INTO `delivery_infos` (`id`, `first_name`, `last_name`, `email`, `vessel_name`, `rank`, `address`, `phone`, `country`, `district_id`, `zone_id`, `thana_id`, `session_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 2, 0, 'GlxcI7UFbkxHtvFJ96qQYpZ5DqriHJsGeDStJBCC', NULL, '2022-02-28 02:19:24', '2022-02-28 02:19:24'),
(2, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'EYaIBXkHk5GhCVMoh2I1xpvwYnE58GLLrCKy3tFI', NULL, '2022-02-28 02:20:08', '2022-02-28 02:20:08'),
(3, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 2, 0, '8mcVvPjnW5Yrdpq9gvzbJoOJp18lM084xeybm56g', NULL, '2022-03-06 01:18:46', '2022-03-06 01:18:46'),
(4, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 2, 0, 'r5RdiG9IK87w6KRtgkzllJJWF3esFJ95OQa8VMEA', NULL, '2022-03-06 01:23:17', '2022-03-06 01:23:17'),
(5, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'mLIpIppcsPRki5YCkzw0NekLMSe8HmBBHTGlls9L', NULL, '2022-03-06 01:28:46', '2022-03-06 01:28:46'),
(6, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'dFm7ZNJYqb7W5aLrPVF9Sw5YywkKrzAZl7M1y0a5', NULL, '2022-03-06 01:30:43', '2022-03-06 01:30:43'),
(7, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'ZGMXYYaq4GI9Ct1oLBpYIFBzU8f4jr6wnqOnr58m', NULL, '2022-03-06 01:34:09', '2022-03-06 01:34:09'),
(8, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, '892BnAOVSHd8YsxSQCyP1PY5T6lKUMEjh4VK36tg', NULL, '2022-03-06 01:35:33', '2022-03-06 01:35:33'),
(9, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'zv59ud4SWTnxSc2fGKJZ6smkkYUM0XJr7JIlgNXy', NULL, '2022-03-06 01:39:40', '2022-03-06 01:39:40'),
(10, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'iei8XqrNTiEjmv6IDfH4SnH26MWSdDkTzcb82Dji', NULL, '2022-03-06 01:44:32', '2022-03-06 01:44:32'),
(11, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'q0iV8ulxTu1ANyvckt9xEab9l1Oi4BJmEnYRm0be', NULL, '2022-03-06 01:45:48', '2022-03-06 01:45:48'),
(12, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 2, 0, 'cH95PN3HnvcgtX8awP7CpICphweHn6f0e40WUUid', NULL, '2022-03-06 01:55:00', '2022-03-06 01:55:00'),
(13, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'q2MAKQdlERlnezC2mrucVf3STC2LNR6o8378bYkv', NULL, '2022-03-06 02:51:49', '2022-03-06 02:51:49'),
(14, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 2, 0, '9CDegv2NIlJdQyzAwNBcvNHsiF0fFDuQxSpefrjK', NULL, '2022-03-06 03:00:28', '2022-03-06 03:00:28'),
(15, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'dHlIqUShDhT0HZTuHLALbOrsUkulZOpsDMWLy2t2', NULL, '2022-03-06 03:30:58', '2022-03-06 03:30:58'),
(16, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'PuZOF2hBOG47gTh25p5jdYerwFpaLvFM5kC2L8PP', NULL, '2022-03-06 03:40:29', '2022-03-06 03:40:29'),
(17, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, '2KTK547KzQCTvZN2H12IdYTLdWOBMZ4NulXyrXFU', NULL, '2022-03-06 03:49:01', '2022-03-06 03:49:01'),
(18, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'mDjrQ7ffhUMgkcbh8nS0KcO6zvysVoLI8gyYgmwM', NULL, '2022-03-06 03:57:42', '2022-03-06 03:57:42'),
(19, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'sr6WVDwAXHlpGWlZGsbipMPyicYKpjL9LpRvcCLI', NULL, '2022-03-06 04:01:07', '2022-03-06 04:01:07'),
(20, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'qj5nebp8z7T0xU6nLsw7CWAQOlqCBHsoN7me5mbQ', NULL, '2022-03-06 04:03:47', '2022-03-06 04:03:47'),
(21, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'jl3TqYFQc3NsYYvVXFLNY50jvpUlREZVIDdOly5j', NULL, '2022-03-06 04:05:17', '2022-03-06 04:05:17'),
(22, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'eXixtzuq8gDFu20cM0EigGMj9ICsh7sgUgMrhsQ5', NULL, '2022-03-06 04:06:35', '2022-03-06 04:06:35'),
(23, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, '6vSoTtNYe2znC7Cxayg23k7emZIZepWAgeSipaap', NULL, '2022-03-06 04:07:37', '2022-03-06 04:07:37'),
(24, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'CI6VS74tlMT8GW3dlReZg0K3heyzJWsw3t93FNxB', NULL, '2022-03-06 04:09:45', '2022-03-06 04:09:45'),
(25, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'yP3sHAo37RQs5yJbuHwpL8iILcvUBRaTwLgICcKM', NULL, '2022-03-06 04:10:17', '2022-03-06 04:10:17'),
(26, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'ERzodpU6GnObNfHu6ewEsFJxDvKJj0jtFPR8tgCq', NULL, '2022-03-06 08:50:36', '2022-03-06 08:50:36'),
(27, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'XFoGZWbB9HeKlmSVUErvzTWMa8TLQ0vpPpXrJFm5', NULL, '2022-03-06 08:56:52', '2022-03-06 08:56:52'),
(28, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'zxDZmwyTJzbnTNAXEXBMWxjl81iQnR2RMokXowIW', NULL, '2022-03-06 08:57:13', '2022-03-06 08:57:13'),
(29, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'nhgaVlVs4BOs0hgrtqZ5fNgLJJT0MUJEYWBdY2O8', NULL, '2022-03-06 08:59:03', '2022-03-06 08:59:03'),
(30, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, '4evfaZZ5K7Bdyeqeh7OA5jOS5dWXLimcWPsKl5et', NULL, '2022-03-06 08:59:42', '2022-03-06 08:59:42'),
(31, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 2, 0, 'oH8Z2Z4SxRqPVrQTPc3Im3ezZ8OzWncmN8faHwgg', NULL, '2022-03-06 09:00:27', '2022-03-06 09:00:27'),
(32, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'AFeYTKy857IEDtas4UV1bHbfX0oCbimx2rTMtlr1', NULL, '2022-03-06 09:00:58', '2022-03-06 09:00:58'),
(33, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', NULL, '2022-03-06 09:04:25', '2022-03-06 09:04:25'),
(34, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', NULL, '2022-03-06 09:04:30', '2022-03-06 09:04:30'),
(35, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', NULL, '2022-03-06 09:05:08', '2022-03-06 09:05:08'),
(36, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', NULL, '2022-03-06 09:07:28', '2022-03-06 09:07:28'),
(37, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', NULL, '2022-03-06 09:07:36', '2022-03-06 09:07:36'),
(38, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', NULL, '2022-03-06 09:07:49', '2022-03-06 09:07:49'),
(39, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', NULL, '2022-03-06 09:08:08', '2022-03-06 09:08:08'),
(40, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', NULL, '2022-03-06 09:08:34', '2022-03-06 09:08:34'),
(41, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', NULL, '2022-03-06 09:29:47', '2022-03-06 09:29:47'),
(42, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'FukImFUIo7JPXpRAch76990nPyCBAu1OKPwpZXB4', NULL, '2022-03-06 10:09:36', '2022-03-06 10:09:36'),
(43, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'n1nygkFTU9JfPjD69mzYB9A6yWJ3ESG3sOV8wD4s', NULL, '2022-03-06 10:11:21', '2022-03-06 10:11:21'),
(44, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'J7jNVPMI8v34OgmhGGQasN97z6OGCCXZ5nZnonie', NULL, '2022-03-06 23:21:37', '2022-03-06 23:21:37'),
(45, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'a8JvqUsSrB4T7NzX3QS7W6tsH6osBimRZ1E8KZVH', NULL, '2022-03-07 00:18:42', '2022-03-07 00:18:42'),
(46, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'uMusDHhERPRNj7R2py0l8B0GNAR8IYBq4zm9BDxV', NULL, '2022-03-07 01:17:48', '2022-03-07 01:17:48'),
(47, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, '0T7kZ5CBWLSXUMAm4dhtvAXYiCJtknvKa0VXfcde', NULL, '2022-03-07 01:27:49', '2022-03-07 01:27:49'),
(48, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'uHLIg2SZAxGGupk6TzKlYFNfoGIF1e4c2h2bgjcV', NULL, '2022-03-07 01:37:20', '2022-03-07 01:37:20'),
(49, 'Didarul Islam Akand', NULL, NULL, NULL, NULL, 'sdfdsfsdfsdf sdfsdfsdf', '01777919189', NULL, NULL, 1, 0, 'TfJncNH1LVrFFSetMiu7R2mqe6zKsvUKS4T6BMvB', NULL, '2022-03-07 01:39:40', '2022-03-07 01:39:40'),
(50, 'Didarul Islam', NULL, NULL, NULL, NULL, 'Narshingdi, Dhaka 1650', '01777919189', NULL, NULL, 1, 0, 'VphMVNZHjdnvUKJ9M7qUmmkEpuUqi4I26bXvCoCT', NULL, '2022-03-07 01:48:25', '2022-03-07 01:48:25'),
(51, 'Didarul Islam', NULL, NULL, NULL, NULL, 'Narshingdi, Dhaka 1650', '01777919189', NULL, NULL, 1, 0, '5IdfjWVrbcIOTnNZvb7RuoLEDnj1IP86OATIp7tW', NULL, '2022-03-07 01:51:53', '2022-03-07 01:51:53'),
(52, 'Didarul Islam', NULL, NULL, NULL, NULL, 'uuu', '01777919189', NULL, NULL, 1, 0, 'pGBa2uqw4kI1hFR29pu0y2F0iWwdLbL0II9Qn3lW', NULL, '2022-03-28 00:33:30', '2022-03-28 00:33:30'),
(53, 'Didarul Islam', NULL, NULL, NULL, NULL, 'fdgdfg', '01777919189', NULL, NULL, 2, 0, 'MHNHL7pnP9F3jbpiropRdz3lKzDr1S3srTqpvN8W', NULL, '2022-03-28 00:51:47', '2022-03-28 00:51:47'),
(54, 'Didarul Islam', NULL, NULL, NULL, NULL, 'nhgg', '01777919189', NULL, NULL, 1, 0, 'kyZalGLHrFF7ypBDC7g3YTGNEmzjEoF4WQ4Tby6S', 'Notes', '2022-04-13 03:17:44', '2022-04-13 03:17:44'),
(55, 'Didarul Islam', NULL, NULL, NULL, NULL, 'fdghfgh', '01777919189', NULL, NULL, 1, 0, 'Jpde00zpR1vhIekRUZlwAPPRXfRnRxPm5WRpOAvH', 'fghfgh', '2022-04-13 04:25:20', '2022-04-13 04:25:20'),
(56, 'Didarul Islam', NULL, NULL, NULL, NULL, 'dfsfsf', '01777919189', NULL, NULL, 1, 0, 'GElmttNgcFasUHygGK01rSPBuQdPdU3oDBGYvNtO', 'NOtes', '2022-04-24 23:27:00', '2022-04-24 23:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `discount_banner`
--

CREATE TABLE `discount_banner` (
  `id` int(11) NOT NULL,
  `discount_mela` varchar(250) DEFAULT NULL,
  `life_style` varchar(250) DEFAULT NULL,
  `gadget_mela` varchar(250) DEFAULT NULL,
  `deshi_mela` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount_banner`
--

INSERT INTO `discount_banner` (`id`, `discount_mela`, `life_style`, `gadget_mela`, `deshi_mela`) VALUES
(1, 'discount_mela.gif', 'life_style.gif', 'gadget_mela.gif', 'deshi_mela.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchange_requests`
--

CREATE TABLE `exchange_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_product_style_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_product_style_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exchange_requests`
--

INSERT INTO `exchange_requests` (`id`, `name`, `phone_number`, `email`, `order_number`, `reason`, `return_product_style_number`, `return_product_size`, `return_product_color`, `exchange_product_style_number`, `exchange_product_size`, `exchange_product_color`, `message`, `status`, `created_at`, `updated_at`) VALUES
(2, 'vokiz@mailinator.com', '598', 'heqeso@mailinator.com', 'syhyhigy@mailinator.com', 'cerykejo@mailinator.com', 'muzuh@mailinator.com', 'celixicam@mailinator.com', '', 'hasuzope@mailinator.com', 'hapewuwefi@mailinator.com', 'xowiv@mailinator.com', 'Non iusto quis quaer', 1, '2022-02-28 00:05:07', '2022-02-28 00:52:28'),
(3, 'kedonylis@mailinator.com', '468', 'hikuqet@mailinator.com', 'xuqyzazuw@mailinator.com', 'wejofix@mailinator.com', 'nosoreko@mailinator.com', 'falyvy@mailinator.com', 'syhufus@mailinator.com', 'soqam@mailinator.com', 'kawafa@mailinator.com', 'tubuheke@mailinator.com', 'Magni numquam unde e', 0, '2022-02-28 00:54:19', '2022-02-28 00:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `explore_banners`
--

CREATE TABLE `explore_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `explore_banners`
--

INSERT INTO `explore_banners` (`id`, `sl`, `url`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(61, 1, '#', '61.jpg', 1, '2021-10-25 09:32:03', '2021-10-25 09:32:03'),
(62, 2, '#', '62.jpg', 1, '2021-10-25 09:32:09', '2021-10-25 09:32:09'),
(63, 3, '#', '63.jpg', 1, '2021-10-25 09:32:15', '2021-10-25 09:32:15'),
(64, 4, '#', '64.jpg', 1, '2021-10-25 09:32:20', '2021-10-25 09:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_infos`
--

CREATE TABLE `faq_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_infos`
--

INSERT INTO `faq_infos` (`id`, `description`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '<div id=\"accordion\">\r\n\r\n  <div class=\"card p-4\">\r\n    <div class=\"card-header\" id=\"headingOne1\">\r\n      <h5 class=\"mb-0\">\r\n        <button class=\"btn btn-link d-flex align-items-center justify-content-between collapsed\" data-toggle=\"collapse\" data-target=\"#collapseOne1\" aria-expanded=\"false\" aria-controls=\"collapseOne1\" style=\"width:100%\"><font color=\"#636363\">\r\n          Who Are We ?\r\n</font><span class=\"fa-stack fa-sm\">\r\n                <font color=\"#636363\"><i class=\"fa fa-plus\"></i>\r\n               </font></span>\r\n        </button>\r\n      </h5>\r\n    </div>\r\n\r\n    <div id=\"collapseOne1\" class=\"collapse\" aria-labelledby=\"headingOne1\" data-parent=\"#accordion\">\r\n      <div class=\"card-body\">\r\n        <p>Buynfeel, is your trusted online store or eCommerce affiliate partner. Here you can buy authentic products through online secured payment or cash on delivery. Client satisfaction is our optimum goal, and maintaining quality is our prime concern.\r\nBuynfeel is an ecommerce platform where you can get necessary, trendy or various likable products at a great deal from your favourite brands. To meet the needs of our customers, we provide exceptional items. We\'re committed to giving your enjoyment the utmost attention. We provide exclusive brands that are both authentic and inexpensive.</p>\r\n<h4>How we make your purchase enjoyable</h4>\r\n<p>In Bangladesh, e-commerce is changing the way we all purchase. Why would you want to go from store to store looking for the latest phone when you can find it with a single click on the Internet? But, it\'s not just cell phones. Buynfeel has everything you could want, from the latest electronics like laptops, tablets, smartphones, and mobile accessories to in-style fashion mainstays like shoes, clothes, and accessories. We have everything you need, from modern furniture like sofa sets, dining tables, and wardrobes to the time-saving kitchen and small appliances like washing machines, TVs, air conditioners, mixer grinder juicers, and other time-saving kitchen and small appliances; from home furnishings like cushion covers, mattresses, and bedsheets to toys and musical instruments. You may be sure to find everything you\'re looking for here. Buynfeel is the most acceptable option for folks who work irregular hours. Shop in your pyjamas, late at night or early in the morning. This e-commerce site is never down.</p>\r\n<p>Furthermore, our pricing is attractive, thanks to our year-round special offers and events. We\'re confident you\'ll find yourself picking up more than you expected. If you\'re asking why you should shop on Buynfeel when you have so many other options, visit our website to find all the answers.</p>\r\n\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n\r\n\r\n  <div class=\"card p-4\">\r\n    <div class=\"card-header\" id=\"headingOne2\">\r\n      <h5 class=\"mb-0\">\r\n        <button class=\"btn btn-link d-flex align-items-center justify-content-between collapsed\" data-toggle=\"collapse\" data-target=\"#collapseOne2\" aria-expanded=\"false\" aria-controls=\"collapseOne2\" style=\"width:100%\"><font color=\"#636363\">\r\n          Collapsible Group Item #1\r\n</font><span class=\"fa-stack fa-sm\">\r\n                <font color=\"#636363\"><i class=\"fa fa-plus\"></i>\r\n               </font></span>\r\n        </button>\r\n      </h5>\r\n    </div>\r\n\r\n    <div id=\"collapseOne2\" class=\"collapse\" aria-labelledby=\"headingOne2\" data-parent=\"#accordion\">\r\n      <div class=\"card-body\">\r\n        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n\r\n\r\n\r\n<div class=\"card p-4\">\r\n    <div class=\"card-header\" id=\"headingOne3\">\r\n      <h5 class=\"mb-0\">\r\n        <button class=\"btn btn-link d-flex align-items-center justify-content-between collapsed\" data-toggle=\"collapse\" data-target=\"#collapseOne3\" aria-expanded=\"false\" aria-controls=\"collapseOne3\" style=\"width:100%\"><font color=\"#636363\">\r\n          Collapsible Group Item #1\r\n</font><span class=\"fa-stack fa-sm\">\r\n                <font color=\"#636363\"><i class=\"fa fa-plus\"></i>\r\n               </font></span>\r\n        </button>\r\n      </h5>\r\n    </div>\r\n\r\n    <div id=\"collapseOne3\" class=\"collapse\" aria-labelledby=\"headingOne3\" data-parent=\"#accordion\">\r\n      <div class=\"card-body\">\r\n        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n\r\n\r\n\r\n<div class=\"card p-4\">\r\n    <div class=\"card-header\" id=\"headingOne4\">\r\n      <h5 class=\"mb-0\">\r\n        <button class=\"btn btn-link d-flex align-items-center justify-content-between collapsed\" data-toggle=\"collapse\" data-target=\"#collapseOne4\" aria-expanded=\"false\" aria-controls=\"collapseOne4\" style=\"width:100%\"><font color=\"#636363\">\r\n          Collapsible Group Item #1\r\n</font><span class=\"fa-stack fa-sm\">\r\n                <font color=\"#636363\"><i class=\"fa fa-plus\"></i>\r\n               </font></span>\r\n        </button>\r\n      </h5>\r\n    </div>\r\n\r\n    <div id=\"collapseOne4\" class=\"collapse\" aria-labelledby=\"headingOne4\" data-parent=\"#accordion\">\r\n      <div class=\"card-body\">\r\n        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n\r\n\r\n\r\n<div class=\"card p-4\">\r\n    <div class=\"card-header\" id=\"headingOne5\">\r\n      <h5 class=\"mb-0\">\r\n        <button class=\"btn btn-link d-flex align-items-center justify-content-between collapsed\" data-toggle=\"collapse\" data-target=\"#collapseOne5\" aria-expanded=\"false\" aria-controls=\"collapseOne5\" style=\"width:100%\"><font color=\"#636363\">\r\n          Collapsible Group Item #1\r\n</font><span class=\"fa-stack fa-sm\">\r\n                <font color=\"#636363\"><i class=\"fa fa-plus\"></i>\r\n               </font></span>\r\n        </button>\r\n      </h5>\r\n    </div>\r\n\r\n    <div id=\"collapseOne5\" class=\"collapse\" aria-labelledby=\"headingOne5\" data-parent=\"#accordion\">\r\n      <div class=\"card-body\">\r\n        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n\r\n\r\n\r\n<div class=\"card p-4\">\r\n    <div class=\"card-header\" id=\"headingOne6\">\r\n      <h5 class=\"mb-0\">\r\n        <button class=\"btn btn-link d-flex align-items-center justify-content-between collapsed\" data-toggle=\"collapse\" data-target=\"#collapseOne6\" aria-expanded=\"false\" aria-controls=\"collapseOne6\" style=\"width:100%\"><font color=\"#636363\">\r\n          Collapsible Group Item #1\r\n</font><span class=\"fa-stack fa-sm\">\r\n                <font color=\"#636363\"><i class=\"fa fa-plus\"></i></font>\r\n               </span>\r\n        </button>\r\n      </h5>\r\n    </div>\r\n\r\n    <div id=\"collapseOne6\" class=\"collapse\" aria-labelledby=\"headingOne6\" data-parent=\"#accordion\">\r\n      <div class=\"card-body\">\r\n        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flashdeal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vessel_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `reward_points` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `first_name`, `last_name`, `vessel_name`, `email`, `email_verified_at`, `phone`, `address`, `rank`, `password`, `set_password`, `code`, `reward_points`, `image`, `status`, `avatar`, `provider`, `provider_id`, `access_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(124, 'Didarul Islam', NULL, NULL, NULL, NULL, '01777919189', NULL, NULL, '$2y$10$cNtcZlguvJUwX7PPTe/Zvul6DWGCNMCn8B70CsBprGz5MnWJAJJEa', '11111111', 7610, '401.4', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-01-20 01:06:35', '2022-06-05 08:46:26'),
(125, 'Test User', NULL, NULL, 'test@gmail.com', NULL, '01700010000', NULL, NULL, '$2y$10$UPW.kBHakhTZpaOjpEC.R.x5lcgonQJfIOT/gDwZSNn2pE2Mvf1.W', '11111111', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-13 04:21:48', '2022-04-13 04:21:48'),
(126, 'ertert', NULL, NULL, NULL, NULL, '34534534534', NULL, NULL, '$2y$10$TZyKDdYKMmSvSdtENV9Pg.bhmI61eanMLhwgbUEupcUnzIIcHmFfG', '11111111', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-25 04:13:49', '2022-04-25 04:13:49'),
(127, 'dftgdg', NULL, NULL, 'test@gmail.com', NULL, '11213123123', NULL, NULL, '$2y$10$4ws0IMxQh92kh7jZSi8cJuVWIYpOg29L2KmGZ1ZcdSmZLRjr6KUa6', '11111111', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-25 04:15:37', '2022-04-25 04:15:37'),
(128, 'akjsdgjsgfdgjsdf', NULL, NULL, NULL, NULL, '42353453453453', NULL, NULL, '$2y$10$wyoJZ0mnNsuANKtbroKQ6OnGUoJFoIGvQIDX54.re2.80ABN51td.', '11111111', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-25 04:16:56', '2022-04-25 04:16:56'),
(129, 'Niloy akhand', NULL, NULL, NULL, NULL, '01315914262', NULL, NULL, '$2y$10$lk/ofI/ZLv.r09WUTdIoo.jyv.jn6MyeZYPK1og1RxgIR17/73KCq', '11111111', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-06-05 08:50:45', '2022-06-05 08:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `guest_verify`
--

CREATE TABLE `guest_verify` (
  `id` int(11) NOT NULL,
  `phone` varchar(21) NOT NULL,
  `code` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_verify`
--

INSERT INTO `guest_verify` (`id`, `phone`, `code`, `created_at`) VALUES
(1, '01830261941', '8770', '2021-09-23 14:57:26'),
(2, '01719486272', '5813', '2021-06-23 14:09:22'),
(3, '01840241895', '9862', '2021-06-25 14:31:32'),
(4, '01400486272', '5195', '2021-06-28 20:27:32'),
(5, '01810031663', '1485', '2021-06-29 18:06:23'),
(6, '01751257195', '1208', '2021-06-30 07:34:08'),
(7, '01639671056', '4812', '2021-06-30 07:38:11'),
(8, '01682826876', '4573', '2021-07-11 05:59:48'),
(9, '01922496669', '3673', '2021-06-30 10:38:16'),
(10, '01685113044', '4450', '2021-07-01 17:34:32'),
(11, '01975215931', '2780', '2021-07-02 10:41:01'),
(12, '01681635657', '3131', '2021-07-02 10:56:37'),
(13, '01722168808', '7155', '2021-07-03 10:09:16'),
(14, '01945666888', '6048', '2021-07-03 11:17:26'),
(15, '01917331717', '8495', '2021-07-03 14:07:42'),
(16, '01816345017', '7548', '2021-07-03 17:48:41'),
(17, '01676675664', '2020', '2021-07-07 14:47:50'),
(18, '01750106455', '8129', '2021-07-08 07:42:16'),
(19, '01681408185', '9112', '2021-07-09 13:41:36'),
(20, '01717555598', '1601', '2021-07-09 13:53:15'),
(21, '01914613297', '8989', '2021-07-09 14:16:36'),
(22, '01701137588', '6617', '2021-07-09 15:01:17'),
(23, '01922459118', '9260', '2021-07-09 17:26:29'),
(24, '01405507881', '1986', '2021-07-10 00:43:44'),
(25, '01672149195', '1794', '2021-07-10 05:57:04'),
(26, '01626866987', '6727', '2021-07-10 07:44:37'),
(27, '01811358602', '4017', '2021-11-18 08:50:50'),
(28, '01912424100', '5031', '2021-07-10 11:28:05'),
(29, '01755698444', '1151', '2021-07-10 15:03:15'),
(30, '01632756674', '7866', '2021-07-11 16:47:43'),
(31, '01869478181', '5742', '2021-07-11 18:39:13'),
(32, '01829462060', '9259', '2021-07-11 18:38:17'),
(33, '01628962918', '2536', '2021-07-11 18:40:08'),
(34, '01734106694', '9256', '2021-07-13 07:45:15'),
(35, '01763915591', '5293', '2021-07-12 09:58:35'),
(36, '01676031990', '9662', '2021-07-14 09:47:44'),
(37, '01734647433', '1911', '2021-07-15 13:22:25'),
(38, '01716831853', '4664', '2021-07-16 12:59:50'),
(39, '01771239603', '7406', '2021-07-15 20:40:44'),
(40, '01710663948', '1309', '2021-07-16 02:52:56'),
(41, '01716622444', '8277', '2021-07-16 10:05:47'),
(42, '01671976974', '7915', '2021-07-16 11:41:13'),
(43, '01788811055', '7131', '2021-07-16 13:00:17'),
(44, '01726718455', '8371', '2021-07-16 14:07:40'),
(45, '01742183423', '8509', '2021-07-16 16:36:29'),
(46, '01611261993', '1218', '2021-07-16 20:32:16'),
(47, '01703244008', '2313', '2021-07-17 10:09:20'),
(48, '01764037295', '4481', '2021-07-17 11:00:37'),
(49, '01303618485', '4008', '2021-07-17 11:18:14'),
(50, '01319060536', '4226', '2021-07-17 11:33:13'),
(51, '01521431245', '7931', '2021-07-17 13:19:09'),
(52, '01614865757', '6626', '2021-07-17 13:42:29'),
(53, '01777404440', '6634', '2021-07-17 14:35:50'),
(54, '01710180707', '4128', '2021-07-17 17:44:46'),
(55, '01923506801', '8138', '2021-07-17 17:59:43'),
(56, '01833182102', '6080', '2021-07-17 21:13:12'),
(57, '01304752358', '2401', '2021-07-18 07:44:07'),
(58, '01758887338', '9757', '2021-07-18 07:45:39'),
(59, '01737313861', '6406', '2021-07-18 09:36:28'),
(60, '01719007677', '6004', '2021-07-18 09:56:33'),
(61, '01977002333', '4143', '2021-07-18 12:13:48'),
(62, '01975828594', '4479', '2021-07-18 12:34:33'),
(63, '01642787577', '2971', '2021-07-18 15:09:44'),
(64, '01686107400', '7101', '2021-07-19 10:39:39'),
(65, '01712504383', '3843', '2021-07-21 10:33:12'),
(66, '01781053870', '6126', '2021-08-02 10:17:25'),
(67, '01886436416', '6479', '2021-08-03 05:35:53'),
(68, '01630969076', '4062', '2021-08-03 05:57:25'),
(69, '01799361321', '1725', '2021-08-03 06:09:00'),
(70, '01737035024', '9545', '2021-08-03 06:43:02'),
(71, '01740431666', '1677', '2021-08-03 06:43:41'),
(72, '01784828062', '8443', '2021-08-03 07:19:51'),
(73, '01681265851', '4201', '2021-08-03 07:27:03'),
(74, '01673565173', '7651', '2021-08-03 07:44:04'),
(75, '01722456675', '8216', '2021-08-03 07:50:22'),
(76, '01682899565', '8079', '2021-08-03 07:55:49'),
(77, '01795694459', '7793', '2021-08-03 07:59:57'),
(78, '01812593834', '3740', '2021-08-03 08:05:37'),
(79, '01712090106', '9161', '2021-08-03 08:12:06'),
(80, '01818990890', '3721', '2021-08-03 08:32:00'),
(81, '01849379469', '2444', '2021-08-03 08:42:31'),
(82, '01911101455', '2946', '2021-08-03 08:46:09'),
(83, '01672983339', '9254', '2021-08-03 08:45:44'),
(84, '01712081411', '3116', '2021-08-03 09:07:15'),
(85, '01825305657', '4811', '2021-08-03 09:11:43'),
(86, '01711162684', '6985', '2021-08-03 09:13:07'),
(87, '01873361714', '9120', '2021-08-03 09:42:06'),
(88, '01976199680', '2883', '2021-08-03 10:24:42'),
(89, '01712807696', '8881', '2021-08-03 10:22:32'),
(90, '01621277739', '4865', '2021-08-03 10:51:24'),
(91, '01671676020', '6026', '2021-08-03 11:11:57'),
(92, '01672642613', '3916', '2021-08-03 11:16:24'),
(93, '01859557300', '2745', '2021-08-03 11:18:53'),
(94, '01647369136', '9702', '2021-08-03 11:23:46'),
(95, '01677759428', '3740', '2021-08-03 11:47:20'),
(96, '01673900077', '6610', '2021-08-03 11:32:30'),
(97, '01675824086', '3817', '2021-08-03 11:40:47'),
(98, '01711952687', '9257', '2021-08-03 11:44:13'),
(99, '01648851218', '8186', '2021-08-03 11:43:57'),
(100, '01681588493', '7815', '2021-08-03 11:49:17'),
(101, '01627590622', '3057', '2021-08-03 11:53:15'),
(102, '01722663321', '3640', '2021-08-03 11:59:35'),
(103, '01841207070', '9446', '2021-08-03 12:03:03'),
(104, '01717975567', '6453', '2021-08-03 12:38:14'),
(105, '01717608010', '7665', '2021-08-03 12:45:29'),
(106, '01816780461', '8282', '2021-08-03 12:52:21'),
(107, '01780856206', '7378', '2021-08-03 13:03:20'),
(108, '01723317297', '4963', '2021-08-03 13:04:49'),
(109, '01712394530', '5958', '2021-08-03 13:20:52'),
(110, '01711648518', '2405', '2021-08-03 13:56:14'),
(111, '01622912105', '3880', '2021-08-03 14:12:45'),
(112, '01712707140', '9792', '2021-08-03 15:14:34'),
(113, '01534717363', '6199', '2021-08-03 16:22:38'),
(114, '01670307412', '5680', '2021-08-03 17:24:43'),
(115, '01713824447', '2747', '2021-08-03 17:25:54'),
(116, '01934080361', '4763', '2021-08-03 17:41:46'),
(117, '01640475548', '5671', '2021-08-03 17:53:30'),
(118, '01912478852', '9052', '2021-08-03 18:47:24'),
(119, '01717033455', '2584', '2021-08-03 19:57:30'),
(120, '01911010194', '9536', '2021-08-03 20:43:20'),
(121, '01912238699', '7349', '2021-08-04 00:35:57'),
(122, '01681840243', '2044', '2021-08-04 01:37:23'),
(123, '01553444577', '7009', '2021-08-04 05:50:12'),
(124, '01722165955', '8129', '2021-08-04 08:56:51'),
(125, '01744563450', '6478', '2021-08-04 09:49:59'),
(126, '01728783281', '7581', '2021-08-04 09:50:46'),
(127, '01676422888', '6198', '2021-08-04 09:51:15'),
(128, '01729996664', '1869', '2021-08-04 09:52:18'),
(129, '01737102250', '7711', '2021-08-04 09:58:32'),
(130, '01761013878', '5277', '2021-08-04 09:59:36'),
(131, '01911273851', '8259', '2021-08-04 10:04:19'),
(132, '01737136963', '8407', '2021-08-04 10:12:03'),
(133, '01813371137', '4516', '2021-08-04 10:28:35'),
(134, '01773682507', '2034', '2021-08-04 10:31:00'),
(135, '01686391585', '9525', '2021-08-04 10:32:08'),
(136, '01781871927', '9999', '2021-08-04 10:32:43'),
(137, '01817005336', '8425', '2021-08-04 10:42:14'),
(138, '01823297576', '6333', '2021-08-04 10:44:01'),
(139, '01752020209', '4327', '2021-08-04 10:45:17'),
(140, '01917723727', '6157', '2021-08-06 10:31:07'),
(141, '01832276326', '9960', '2021-08-04 10:49:42'),
(142, '01758134794', '9333', '2021-08-04 10:55:50'),
(143, '01838777795', '3855', '2021-08-04 10:58:36'),
(144, '01716759906', '1340', '2021-08-04 11:14:15'),
(145, '01303203173', '9080', '2021-08-04 11:14:17'),
(146, '01818654505', '6773', '2021-08-04 11:15:04'),
(147, '01862337606', '6256', '2021-08-04 14:20:36'),
(148, '01627009194', '3661', '2021-08-04 14:49:50'),
(149, '01924561074', '2465', '2021-08-04 15:47:42'),
(150, '01728654300', '7049', '2021-08-04 16:13:10'),
(151, '01611125094', '2366', '2021-08-04 16:41:08'),
(152, '01741777474', '3141', '2021-08-04 17:06:42'),
(153, '01681845999', '1321', '2021-08-04 17:26:37'),
(154, '01620732692', '4674', '2021-08-04 17:42:47'),
(155, '01840834552', '6752', '2021-08-04 19:52:55'),
(156, '01833741008', '5870', '2021-08-04 22:07:09'),
(157, '01822270500', '6540', '2021-08-05 05:54:37'),
(158, '01790137765', '4038', '2021-08-05 06:02:33'),
(159, '01521484414', '4605', '2021-08-05 06:13:26'),
(160, '01626905536', '1964', '2021-08-05 10:43:54'),
(161, '01787215621', '7359', '2021-08-05 15:12:53'),
(162, '01750418288', '1474', '2021-08-05 16:27:34'),
(163, '01739271859', '2181', '2021-08-06 02:35:11'),
(164, '01313221175', '1715', '2021-08-06 06:15:40'),
(165, '01739100823', '4507', '2021-08-06 09:30:15'),
(166, '01711278709', '4957', '2021-08-06 09:30:51'),
(167, '01876529951', '5723', '2021-08-06 09:58:01'),
(168, '01730605080', '8423', '2021-08-06 12:51:30'),
(169, '01778098011', '7620', '2021-08-06 14:21:55'),
(170, '01722921820', '7187', '2021-08-06 15:11:39'),
(171, '01712839839', '6996', '2021-08-06 15:31:21'),
(172, '01713541313', '4936', '2021-08-08 13:01:22'),
(173, '01911946622', '2733', '2021-08-07 15:14:14'),
(174, '01829569262', '7261', '2021-08-07 04:59:40'),
(175, '01735601590', '7293', '2021-08-07 10:25:19'),
(176, '01819476070', '9844', '2021-08-07 15:46:25'),
(177, '01911506459', '9538', '2021-08-07 15:59:30'),
(178, '01717924685', '9093', '2021-08-08 01:15:17'),
(179, '01780225750', '4573', '2021-08-08 06:02:15'),
(180, '01912528353', '4868', '2021-08-08 06:03:40'),
(181, '01922760981', '5384', '2021-08-08 06:38:01'),
(182, '01923527201', '1562', '2021-08-08 06:47:12'),
(183, '01839151440', '1346', '2021-08-08 06:58:03'),
(184, '01690250820', '1805', '2021-08-08 06:58:31'),
(185, '01878613930', '9247', '2021-08-08 07:11:15'),
(186, '01923969066', '6940', '2021-08-08 07:17:58'),
(187, '01672691565', '6695', '2021-08-08 07:20:14'),
(188, '01977756605', '8687', '2021-08-08 08:47:39'),
(189, '01982222020', '9661', '2021-08-08 08:50:26'),
(190, '01987899151', '5829', '2021-08-08 08:56:06'),
(191, '01981294952', '9467', '2021-08-08 08:57:07'),
(192, '01989745474', '4379', '2021-08-08 09:02:37'),
(193, '01791223187', '4448', '2021-08-08 09:07:46'),
(194, '01717310894', '3074', '2021-08-08 09:17:58'),
(195, '01675997661', '2840', '2021-08-08 09:26:33'),
(196, '01515282802', '3090', '2021-08-08 09:30:17'),
(197, '01315475105', '4261', '2021-08-08 09:31:56'),
(198, '01308385764', '8633', '2021-08-08 09:34:06'),
(199, '01521400159', '2531', '2021-08-08 09:36:19'),
(200, '01521400150', '6632', '2021-08-08 09:38:18'),
(201, '01580416621', '4129', '2021-08-08 09:39:50'),
(202, '01774585544', '6698', '2021-08-08 09:40:52'),
(203, '01613162522', '1198', '2021-08-08 09:42:01'),
(204, '01717516237', '6647', '2021-08-08 09:44:39'),
(205, '01717893018', '3382', '2021-08-08 09:52:40'),
(206, '01612138315', '4186', '2021-08-08 09:52:47'),
(207, '01738584675', '5316', '2021-08-08 09:55:39'),
(208, '01612992418', '3243', '2021-08-08 10:00:41'),
(209, '01880930927', '4453', '2021-08-08 10:00:51'),
(210, '01759801588', '2816', '2021-08-08 10:02:58'),
(211, '01611832238', '7718', '2021-08-08 10:10:42'),
(212, '01630256276', '9190', '2021-08-08 10:21:47'),
(213, '01313786000', '2193', '2021-08-08 10:28:26'),
(214, '01841666252', '4995', '2021-08-08 10:30:44'),
(215, '01927707904', '2098', '2021-08-08 10:33:00'),
(216, '01632903040', '4085', '2021-08-08 10:41:14'),
(217, '01636263858', '1998', '2021-08-08 10:44:42'),
(218, '01626936661', '6655', '2021-08-08 11:13:38'),
(219, '01675306483', '6256', '2021-08-08 11:22:42'),
(220, '01674332335', '7398', '2021-08-08 11:39:52'),
(221, '01876329830', '7528', '2021-08-08 11:41:21'),
(222, '01676537095', '1405', '2021-08-08 12:52:07'),
(223, '01684330950', '1988', '2021-08-08 13:03:22'),
(224, '01847309424', '5934', '2021-08-08 13:13:03'),
(225, '01684584224', '9908', '2021-08-08 13:25:13'),
(226, '01612199919', '1465', '2021-08-08 13:58:32'),
(227, '01929104085', '3571', '2021-08-08 15:59:45'),
(228, '01718968876', '9504', '2021-08-08 16:18:16'),
(229, '01316438932', '5494', '2021-08-08 16:23:31'),
(230, '01740271204', '5755', '2021-08-08 16:34:59'),
(231, '01828358005', '7342', '2021-08-08 17:03:22'),
(232, '01911908985', '2355', '2021-08-08 17:14:20'),
(233, '01756899591', '1333', '2021-08-08 17:16:08'),
(234, '01778355555', '9657', '2021-08-08 19:59:07'),
(235, '01913011026', '4706', '2021-08-08 20:57:48'),
(236, '01812351177', '3933', '2021-08-09 02:07:08'),
(237, '01677116464', '2768', '2021-08-09 03:26:03'),
(238, '01776333545', '3117', '2021-08-09 04:24:59'),
(239, '01738318360', '5821', '2021-08-09 05:28:56'),
(240, '01725258317', '8021', '2021-08-09 06:39:39'),
(241, '01914792828', '3990', '2021-08-09 07:12:49'),
(242, '01875579039', '3938', '2021-08-09 08:27:49'),
(243, '01825062017', '9028', '2021-08-09 08:54:54'),
(244, '01682225818', '7954', '2021-08-09 09:28:36'),
(245, '01718608030', '6136', '2021-08-09 10:17:58'),
(246, '01619260666', '6716', '2021-08-09 10:05:15'),
(247, '01716476849', '2322', '2021-08-09 10:07:36'),
(248, '01717948853', '1896', '2021-08-09 10:14:16'),
(249, '01722361346', '6552', '2021-08-09 12:04:24'),
(250, '01725865056', '7746', '2021-08-09 12:34:54'),
(251, '01726119804', '6232', '2021-08-09 13:28:02'),
(252, '01975999866', '4531', '2021-08-09 13:29:16'),
(253, '01722094682', '2387', '2021-08-09 13:33:07'),
(254, '01817708729', '7488', '2021-08-09 13:58:37'),
(255, '01712830036', '8802', '2021-08-09 14:01:40'),
(256, '01754363997', '4218', '2021-08-09 14:11:12'),
(257, '01928779008', '7079', '2021-08-10 13:05:50'),
(258, '01830104037', '7551', '2021-08-09 14:19:42'),
(259, '01711177014', '2133', '2021-08-09 14:20:34'),
(260, '01716144932', '9078', '2021-08-09 14:21:24'),
(261, '01912173878', '6821', '2021-08-09 14:23:08'),
(262, '01643392559', '7627', '2021-08-09 14:27:36'),
(263, '01815627795', '2549', '2021-08-09 14:33:19'),
(264, '01629843282', '3950', '2021-08-09 14:32:55'),
(265, '01719620238', '5774', '2021-08-09 14:31:37'),
(266, '01785263315', '3623', '2021-08-09 14:34:45'),
(267, '01737893678', '4419', '2021-08-09 14:36:30'),
(268, '01960456232', '9770', '2021-08-09 14:44:53'),
(269, '01822725930', '3959', '2021-08-09 14:48:34'),
(270, '01672343602', '1634', '2021-08-09 14:59:12'),
(271, '01682868089', '5490', '2021-08-09 15:08:53'),
(272, '01782411323', '8958', '2021-08-09 15:14:28'),
(273, '01811477672', '8689', '2021-08-09 15:30:04'),
(274, '01711201997', '6372', '2021-08-09 15:32:25'),
(275, '01745376620', '3595', '2021-08-09 15:33:59'),
(276, '01886600608', '6302', '2021-08-09 15:57:19'),
(277, '01633333337', '5272', '2021-08-09 16:10:42'),
(278, '01718281577', '1665', '2021-08-09 16:51:49'),
(279, '01744577698', '9200', '2021-08-09 16:55:34'),
(280, '01401740482', '7270', '2021-08-09 17:20:20'),
(281, '01819606360', '6267', '2021-08-09 17:22:12'),
(282, '01717758500', '3382', '2021-08-09 18:58:12'),
(283, '01720622145', '5517', '2021-08-09 19:00:49'),
(284, '01779119191', '8801', '2021-08-09 19:08:01'),
(285, '01739019323', '5104', '2021-08-09 19:23:58'),
(286, '01720527657', '6540', '2021-08-09 19:43:52'),
(287, '01614023738', '3145', '2021-08-09 22:16:19'),
(288, '01785458544', '2479', '2021-08-09 22:16:35'),
(289, '01621881051', '4857', '2021-08-09 22:22:14'),
(290, '01770659334', '8201', '2021-08-10 01:09:52'),
(291, '01671642024', '3496', '2021-08-10 01:35:12'),
(292, '01724351838', '9369', '2021-08-10 01:49:07'),
(293, '01770059543', '5324', '2021-08-10 02:02:48'),
(294, '01841126626', '4122', '2021-08-10 02:37:10'),
(295, '01623940961', '5293', '2021-08-10 04:51:38'),
(296, '01742755250', '3090', '2021-08-10 04:53:39'),
(297, '01764835177', '9669', '2021-08-10 05:25:51'),
(298, '01601500605', '5943', '2021-09-23 12:51:21'),
(299, '01613110924', '8016', '2021-08-10 05:50:15'),
(300, '01680723737', '7042', '2021-08-10 05:51:46'),
(301, '01786331029', '6610', '2021-08-10 06:49:05'),
(302, '01682796777', '3724', '2021-08-10 06:40:45'),
(303, '01744851647', '2098', '2021-08-10 07:22:55'),
(304, '01991274417', '1580', '2021-08-10 07:38:45'),
(305, '01727239309', '6197', '2021-08-10 08:05:02'),
(306, '01740136662', '7419', '2021-08-10 08:07:42'),
(307, '01911620420', '5341', '2021-08-10 08:51:28'),
(308, '01610005788', '7474', '2021-08-10 09:16:37'),
(309, '01796194599', '6184', '2021-08-10 10:08:28'),
(310, '01838764678', '9084', '2021-08-10 10:08:22'),
(311, '01917406587', '3475', '2021-08-10 10:09:16'),
(312, '01686148179', '5469', '2021-08-10 10:09:50'),
(313, '01629555839', '3900', '2021-08-10 10:13:48'),
(314, '01847446970', '4421', '2021-08-10 10:20:51'),
(315, '01846494431', '3738', '2021-08-10 10:23:15'),
(316, '01791554763', '6062', '2021-08-10 10:28:11'),
(317, '01716048657', '3577', '2021-08-10 10:29:47'),
(318, '01834727539', '8247', '2021-08-10 10:30:49'),
(319, '01819519620', '9328', '2021-08-10 10:34:42'),
(320, '01868791638', '6669', '2021-08-10 10:37:02'),
(321, '01884635718', '2148', '2021-08-10 10:39:53'),
(322, '01851410137', '7997', '2021-08-10 10:50:47'),
(323, '01838214493', '4274', '2021-08-10 10:51:25'),
(324, '01823404904', '2323', '2021-08-10 10:56:05'),
(325, '01913377227', '2655', '2021-08-10 11:09:48'),
(326, '01827232536', '3960', '2021-08-10 11:16:40'),
(327, '01884674849', '4066', '2021-08-10 11:21:04'),
(328, '01820838347', '8204', '2021-08-10 11:32:59'),
(329, '01915166424', '1496', '2021-08-10 11:36:59'),
(330, '01737612128', '9050', '2021-08-10 11:40:36'),
(331, '01619300006', '7044', '2021-08-10 11:47:06'),
(332, '01947108618', '8402', '2021-08-10 11:54:07'),
(333, '01944484456', '4893', '2021-08-10 11:55:13'),
(334, '01711133875', '5598', '2021-08-10 11:58:03'),
(335, '01935523010', '2283', '2021-08-10 12:03:02'),
(336, '01771579483', '5810', '2021-08-10 12:14:32'),
(337, '01958515631', '4247', '2021-08-10 12:14:48'),
(338, '01954754675', '5488', '2021-08-10 12:15:27'),
(339, '01974959059', '5299', '2021-08-10 12:16:58'),
(340, '01625302623', '4981', '2021-08-10 12:20:49'),
(341, '01922534516', '2138', '2021-08-10 12:31:12'),
(342, '01311428785', '8196', '2021-08-10 12:37:19'),
(343, '01917897919', '8389', '2021-08-10 12:44:14'),
(344, '01877086055', '4386', '2021-08-10 13:11:38'),
(345, '01677077625', '2081', '2021-08-10 13:12:14'),
(346, '01303188770', '1888', '2021-08-10 13:12:10'),
(347, '01719666222', '2382', '2021-08-10 13:21:40'),
(348, '01755811538', '1318', '2021-08-10 13:29:02'),
(349, '01925125125', '4980', '2021-08-10 13:34:33'),
(350, '01957198900', '6784', '2021-08-10 13:41:27'),
(351, '01719633549', '9785', '2021-08-10 13:53:30'),
(352, '01728202130', '6002', '2021-08-10 14:07:45'),
(353, '01940095520', '6408', '2021-08-10 14:10:46'),
(354, '01881147766', '7145', '2021-08-10 14:24:48'),
(355, '01927384144', '9526', '2021-08-10 14:26:41'),
(356, '01716007364', '1853', '2021-08-10 15:28:25'),
(357, '01787686811', '1237', '2021-08-10 15:28:54'),
(358, '01857125777', '8042', '2021-08-10 16:14:58'),
(359, '01717013972', '5943', '2021-08-10 16:40:15'),
(360, '01815625063', '6842', '2021-08-10 16:59:46'),
(361, '01710762489', '1799', '2021-08-10 17:26:34'),
(362, '01318817206', '9908', '2021-08-10 18:56:33'),
(363, '01861561278', '6846', '2021-08-10 18:59:34'),
(364, '01753355566', '2339', '2021-08-10 21:56:16'),
(365, '01742860808', '3692', '2021-08-11 03:41:24'),
(366, '01630390539', '9967', '2021-08-11 06:43:30'),
(367, '01721487334', '9999', '2021-08-11 11:48:38'),
(368, '01723846416', '9987', '2021-08-11 14:32:38'),
(369, '01401785995', '3195', '2021-08-12 06:18:50'),
(370, '01748420193', '2631', '2021-08-12 13:12:09'),
(371, '01712502134', '5511', '2021-08-12 19:13:06'),
(372, '01747494919', '6200', '2021-08-13 02:05:11'),
(373, '01759276040', '5952', '2021-08-13 04:32:47'),
(374, '01819704948', '4682', '2021-08-13 16:33:04'),
(375, '01765836764', '4491', '2021-08-16 05:16:25'),
(376, '01863879263', '6830', '2021-08-14 05:54:13'),
(377, '01817549090', '7860', '2021-08-14 05:58:51'),
(378, '01711162419', '4754', '2021-09-25 10:06:11'),
(379, '01323580059', '6042', '2021-08-16 07:04:28'),
(380, '01845126630', '1297', '2021-08-15 12:08:24'),
(381, '01825909842', '3738', '2021-08-14 06:08:47'),
(382, '01302556862', '1488', '2021-08-14 14:12:16'),
(383, '01671112500', '8042', '2021-08-15 08:33:51'),
(384, '01799206025', '2991', '2021-08-16 04:06:25'),
(385, '01738358893', '2007', '2021-08-16 07:25:15'),
(386, '01772684922', '2956', '2021-08-16 07:31:21'),
(387, '01767555088', '4814', '2021-08-16 09:10:38'),
(388, '01867129574', '3745', '2021-08-16 11:28:31'),
(389, '01611884430', '4053', '2021-08-16 20:32:00'),
(390, '01714971479', '2431', '2021-08-17 05:30:56'),
(391, '01735351703', '7002', '2021-08-17 09:17:06'),
(392, '01717445929', '2623', '2021-08-17 10:01:32'),
(393, '01915938750', '8985', '2021-08-17 19:37:54'),
(394, '01870884448', '5443', '2021-08-18 10:08:12'),
(395, '01870884445', '7420', '2021-08-18 10:08:28'),
(396, '01700744550', '1516', '2021-08-19 09:27:32'),
(397, '01710130103', '6207', '2021-08-19 19:07:25'),
(398, '01727859909', '5140', '2021-08-19 19:47:41'),
(399, '01701019189', '1474', '2021-08-19 20:54:14'),
(400, '01640484854', '9167', '2021-08-20 07:45:31'),
(401, '01626401259', '1989', '2021-08-21 04:38:40'),
(402, '01869890209', '8416', '2021-08-21 05:02:39'),
(403, '01818673569', '4155', '2021-08-21 11:59:36'),
(404, '01738154800', '6651', '2021-08-23 19:41:23'),
(405, '01516151000', '7307', '2021-08-24 11:55:51'),
(406, '01975310197', '3988', '2021-08-28 11:02:37'),
(407, '01716252965', '7208', '2021-08-28 11:04:19'),
(408, '01947400600', '6911', '2021-08-28 11:13:51'),
(409, '01709325502', '9122', '2021-08-29 08:50:44'),
(410, '01919587372', '1180', '2021-08-29 09:11:10'),
(411, '01911710589', '7798', '2021-08-29 09:22:49'),
(412, '01624461918', '7509', '2021-08-29 09:52:27'),
(413, '01717438505', '1470', '2021-08-29 14:41:30'),
(414, '01305075836', '3683', '2021-08-30 03:48:17'),
(415, '01676801401', '5986', '2021-08-31 05:55:05'),
(416, '01911962213', '8335', '2021-09-03 06:44:15'),
(417, '01927424870', '9387', '2021-09-03 09:32:29'),
(418, '01812737474', '1998', '2021-09-03 09:42:11'),
(419, '01776368897', '7806', '2021-09-03 10:16:37'),
(420, '01858646631', '1816', '2021-09-03 11:39:06'),
(421, '01868685798', '7733', '2021-09-03 11:52:37'),
(422, '01745463484', '4973', '2021-09-03 12:02:01'),
(423, '01845160522', '9047', '2021-09-03 12:31:18'),
(424, '01711467343', '5965', '2021-09-03 12:34:50'),
(425, '01733006624', '3074', '2021-09-03 13:02:41'),
(426, '01783478713', '4572', '2021-09-03 13:30:54'),
(427, '01611231633', '2920', '2021-09-03 13:45:22'),
(428, '01711479341', '9462', '2021-09-03 14:43:43'),
(429, '01711909247', '7986', '2021-09-04 02:35:46'),
(430, '01717279947', '5988', '2021-09-04 02:45:34'),
(431, '01814907513', '1530', '2021-09-04 07:03:52'),
(432, '01305008455', '4794', '2021-09-04 07:07:10'),
(433, '01303379229', '4306', '2021-09-04 07:40:44'),
(434, '01711152334', '9728', '2021-09-04 07:50:48'),
(435, '01866830278', '3862', '2021-09-04 07:58:06'),
(436, '01521441038', '1115', '2021-09-04 08:26:08'),
(437, '01768603344', '1130', '2021-09-04 08:36:20'),
(438, '01629374612', '7136', '2021-09-04 08:49:04'),
(439, '01759078754', '4852', '2021-09-04 09:10:24'),
(440, '01739819634', '9145', '2021-09-04 09:19:54'),
(441, '01684383868', '7379', '2021-09-04 09:34:41'),
(442, '01738004061', '9472', '2021-09-04 09:37:57'),
(443, '01840000193', '5430', '2021-09-04 10:11:13'),
(444, '01711782567', '5695', '2021-09-04 10:48:11'),
(445, '01309066230', '7525', '2021-09-04 10:58:41'),
(446, '01403389125', '1284', '2021-09-04 11:09:02'),
(447, '01733693405', '1903', '2021-09-04 11:22:31'),
(448, '01956140464', '8971', '2021-09-04 11:35:33'),
(449, '01722957123', '4156', '2021-09-04 11:35:52'),
(450, '01816456542', '9329', '2021-09-04 13:02:11'),
(451, '01703477553', '6029', '2021-09-04 13:02:14'),
(452, '01715101697', '3622', '2021-09-04 16:00:37'),
(453, '01717266225', '6836', '2021-09-04 16:41:57'),
(454, '01638211562', '3943', '2021-09-04 17:18:12'),
(455, '01920324052', '7923', '2021-09-04 18:01:16'),
(456, '01315770700', '6392', '2021-09-04 21:42:38'),
(457, '01834736803', '7361', '2021-09-05 02:09:12'),
(458, '01712091606', '7612', '2021-09-05 02:27:46'),
(459, '01717171713', '8743', '2021-09-05 04:48:34'),
(460, '01643907302', '1884', '2021-09-05 05:28:13'),
(461, '01400320183', '2817', '2021-09-05 06:17:16'),
(462, '01989279304', '4138', '2021-09-05 06:55:31'),
(463, '01682528871', '5827', '2021-09-05 07:13:20'),
(464, '01822758075', '5624', '2021-09-05 07:31:21'),
(465, '01811321123', '8173', '2021-09-05 08:43:53'),
(466, '01712757701', '8765', '2021-09-05 10:24:36'),
(467, '01711327726', '7958', '2021-09-05 11:58:02'),
(468, '01712338389', '1866', '2021-09-05 13:33:34'),
(469, '01811853730', '7118', '2021-09-05 13:49:07'),
(470, '01972537257', '1277', '2021-09-05 15:40:36'),
(471, '01678054457', '3142', '2021-09-05 16:47:27'),
(472, '01681195171', '3018', '2021-09-06 05:12:58'),
(473, '01550445733', '7658', '2021-09-06 06:39:25'),
(474, '01671350235', '4867', '2021-09-06 07:21:30'),
(475, '01551818801', '2195', '2021-09-06 09:58:52'),
(476, '01623573167', '4808', '2021-09-06 10:03:44'),
(477, '01716680469', '7689', '2021-09-06 10:49:08'),
(478, '01728613968', '5907', '2021-09-06 11:09:49'),
(479, '01741857263', '4738', '2021-09-06 11:21:02'),
(480, '01753347705', '7701', '2021-09-06 11:45:03'),
(481, '01768466886', '3047', '2021-09-06 12:16:33'),
(482, '01762318758', '8471', '2021-09-06 12:39:52'),
(483, '01813968080', '4364', '2021-09-06 13:17:32'),
(484, '01712487195', '5953', '2021-09-06 17:53:11'),
(485, '01758562934', '8909', '2021-09-06 19:39:03'),
(486, '01829693109', '8735', '2021-09-07 07:12:20'),
(487, '01858671357', '7367', '2021-09-07 07:48:33'),
(488, '01962717005', '2456', '2021-09-07 07:58:04'),
(489, '01792601730', '2967', '2021-09-07 08:07:23'),
(490, '01677872129', '9013', '2021-09-07 08:07:43'),
(491, '01737974361', '9313', '2021-09-07 08:17:44'),
(492, '01961833200', '3727', '2021-09-07 08:27:16'),
(493, '01738736928', '9359', '2021-09-07 08:41:51'),
(494, '01976257416', '1447', '2021-09-07 09:00:27'),
(495, '01793596928', '9490', '2021-09-07 09:48:59'),
(496, '01883309737', '2268', '2021-09-07 10:35:48'),
(497, '01780909799', '5359', '2021-09-07 10:40:18'),
(498, '01722808097', '8047', '2021-09-07 11:32:33'),
(499, '01736668222', '2336', '2021-09-07 17:05:35'),
(500, '01711195949', '4318', '2021-09-07 20:54:17'),
(501, '01799368305', '1739', '2021-09-08 08:00:46'),
(502, '01716597806', '8092', '2021-09-09 05:53:56'),
(503, '01703957714', '2709', '2021-09-10 09:10:46'),
(504, '01712706286', '6160', '2021-09-10 10:50:16'),
(505, '01642769716', '7835', '2021-09-10 14:55:10'),
(506, '01303034859', '5693', '2021-09-11 08:44:14'),
(507, '01716989828', '1929', '2021-09-13 17:09:12'),
(508, '01799177123', '1271', '2021-09-20 08:30:03'),
(509, '01304467663', '7037', '2021-09-21 16:51:06'),
(510, '01613606961', '8909', '2021-09-21 17:51:26'),
(511, '01894091000', '2953', '2021-09-21 18:16:53'),
(512, '01839995777', '9420', '2021-09-22 04:55:49'),
(513, '01911268947', '2827', '2021-09-22 05:37:56'),
(514, '01992624766', '3974', '2021-09-22 05:42:38'),
(515, '01824938106', '5488', '2021-09-22 06:58:47'),
(516, '01819888998', '4389', '2021-09-22 07:00:03'),
(517, '01812115243', '5298', '2021-09-22 07:33:18'),
(518, '01717996791', '4880', '2021-09-22 08:14:53'),
(519, '01773693680', '3233', '2021-09-22 08:15:00'),
(520, '01683146008', '9548', '2021-09-22 08:37:02'),
(521, '01717520638', '6638', '2021-09-22 10:05:43'),
(522, '01678307071', '4906', '2021-09-22 10:11:48'),
(523, '01761876597', '9702', '2021-09-22 10:42:55'),
(524, '01875955668', '5343', '2021-09-22 11:12:59'),
(525, '01712147379', '5357', '2021-09-22 11:14:46'),
(526, '01712287927', '1996', '2021-09-22 11:30:46'),
(527, '01717638546', '4821', '2021-09-22 12:20:47'),
(528, '01316689741', '7702', '2021-09-22 12:35:49'),
(529, '01732517136', '2401', '2021-09-22 15:03:08'),
(530, '01615242158', '8144', '2021-09-22 15:01:43'),
(531, '01762250584', '9482', '2021-09-22 15:13:04'),
(532, '01712975610', '7868', '2021-09-22 15:22:27'),
(533, '01713779262', '5094', '2021-09-22 15:34:25'),
(534, '01642444442', '9841', '2021-09-22 16:33:07'),
(535, '01765087875', '4443', '2021-09-22 18:16:32'),
(536, '01636299969', '5120', '2021-09-22 18:43:52'),
(537, '01685482953', '6336', '2021-09-22 18:46:41'),
(538, '01516763126', '9361', '2021-09-22 20:16:17'),
(539, '01910734257', '5101', '2021-09-22 20:18:52'),
(540, '01749670862', '8965', '2021-09-22 20:46:59'),
(541, '01687269035', '8784', '2021-09-22 20:54:22'),
(542, '01676271105', '2645', '2021-09-22 21:59:49'),
(543, '01303678672', '5175', '2021-09-22 22:04:25'),
(544, '01511266481', '8612', '2021-09-22 22:15:14'),
(545, '01688997436', '7976', '2021-09-22 22:13:39'),
(546, '01818666869', '7699', '2021-09-23 02:50:05'),
(547, '01811115057', '7708', '2021-09-23 03:10:15'),
(548, '01683598321', '5295', '2021-09-23 04:32:29'),
(549, '01711944539', '8772', '2021-09-23 10:33:59'),
(550, '01819992993', '4200', '2021-09-25 23:54:46'),
(551, '01711022012', '6240', '2021-09-23 05:57:21'),
(552, '01521496163', '8916', '2021-09-23 06:11:18'),
(553, '01822337577', '2537', '2021-09-23 06:14:44'),
(554, '01580340997', '8105', '2021-09-23 18:12:50'),
(555, '01783322491', '9533', '2021-09-23 06:23:34'),
(556, '01723793580', '5801', '2021-09-23 08:21:47'),
(557, '01914818576', '5486', '2021-09-23 08:43:31'),
(558, '01819048024', '4156', '2021-09-23 08:57:04'),
(559, '01790239367', '7671', '2021-09-23 09:00:00'),
(560, '01614306720', '6907', '2021-09-23 09:17:47'),
(561, '01621783276', '6942', '2021-09-23 09:43:32'),
(562, '01712032278', '3833', '2021-09-23 10:13:13'),
(563, '01767561105', '5917', '2021-09-23 10:03:25'),
(564, '01713730963', '8190', '2021-09-23 12:46:28'),
(565, '01913396352', '9908', '2021-09-23 10:24:54'),
(566, '01721668045', '9929', '2021-09-23 10:39:00'),
(567, '01709395323', '1572', '2021-09-23 11:12:55'),
(568, '01763959139', '2538', '2021-09-23 11:22:41'),
(569, '01719462408', '1271', '2021-09-23 11:30:46'),
(570, '01719424255', '4818', '2021-09-23 11:39:43'),
(571, '01728531655', '7927', '2021-09-23 11:58:03'),
(572, '01861713959', '3543', '2021-09-23 12:06:17'),
(573, '01956656463', '6650', '2021-09-23 12:27:37'),
(574, '01613344203', '1221', '2021-09-23 12:42:11'),
(575, '01772924024', '9371', '2021-09-23 13:34:14'),
(576, '01710190203', '8017', '2021-09-23 12:52:52'),
(577, '01672663739', '2015', '2021-09-23 13:05:08'),
(578, '01303318289', '4537', '2021-09-23 13:08:25'),
(579, '01608259373', '1554', '2021-09-23 13:09:44'),
(580, '01757606984', '9027', '2021-09-23 14:55:05'),
(581, '01791401409', '1962', '2021-09-23 13:20:39'),
(582, '01912081808', '4183', '2021-09-23 13:24:28'),
(583, '01819817473', '6455', '2021-09-23 13:27:38'),
(584, '01937192352', '5634', '2021-09-23 13:53:16'),
(585, '01746465757', '1960', '2021-09-23 13:30:15'),
(586, '01557770121', '6730', '2021-09-23 13:38:30'),
(587, '01912519682', '7308', '2021-09-23 17:32:51'),
(588, '01858433130', '8440', '2021-09-23 14:09:20'),
(589, '01710620822', '2538', '2021-09-23 14:13:40'),
(590, '01717225157', '7668', '2021-09-23 14:15:37'),
(591, '01958677811', '8376', '2021-09-23 14:17:42'),
(592, '01759100707', '6451', '2021-09-23 14:23:21'),
(593, '01755178470', '9856', '2021-09-23 14:19:18'),
(594, '01883934846', '3601', '2021-09-23 14:20:20'),
(595, '01717117277', '2037', '2021-09-23 14:28:20'),
(596, '01966603816', '6894', '2021-09-23 14:34:57'),
(597, '01972967367', '7567', '2021-09-23 14:33:50'),
(598, '01711464781', '3952', '2021-09-23 14:37:04'),
(599, '01303017107', '7706', '2021-09-23 14:43:24'),
(600, '01755607415', '8054', '2021-09-23 14:44:07'),
(601, '01558988046', '5267', '2021-09-23 14:44:56'),
(602, '01911001285', '7510', '2021-09-23 15:06:33'),
(603, '01755881555', '6961', '2021-09-23 15:14:12'),
(604, '01869509293', '4393', '2021-09-23 15:41:37'),
(605, '01741546172', '9128', '2021-09-23 15:50:11'),
(606, '01953501559', '8673', '2021-09-23 15:55:31'),
(607, '01920242445', '5829', '2021-09-23 16:53:30'),
(608, '01625299886', '3787', '2021-09-23 17:24:21'),
(609, '01886415099', '3349', '2021-09-23 18:10:58'),
(610, '01687684264', '3099', '2021-09-23 18:15:04'),
(611, '01717171607', '5461', '2021-09-23 18:27:29'),
(612, '01927056398', '5942', '2021-09-23 18:30:43'),
(613, '01711707025', '3452', '2021-09-23 18:34:24'),
(614, '01632526836', '9272', '2021-09-23 18:36:01'),
(615, '01917163767', '5497', '2021-09-23 18:37:28'),
(616, '01727605558', '6913', '2021-09-23 19:59:59'),
(617, '01731419964', '5940', '2021-09-23 18:44:02'),
(618, '01712370623', '2651', '2021-09-23 19:00:44'),
(619, '01917954033', '4378', '2021-09-23 19:21:56'),
(620, '01712319856', '3146', '2021-09-23 19:51:34'),
(621, '01911157958', '7968', '2021-09-23 19:53:19'),
(622, '01737146966', '7827', '2021-09-23 20:40:01'),
(623, '01715979775', '2060', '2021-09-23 20:55:54'),
(624, '01916408514', '5140', '2021-09-23 21:40:46'),
(625, '01930340030', '9775', '2021-09-23 21:43:17'),
(626, '01643767256', '8986', '2021-09-23 21:50:29'),
(627, '01957075947', '2785', '2021-09-23 22:06:28'),
(628, '01730078244', '7188', '2021-09-24 00:10:49'),
(629, '01724525909', '6164', '2021-09-24 02:16:47'),
(630, '01719331877', '3649', '2021-09-24 02:26:08'),
(631, '01767583585', '3717', '2021-09-24 02:54:45'),
(632, '01885559656', '7007', '2021-09-24 03:09:29'),
(633, '01730429104', '9045', '2021-09-24 03:49:39'),
(634, '01974901014', '1847', '2021-09-24 04:17:16'),
(635, '01939847170', '2609', '2021-09-24 04:21:42'),
(636, '01737041300', '5414', '2021-09-24 05:01:22'),
(637, '01811111362', '1319', '2021-09-25 04:15:14'),
(638, '01814463003', '8330', '2021-09-24 06:01:34'),
(639, '01821057190', '8217', '2021-09-24 06:15:49'),
(640, '01689508640', '9394', '2021-09-24 07:09:12'),
(641, '01759173574', '7828', '2021-09-24 07:17:15'),
(642, '01873041981', '7746', '2021-09-24 07:54:51'),
(643, '01846284223', '2655', '2021-09-24 08:29:38'),
(644, '01953559480', '3511', '2021-09-24 08:50:44'),
(645, '01878102709', '5546', '2021-09-24 08:53:04'),
(646, '01714367541', '1534', '2021-09-24 09:06:16'),
(647, '01951478193', '9712', '2021-09-24 09:09:21'),
(648, '01726749296', '8765', '2021-09-24 09:13:36'),
(649, '01747891233', '7938', '2021-09-24 09:14:27'),
(650, '01923561898', '2408', '2021-09-24 09:26:28'),
(651, '01812339331', '4409', '2021-09-24 09:41:23'),
(652, '01732867969', '6502', '2021-09-24 10:28:34'),
(653, '01746822462', '6608', '2021-09-24 10:35:24'),
(654, '01719363185', '6156', '2021-09-24 10:39:54'),
(655, '01912705553', '2554', '2021-09-24 10:46:54'),
(656, '01920946200', '7568', '2021-09-24 11:08:29'),
(657, '01837295088', '5735', '2021-09-24 11:19:41'),
(658, '01710504375', '3738', '2021-09-24 11:23:37'),
(659, '01632555321', '2073', '2021-09-24 11:36:17'),
(660, '01670117901', '1545', '2021-09-24 12:01:27'),
(661, '01717911239', '2231', '2021-09-24 12:57:53'),
(662, '01868480088', '6960', '2021-09-24 13:22:23'),
(663, '01734515652', '4087', '2021-09-24 14:03:23'),
(664, '01533465513', '2853', '2021-09-24 13:58:43'),
(665, '01878575914', '6081', '2021-09-24 14:09:46'),
(666, '01724312639', '2766', '2021-09-24 14:12:36'),
(667, '01682067506', '6679', '2021-09-24 14:20:59'),
(668, '01740858952', '6115', '2021-09-24 14:24:11'),
(669, '01715158889', '1391', '2021-09-24 14:25:12'),
(670, '01712864541', '8900', '2021-09-24 14:28:18'),
(671, '01978583838', '7891', '2021-09-24 14:33:47'),
(672, '01750317707', '5657', '2021-09-24 14:36:27'),
(673, '01859690624', '4476', '2021-09-24 14:57:22'),
(674, '01769057175', '2859', '2021-09-24 15:07:38'),
(675, '01717462931', '1751', '2021-09-24 16:01:00'),
(676, '01612997003', '3248', '2021-09-24 16:05:00'),
(677, '01771535843', '6242', '2021-09-24 16:10:30'),
(678, '01720171430', '9559', '2021-09-24 16:13:13'),
(679, '01517345240', '9329', '2021-09-24 16:14:11'),
(680, '01517345250', '8173', '2021-09-24 16:17:56'),
(681, '01859787872', '5957', '2021-09-24 16:32:29'),
(682, '01616353142', '8089', '2021-09-24 16:38:26'),
(683, '01718015010', '8092', '2021-09-24 16:40:24'),
(684, '01720200703', '6768', '2021-09-24 16:43:18'),
(685, '01610729526', '9796', '2021-09-24 16:46:13'),
(686, '01923338869', '8282', '2021-09-24 16:48:50'),
(687, '01923338860', '1804', '2021-09-24 16:49:08'),
(688, '01827304275', '5687', '2021-09-24 16:52:25'),
(689, '01690027014', '2137', '2021-09-24 17:07:11'),
(690, '01571295219', '7242', '2021-09-24 17:09:58'),
(691, '01720220304', '8455', '2021-09-24 17:13:05'),
(692, '01956151978', '9009', '2021-09-24 17:19:39'),
(693, '01713704021', '9783', '2021-09-24 17:20:35'),
(694, '01888006267', '5554', '2021-09-24 17:25:16'),
(695, '01766204020', '7555', '2021-09-24 17:28:32'),
(696, '01716534309', '3600', '2021-09-24 17:40:07'),
(697, '01875336410', '1563', '2021-09-24 17:42:11'),
(698, '01918333326', '4644', '2021-09-24 17:50:09'),
(699, '01954597826', '1568', '2021-09-24 17:51:43'),
(700, '01309008951', '2953', '2021-09-24 18:10:56'),
(701, '01683387977', '5504', '2021-09-24 18:12:49'),
(702, '01745194109', '1436', '2021-09-24 18:14:10'),
(703, '01717691113', '8519', '2021-09-24 18:18:39'),
(704, '01911162327', '3302', '2021-09-24 18:20:07'),
(705, '01713517106', '7477', '2021-09-24 18:30:54'),
(706, '01918197067', '6148', '2021-09-24 18:32:54'),
(707, '01715565903', '6035', '2021-09-24 18:36:53'),
(708, '01950132294', '8507', '2021-09-24 18:41:52'),
(709, '01797567108', '6492', '2021-09-24 18:43:31'),
(710, '01717452023', '8652', '2021-09-24 18:55:39'),
(711, '01682837861', '8035', '2021-09-24 19:07:34'),
(712, '01673093160', '5268', '2021-09-24 19:26:34'),
(713, '01722229977', '5771', '2021-09-24 19:27:38'),
(714, '01924314962', '9662', '2021-09-24 19:34:48'),
(715, '01710265204', '1714', '2021-09-24 19:35:44'),
(716, '01721924796', '6614', '2021-09-24 19:59:48'),
(717, '01793841893', '1205', '2021-09-24 19:56:04'),
(718, '01733691133', '7690', '2021-09-24 20:08:48'),
(719, '01924000044', '1113', '2021-09-24 20:44:36'),
(720, '01905146443', '1144', '2021-09-24 23:31:16'),
(721, '01987986893', '7594', '2021-09-25 01:26:14'),
(722, '01713302742', '9783', '2021-09-25 02:17:35'),
(723, '01719716181', '5064', '2021-09-25 02:37:21'),
(724, '01728594379', '8495', '2021-09-25 03:21:58'),
(725, '01680738355', '7461', '2021-09-25 03:25:05'),
(726, '01937229894', '6535', '2021-09-25 03:50:49'),
(727, '01743354023', '5002', '2021-09-25 04:44:10'),
(728, '01743354023', '5002', '2021-09-25 04:44:10'),
(729, '01722400521', '5320', '2021-09-25 05:19:22'),
(730, '01798272470', '8620', '2021-09-25 05:49:48'),
(731, '01811762201', '5227', '2021-09-25 06:00:19'),
(732, '01731691227', '3026', '2021-09-25 06:34:47'),
(733, '01737237697', '7889', '2021-09-25 06:50:09'),
(734, '01740916304', '3065', '2021-09-25 06:58:57'),
(735, '01717450871', '8670', '2021-09-25 08:16:52'),
(736, '01726929050', '5692', '2021-09-25 07:12:46'),
(737, '01753170208', '8552', '2021-09-25 07:23:44'),
(738, '01620194524', '9089', '2021-09-25 07:35:33'),
(739, '01757980098', '8620', '2021-09-25 07:57:45'),
(740, '01714958585', '7418', '2021-09-25 08:02:27'),
(741, '01886637293', '7781', '2021-09-25 08:09:58'),
(742, '01738202261', '2548', '2021-09-25 08:26:38'),
(743, '01749655464', '1952', '2021-09-25 08:31:22'),
(744, '01752035275', '8988', '2021-09-25 08:30:06'),
(745, '01829094584', '2707', '2021-09-25 08:50:11'),
(746, '01787525840', '5733', '2021-09-25 08:53:06'),
(747, '01991461203', '1042', '2021-09-25 08:51:56'),
(748, '01776833845', '1248', '2021-09-25 08:52:11'),
(749, '01717299919', '7404', '2021-09-25 08:54:51'),
(750, '01725230230', '8504', '2021-09-25 09:00:59'),
(751, '01721304430', '2770', '2021-09-25 09:03:38'),
(752, '01796644111', '5881', '2021-09-25 09:15:23'),
(753, '01812872003', '7105', '2021-09-25 09:16:36'),
(754, '01771102121', '1588', '2021-09-25 09:22:30'),
(755, '01875777776', '7902', '2021-09-25 09:35:08'),
(756, '01851793528', '5652', '2021-09-25 09:41:18'),
(757, '01753365260', '9554', '2021-09-25 09:46:30'),
(758, '01680486824', '7382', '2021-09-25 09:45:42'),
(759, '01877755643', '9020', '2021-09-25 09:49:32'),
(760, '01833685662', '2937', '2021-09-25 09:49:53'),
(761, '01753665260', '9370', '2021-09-25 10:10:54'),
(762, '01970970518', '5788', '2021-09-25 10:19:31'),
(763, '01976540134', '3917', '2021-09-25 10:29:19'),
(764, '01844797955', '6229', '2021-09-25 10:38:41'),
(765, '01980090627', '4631', '2021-09-25 10:44:37'),
(766, '01945562234', '6687', '2021-09-25 10:47:42'),
(767, '01670013742', '4805', '2021-09-25 11:25:34'),
(768, '01910581284', '1972', '2021-09-25 11:27:49'),
(769, '01755939460', '4865', '2021-09-25 12:20:39'),
(770, '01642945914', '9274', '2021-09-25 12:36:52'),
(771, '01856515971', '8811', '2021-09-25 12:38:32'),
(772, '01723846255', '7678', '2021-09-25 13:15:57'),
(773, '01670555068', '4936', '2021-09-25 13:33:21'),
(774, '01710939405', '1298', '2021-09-25 13:36:56'),
(775, '01794925362', '3217', '2021-09-25 13:48:37'),
(776, '01876966890', '7844', '2021-09-25 13:51:54'),
(777, '01712049447', '1700', '2021-09-25 14:30:38'),
(778, '01716613994', '5858', '2021-09-25 14:40:43'),
(779, '01915398809', '9247', '2021-09-25 14:58:47'),
(780, '01918914605', '1177', '2021-09-25 15:01:17'),
(781, '01754469005', '5014', '2021-09-25 15:29:38'),
(782, '01706649787', '8721', '2021-09-25 16:00:20'),
(783, '01721699178', '9170', '2021-09-25 16:22:37'),
(784, '01725764793', '2911', '2021-09-25 16:49:42'),
(785, '01610995276', '4476', '2021-09-25 16:57:57'),
(786, '01711243734', '8141', '2021-09-25 16:58:10'),
(787, '01318191467', '7711', '2021-09-25 17:00:40'),
(788, '01303275265', '5783', '2021-09-25 17:04:20'),
(789, '01630389031', '9503', '2021-09-25 17:17:58'),
(790, '01727656883', '1867', '2021-09-25 17:18:02'),
(791, '01991170264', '6499', '2021-09-25 17:50:29'),
(792, '01729494848', '9974', '2021-09-25 18:31:19'),
(793, '01674749533', '2647', '2021-09-25 18:33:26'),
(794, '01773322165', '9502', '2021-09-25 18:36:22'),
(795, '01746649044', '4012', '2021-09-25 18:55:30'),
(796, '01996819753', '8828', '2021-09-25 18:56:07'),
(797, '01704606249', '4044', '2021-09-25 19:04:14'),
(798, '01997285406', '7095', '2021-09-25 19:08:28'),
(799, '01715046318', '7406', '2021-09-25 19:21:36'),
(800, '01996875050', '8049', '2021-09-25 20:05:27'),
(801, '01673022016', '9074', '2021-09-25 20:08:52'),
(802, '01886377173', '8091', '2021-09-25 20:12:56'),
(803, '01610563258', '6385', '2021-09-25 21:31:51'),
(804, '01747714377', '5296', '2021-09-25 21:39:24'),
(805, '01740982400', '8356', '2021-09-25 22:11:46'),
(806, '01912730623', '4701', '2021-09-25 22:19:34'),
(807, '01907489691', '1483', '2021-09-26 00:18:23'),
(808, '01852397907', '2173', '2021-09-26 01:11:23'),
(809, '01737020148', '7374', '2021-09-26 01:13:17'),
(810, '01772752965', '4675', '2021-09-26 02:02:37'),
(811, '01611186729', '5137', '2021-09-26 03:07:37'),
(812, '01739656821', '3318', '2021-09-26 03:12:56'),
(813, '01838378046', '2548', '2021-09-26 03:17:55'),
(814, '01917429708', '8926', '2021-09-26 03:26:04'),
(815, '01713335585', '2917', '2021-09-26 03:30:29'),
(816, '01307591928', '7321', '2021-09-26 03:31:20'),
(817, '01755996299', '7115', '2021-09-26 04:06:23'),
(818, '01945883123', '4102', '2021-09-26 04:26:58'),
(819, '01854410183', '3231', '2021-09-26 04:52:32'),
(820, '01922666647', '5115', '2021-09-26 04:59:43'),
(821, '01518333788', '1155', '2021-09-26 05:01:03'),
(822, '01954231151', '7111', '2021-09-26 05:12:29'),
(823, '01961186681', '8353', '2021-09-26 05:51:36'),
(824, '01980149962', '2915', '2021-09-26 05:57:39'),
(825, '01766819249', '1656', '2021-09-26 06:14:11'),
(826, '01706677838', '5119', '2021-09-26 06:21:05'),
(827, '01926031467', '3101', '2021-09-26 06:37:09'),
(828, '01854351402', '8627', '2021-09-26 06:39:40'),
(829, '01862899585', '9711', '2021-09-26 06:46:21'),
(830, '01764914572', '9116', '2021-09-27 09:28:41'),
(831, '01680363143', '8553', '2021-09-26 06:53:14'),
(832, '01726559026', '7236', '2021-09-26 07:07:28'),
(833, '01707544724', '5941', '2021-09-26 07:28:09'),
(834, '01753412941', '2767', '2021-09-26 07:53:46'),
(835, '01715752284', '8208', '2021-09-26 08:14:39'),
(836, '01761662026', '7368', '2021-09-26 08:24:27'),
(837, '01726444042', '8498', '2021-09-26 08:57:50'),
(838, '01707749832', '5557', '2021-09-26 09:44:01'),
(839, '01814372789', '9729', '2021-09-26 09:50:50'),
(840, '01999181024', '2354', '2021-09-26 09:54:52'),
(841, '01717120699', '3784', '2021-09-26 10:29:36'),
(842, '01767120462', '4749', '2021-09-26 10:37:58'),
(843, '01779236434', '4159', '2021-09-26 10:57:18'),
(844, '01633727272', '8173', '2021-09-26 11:25:16'),
(845, '01714815290', '9077', '2021-09-26 11:30:19'),
(846, '01712181140', '6281', '2021-09-26 11:42:05'),
(847, '01815203032', '2334', '2021-09-26 11:59:21'),
(848, '01713794676', '4588', '2021-09-26 11:58:51'),
(849, '01810139966', '1130', '2021-09-26 12:07:14'),
(850, '01941076515', '6809', '2021-09-26 12:07:50'),
(851, '01832340891', '1636', '2021-09-26 12:10:50'),
(852, '01812934201', '7143', '2021-09-26 12:10:50'),
(853, '01924768642', '2394', '2021-09-26 12:59:53'),
(854, '01745360614', '4728', '2021-09-26 13:19:48'),
(855, '01621974784', '3487', '2021-09-26 13:29:50'),
(856, '01521220594', '9556', '2021-09-26 13:51:39'),
(857, '01731745213', '5459', '2021-09-26 13:53:33'),
(858, '01921589631', '8942', '2021-09-26 13:54:24'),
(859, '01677599065', '7986', '2021-09-26 14:18:03'),
(860, '01726800028', '2513', '2021-09-26 14:19:11'),
(861, '01794440545', '7892', '2021-09-26 14:30:04'),
(862, '01777755868', '3642', '2021-09-26 14:38:17'),
(863, '01712359458', '1417', '2021-09-26 14:51:06'),
(864, '01685061937', '3007', '2021-09-26 15:00:17'),
(865, '01723095159', '1131', '2021-09-26 15:04:00'),
(866, '01723092159', '9637', '2021-09-26 15:04:24'),
(867, '01799816826', '1324', '2021-09-26 15:04:58'),
(868, '01712658495', '1755', '2021-09-26 15:23:40'),
(869, '01727628630', '3980', '2021-09-26 15:40:17'),
(870, '01838095257', '9206', '2021-09-26 15:44:34'),
(871, '01766657633', '5773', '2021-09-26 15:47:17'),
(872, '01571721733', '4301', '2021-09-26 15:48:17'),
(873, '01742038404', '2738', '2021-09-26 15:57:01'),
(874, '01914866613', '5140', '2021-09-26 15:59:58'),
(875, '01914866613', '5140', '2021-09-26 15:59:58'),
(876, '01733254877', '8893', '2021-09-26 16:05:04'),
(877, '01836515252', '5521', '2021-09-26 16:11:32'),
(878, '01701360153', '7218', '2021-09-26 16:14:58'),
(879, '01727089969', '3543', '2021-09-26 16:43:50'),
(880, '01912897178', '9635', '2021-09-26 16:56:02'),
(881, '01675115254', '5368', '2021-09-26 17:32:55'),
(882, '01792146712', '6690', '2021-09-26 17:36:25'),
(883, '01785515615', '7843', '2021-09-26 18:20:52'),
(884, '01863429015', '3005', '2021-09-26 18:25:56'),
(885, '01722223131', '8011', '2021-09-26 18:38:56'),
(886, '01946815212', '8747', '2021-09-26 18:49:11'),
(887, '01756767809', '9184', '2021-09-26 19:02:14'),
(888, '01748956975', '4269', '2021-09-26 19:12:18'),
(889, '02722459995', '6399', '2021-09-26 19:16:15'),
(890, '01722459995', '4135', '2021-09-26 19:16:53'),
(891, '01676455104', '6895', '2021-09-26 19:23:54'),
(892, '01882776695', '2163', '2021-09-26 19:34:13'),
(893, '01632870017', '1623', '2021-09-26 19:45:14'),
(894, '01675148107', '4573', '2021-09-26 20:57:53'),
(895, '01303502955', '8266', '2021-09-26 21:47:30'),
(896, '01680278887', '5524', '2021-09-26 22:34:20'),
(897, '01713452177', '2978', '2021-09-26 23:24:39'),
(898, '01860841484', '6281', '2021-09-27 01:49:43'),
(899, '01711125324', '4417', '2021-09-27 00:47:47'),
(900, '01737717485', '9126', '2021-09-27 02:14:39'),
(901, '01712503880', '9378', '2021-09-27 02:15:51'),
(902, '01962417241', '9392', '2021-09-27 04:01:05'),
(903, '01706040263', '9296', '2021-09-27 05:12:48'),
(904, '01765299041', '1196', '2021-09-27 05:13:03'),
(905, '01614601834', '2800', '2021-09-27 05:27:18'),
(906, '01737919275', '2384', '2021-09-27 05:29:04'),
(907, '01711102840', '7878', '2021-09-27 05:41:59'),
(908, '01710673131', '7745', '2021-09-27 06:02:44'),
(909, '01863333662', '6309', '2021-09-27 06:14:27'),
(910, '01740865456', '6258', '2021-09-27 06:18:39'),
(911, '01924082486', '7318', '2021-09-27 06:19:52'),
(912, '01717732164', '7914', '2021-09-27 06:36:25'),
(913, '01789822222', '9944', '2021-09-27 06:40:11'),
(914, '01913540622', '2068', '2021-09-27 06:44:01'),
(915, '01629068034', '4304', '2021-09-27 06:48:04'),
(916, '01784248126', '8030', '2021-09-27 07:42:39'),
(917, '01714788226', '3551', '2021-09-27 07:41:44'),
(918, '01926130753', '9201', '2021-09-27 07:42:07'),
(919, '01711009592', '8544', '2021-09-27 07:51:10'),
(920, '01761845827', '3023', '2021-09-27 09:18:30'),
(921, '01936268683', '5673', '2021-09-27 09:53:34'),
(922, '01741472665', '9231', '2021-09-27 10:03:48'),
(923, '01302418964', '9425', '2021-09-27 10:12:38'),
(924, '01710553245', '3985', '2021-09-27 11:24:32'),
(925, '01822898208', '8435', '2021-09-27 11:36:02'),
(926, '01714854342', '9563', '2021-09-27 11:40:46'),
(927, '01815531421', '3996', '2021-09-27 11:43:05'),
(928, '01913689364', '7257', '2021-09-27 11:46:50'),
(929, '01741440864', '8121', '2021-09-27 12:02:51'),
(930, '01826132529', '8538', '2021-09-27 12:13:59'),
(931, '01770541900', '2204', '2021-09-27 12:37:30'),
(932, '01735170768', '1942', '2021-09-27 13:37:21'),
(933, '01677369006', '4024', '2021-09-27 12:50:49'),
(934, '01322076489', '9224', '2021-09-27 13:28:32'),
(935, '01611252385', '4648', '2021-09-27 13:37:58'),
(936, '01630184710', '9458', '2021-09-27 13:52:19'),
(937, '01717269120', '3340', '2021-09-27 14:02:17'),
(938, '01313631149', '6644', '2021-09-27 14:19:45'),
(939, '01312342377', '3070', '2021-09-27 14:24:16'),
(940, '01727779521', '5734', '2021-09-27 14:57:28'),
(941, '01779907593', '2596', '2021-09-27 15:09:41'),
(942, '01716133666', '3502', '2021-09-27 15:22:09'),
(943, '01715267266', '9707', '2021-09-27 15:40:11'),
(944, '01626291828', '3535', '2021-09-27 15:58:42'),
(945, '01827692445', '6943', '2021-09-27 15:54:42'),
(946, '01829379188', '8481', '2021-09-27 15:58:20'),
(947, '01782392177', '5978', '2021-09-27 16:04:21'),
(948, '01688198991', '4063', '2021-09-27 16:46:28'),
(949, '01912758852', '5247', '2021-09-27 16:58:36'),
(950, '01712055420', '8151', '2021-09-27 17:03:45'),
(951, '01837284863', '3304', '2021-09-27 17:04:01'),
(952, '01719474979', '1024', '2021-09-27 17:09:51'),
(953, '01722843278', '4230', '2021-09-27 17:17:03'),
(954, '01842803777', '1921', '2021-09-27 17:27:03'),
(955, '01913654311', '4538', '2021-09-27 17:29:21'),
(956, '01713683291', '9178', '2021-09-27 17:49:44'),
(957, '01814159806', '2635', '2021-09-27 17:56:32'),
(958, '01767822262', '1390', '2021-09-27 18:08:45'),
(959, '01824511919', '4004', '2021-09-27 18:16:56'),
(960, '01711507708', '9849', '2021-09-27 18:46:48'),
(961, '01681247044', '6302', '2021-09-27 18:55:41'),
(962, '01712949821', '1832', '2021-09-27 19:04:59'),
(963, '01670074096', '1411', '2021-09-27 19:06:51'),
(964, '01879994366', '8998', '2021-09-27 19:31:54'),
(965, '01718294139', '4199', '2021-09-27 19:56:37'),
(966, '01612143040', '5673', '2021-09-27 20:07:35'),
(967, '01911074773', '7242', '2021-09-28 00:21:43'),
(968, '01711206381', '8827', '2021-09-28 02:02:36'),
(969, '01822194154', '9974', '2021-09-28 02:26:05'),
(970, '01719976841', '6689', '2021-09-28 02:27:56'),
(971, '01755703858', '1426', '2021-09-28 02:35:48'),
(972, '01403976566', '7823', '2021-09-28 03:41:15'),
(973, '01815633334', '8538', '2021-09-28 03:48:07'),
(974, '01926334959', '4472', '2021-09-28 03:55:41'),
(975, '01913234314', '1534', '2021-09-28 04:11:24'),
(976, '01832592302', '8625', '2021-09-28 04:23:04'),
(977, '01988801980', '6102', '2021-09-28 04:42:51'),
(978, '01766918130', '1107', '2021-09-28 04:48:05'),
(979, '01719134221', '5152', '2021-09-28 05:03:01'),
(980, '01303536535', '1155', '2021-09-28 05:43:12'),
(981, '01735667938', '6918', '2021-09-28 05:47:57');
INSERT INTO `guest_verify` (`id`, `phone`, `code`, `created_at`) VALUES
(982, '01686483821', '2047', '2021-09-28 06:13:35'),
(983, '01871001808', '9202', '2021-09-28 06:18:02'),
(984, '01730354841', '5140', '2021-09-28 06:26:41'),
(985, '01682412471', '6412', '2021-09-28 07:15:43'),
(986, '01642029123', '2198', '2021-09-28 07:25:59'),
(987, '01521423658', '7000', '2021-09-28 07:26:52'),
(988, '01833737205', '2709', '2021-09-28 07:27:22'),
(989, '01935312217', '8696', '2021-09-28 07:27:56'),
(990, '01716442164', '6934', '2021-09-28 07:31:08'),
(991, '01730606890', '2044', '2021-09-28 07:31:16'),
(992, '01996333399', '8716', '2021-09-28 07:36:40'),
(993, '01835554455', '2437', '2021-09-28 08:03:23'),
(994, '01781968591', '4192', '2021-09-28 08:11:45'),
(995, '01879925778', '8756', '2021-09-28 08:13:17'),
(996, '01610797444', '8387', '2021-09-28 08:31:58'),
(997, '01712826371', '6719', '2021-09-28 08:37:11'),
(998, '01924504018', '3503', '2021-09-28 09:06:10'),
(999, '01736862801', '4013', '2021-09-28 09:23:37'),
(1000, '01302694450', '6081', '2021-09-28 11:37:20'),
(1001, '01826601637', '6725', '2021-09-28 09:48:46'),
(1002, '01405046427', '7328', '2021-09-28 09:48:54'),
(1003, '01712608952', '9726', '2021-09-28 10:14:36'),
(1004, '01635332562', '9042', '2021-09-28 10:14:34'),
(1005, '01635332562', '1995', '2021-09-28 10:14:34'),
(1006, '01633595982', '4676', '2021-09-28 10:22:56'),
(1007, '01743145500', '8456', '2021-09-28 10:29:56'),
(1008, '01631361174', '8465', '2021-09-28 10:27:44'),
(1009, '01747459640', '8853', '2021-09-28 10:38:50'),
(1010, '01711110685', '7693', '2021-09-28 10:58:32'),
(1011, '01711516808', '2624', '2021-09-28 11:26:57'),
(1012, '01728723614', '6712', '2021-09-28 12:14:15'),
(1013, '01779444474', '9509', '2021-09-28 12:10:35'),
(1014, '01969863016', '5419', '2021-09-28 12:21:56'),
(1015, '01683952047', '8426', '2021-09-28 13:08:44'),
(1016, '01821381391', '3425', '2021-09-28 13:17:05'),
(1017, '01646045515', '3687', '2021-09-28 15:01:54'),
(1018, '01612739875', '7962', '2021-09-28 15:02:17'),
(1019, '01844541436', '2870', '2021-09-28 15:04:01'),
(1020, '01567835546', '2732', '2021-09-28 16:05:45'),
(1021, '01885616283', '7888', '2021-09-28 16:10:22'),
(1022, '01407310680', '5138', '2021-09-28 16:09:05'),
(1023, '01682961561', '8504', '2021-09-28 17:29:30'),
(1024, '01717103020', '5481', '2021-09-28 17:38:45'),
(1025, '01717432141', '5139', '2021-09-28 18:29:35'),
(1026, '01788283580', '4817', '2021-11-17 04:08:06'),
(1027, '01814079887', '3110', '2021-11-17 12:16:21'),
(1028, '01619222777', '7491', '2021-11-18 15:28:38'),
(1029, '01710624850', '6942', '2021-11-04 17:41:31'),
(1030, '01974110118', '1861', '2021-11-17 12:27:04'),
(1031, '01711261713', '7154', '2021-11-05 10:15:18'),
(1032, '01819026960', '7389', '2021-11-05 18:33:07'),
(1033, '01819603665', '3073', '2021-11-08 15:40:46'),
(1034, '01721016179', '8163', '2021-11-10 06:24:50'),
(1035, '01400031869', '1641', '2021-11-23 06:23:37'),
(1036, '01601343955', '4167', '2021-11-12 22:15:21'),
(1037, '01601343954', '4186', '2021-11-12 22:17:27'),
(1038, '01720608770', '7707', '2021-11-12 22:56:09'),
(1039, '01827225464', '9390', '2021-11-13 01:42:51'),
(1040, '01851206951', '5468', '2021-11-13 06:20:50'),
(1041, '01792329499', '5950', '2021-11-13 09:25:48'),
(1042, '01690036995', '4908', '2021-11-13 09:55:22'),
(1043, '01640868784', '5836', '2021-11-13 14:21:03'),
(1044, '01833482148', '2965', '2021-11-14 17:17:02'),
(1045, '01580906675', '5410', '2021-11-14 17:32:20'),
(1046, '01777363037', '9705', '2021-11-14 17:32:21'),
(1047, '01857922724', '7431', '2021-11-17 12:26:44'),
(1048, '01817252814', '7556', '2021-11-15 13:15:28'),
(1049, '01717127566', '9268', '2021-11-17 07:01:38'),
(1050, '01914860002', '8804', '2021-11-17 11:39:45'),
(1051, '01716369877', '7086', '2021-11-17 13:33:35'),
(1052, '01611419794', '7378', '2021-11-17 13:39:44'),
(1053, '01892390633', '2482', '2021-11-17 13:40:01'),
(1054, '01832753999', '5990', '2021-11-17 13:52:20'),
(1055, '01972753990', '7253', '2021-11-17 13:54:15'),
(1056, '01782325293', '5594', '2021-11-17 13:59:33'),
(1057, '01710495630', '6128', '2021-11-17 14:07:19'),
(1058, '01716950130', '8201', '2021-11-17 14:18:26'),
(1059, '01937215695', '9692', '2021-11-17 15:40:04'),
(1060, '01811360891', '1947', '2021-11-17 16:23:43'),
(1061, '01704768774', '6455', '2021-11-17 16:29:34'),
(1062, '01637696545', '9458', '2021-11-17 17:28:01'),
(1063, '01782675834', '1111', '2021-11-17 17:55:50'),
(1064, '01647758969', '2787', '2021-11-18 00:25:13'),
(1065, '01911418648', '5745', '2021-11-18 01:32:26'),
(1066, '01815345045', '8951', '2021-11-18 01:56:53'),
(1067, '01673063450', '6427', '2021-11-18 02:23:26'),
(1068, '01628277787', '2321', '2021-11-18 02:58:10'),
(1069, '01719290014', '3732', '2021-11-18 03:20:30'),
(1070, '01878764103', '8375', '2021-11-18 03:37:15'),
(1071, '01999489538', '9881', '2021-11-18 04:34:47'),
(1072, '01824700704', '3867', '2021-11-18 05:26:49'),
(1073, '01716950716', '6885', '2021-11-21 02:31:22'),
(1074, '01611247028', '1009', '2021-11-18 07:44:20'),
(1075, '01735000303', '2126', '2021-11-19 13:40:15'),
(1076, '01861640564', '8085', '2021-11-18 12:58:57'),
(1077, '01830766654', '3666', '2021-11-18 15:06:37'),
(1078, '01814028293', '4020', '2021-11-18 15:53:28'),
(1079, '01850005678', '2699', '2021-11-18 20:08:55'),
(1080, '01724748023', '8885', '2021-11-19 05:51:16'),
(1081, '01887335457', '2375', '2021-11-19 08:27:33'),
(1082, '01712723526', '2416', '2021-11-19 12:46:27'),
(1083, '01960191455', '8198', '2021-11-19 14:01:58'),
(1084, '01614200532', '1448', '2021-11-19 18:19:50'),
(1085, '01714759087', '8730', '2021-11-20 01:56:09'),
(1086, '01829922774', '5812', '2021-11-20 03:34:30'),
(1087, '01856711101', '9351', '2021-11-20 08:33:38'),
(1088, '01628898659', '2274', '2021-11-20 12:52:04'),
(1089, '01627361015', '3454', '2021-11-24 00:20:02'),
(1090, '01717686778', '4656', '2021-11-20 17:26:25'),
(1091, '01710349788', '2650', '2021-11-21 03:53:18'),
(1092, '01838936716', '1063', '2021-11-22 14:13:30'),
(1093, '01646308182', '4321', '2021-11-21 14:11:44'),
(1094, '01792106967', '5115', '2021-11-22 00:19:21'),
(1095, '01857206673', '9094', '2021-11-21 18:36:37'),
(1096, '01305987756', '5169', '2021-11-23 08:03:34'),
(1097, '01400305953', '3707', '2021-11-22 05:30:25'),
(1098, '01734643950', '5613', '2021-11-22 15:05:50'),
(1099, '01715915776', '6390', '2021-11-22 15:52:15'),
(1100, '01710924530', '5514', '2021-11-23 01:11:15'),
(1101, '01834583417', '3507', '2021-11-23 01:12:59'),
(1102, '01739175250', '4418', '2021-11-23 01:36:19'),
(1103, '01302780212', '4410', '2021-11-23 03:32:48'),
(1104, '01857946160', '7931', '2021-11-23 05:15:59'),
(1105, '01712816669', '2222', '2021-11-23 05:59:02'),
(1106, '01872205290', '5115', '2021-11-23 06:20:28'),
(1107, '01829984145', '3709', '2021-11-23 06:34:20'),
(1108, '01871853837', '5375', '2021-11-23 08:07:11'),
(1109, '01725978480', '1999', '2021-11-23 11:12:36'),
(1110, '01621932392', '5203', '2021-11-23 11:22:09'),
(1111, '01792236001', '2693', '2021-11-23 11:29:15'),
(1112, '01916841869', '9358', '2021-11-23 12:12:46'),
(1113, '01753503062', '4049', '2021-11-23 12:32:04'),
(1114, '01568107622', '2514', '2021-11-23 12:32:16'),
(1115, '01831110461', '5836', '2021-11-23 12:53:01'),
(1116, '01716396114', '9014', '2021-11-23 14:51:33'),
(1117, '01568108354', '6977', '2021-11-23 15:52:33'),
(1118, '01991210355', '1219', '2021-11-23 16:30:37'),
(1119, '01887039613', '5753', '2021-11-23 17:15:23'),
(1120, '01647183443', '9785', '2021-11-24 04:50:47'),
(1121, '01626385044', '9983', '2021-11-24 09:53:44'),
(1122, '01789851491', '2631', '2021-11-24 10:31:19'),
(1123, '01978977209', '2199', '2021-11-24 14:06:23'),
(1124, '01973196825', '3690', '2021-11-24 18:48:40'),
(1125, '01610804321', '9772', '2021-11-25 06:12:29'),
(1126, '01911647930', '7124', '2021-11-25 06:18:37'),
(1127, '01822574766', '6435', '2021-11-25 07:32:44'),
(1128, '01904550059', '5662', '2021-11-25 08:23:21'),
(1129, '01836084562', '1522', '2021-11-25 08:58:00'),
(1130, '01770026472', '9310', '2021-11-25 10:56:55'),
(1131, '01708778520', '5661', '2021-11-25 12:01:12'),
(1132, '01881844221', '3661', '2021-11-25 12:09:34'),
(1133, '01623368907', '1722', '2021-11-25 12:28:36'),
(1134, '01902563966', '2462', '2021-11-25 12:34:23'),
(1135, '01906119888', '7409', '2021-11-25 12:37:38'),
(1136, '01642382407', '2799', '2021-11-25 12:41:09'),
(1137, '01822124123', '7393', '2021-11-25 12:51:26'),
(1138, '01712252108', '9954', '2021-11-25 16:36:35'),
(1139, '01766743758', '7350', '2021-11-25 17:37:51'),
(1140, '01732357688', '8606', '2021-11-26 05:34:25'),
(1141, '01903468803', '2834', '2021-11-26 06:04:20'),
(1142, '01817916153', '6073', '2021-11-26 08:21:20'),
(1143, '01821431924', '1322', '2021-11-26 08:24:30'),
(1144, '01839496483', '6573', '2021-11-27 05:36:37'),
(1145, '01300765704', '9505', '2021-11-27 12:47:09'),
(1146, '01922218898', '7856', '2021-11-29 05:57:11'),
(1147, '01911852614', '1648', '2021-11-28 02:23:58'),
(1148, '01724415691', '2438', '2021-11-28 03:44:11'),
(1149, '01979273685', '1275', '2021-11-28 18:07:38'),
(1150, '01827146778', '2025', '2021-11-29 00:10:08'),
(1151, '01707749122', '4426', '2021-11-29 01:45:09'),
(1152, '01717952583', '5356', '2021-11-29 01:57:38'),
(1153, '01609873171', '6086', '2021-11-29 02:11:59'),
(1154, '01870480169', '8708', '2021-11-29 02:21:46'),
(1155, '01319991804', '6346', '2021-11-29 02:34:58'),
(1156, '01316419472', '9071', '2021-11-29 02:53:30'),
(1157, '01835322547', '8555', '2021-11-29 03:00:22'),
(1158, '01838318248', '1462', '2021-11-29 03:02:20'),
(1159, '01799963052', '6855', '2021-11-29 03:07:08'),
(1160, '01903457280', '8762', '2021-11-29 03:35:39'),
(1161, '01881265121', '1863', '2021-11-29 03:51:36'),
(1162, '01739304163', '4339', '2021-11-29 04:18:27'),
(1163, '01721557524', '7793', '2021-11-29 04:37:46'),
(1164, '01609660888', '8377', '2021-11-29 05:06:07'),
(1165, '01905277069', '6130', '2021-11-29 07:40:19'),
(1166, '01750200140', '1663', '2021-11-29 08:37:17'),
(1167, '01970703174', '4334', '2021-11-29 08:42:04'),
(1168, '01722175680', '5525', '2021-11-29 12:21:29'),
(1169, '01703704548', '5508', '2021-11-29 12:59:33'),
(1170, '01765063763', '3893', '2021-11-29 13:59:51'),
(1171, '01876491886', '3687', '2021-11-29 17:49:44'),
(1172, '01700000000', '9869', '2021-12-02 09:25:46'),
(1173, '01777919189', '6816', '2021-12-02 09:26:33'),
(0, '01315914262', '2285', '2022-06-05 14:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `holyday`
--

CREATE TABLE `holyday` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holyday`
--

INSERT INTO `holyday` (`id`, `date`, `title`, `created_at`, `updated_at`) VALUES
(1, '2021-09-10', 'Friday update', '2021-09-07 12:10:47', '2021-09-07 22:10:47'),
(2, '2021-09-11', 'staurday update', '2021-09-07 12:25:54', '2021-09-07 22:25:54'),
(3, '2021-09-09', 'test', '2021-09-06 16:54:39', '2021-09-06 16:54:39'),
(4, '2021-09-01', 'test', '2021-09-06 17:39:54', '2021-09-06 17:39:54'),
(5, '2021-09-03', 'test', '2021-09-10 08:03:39', '2021-09-10 18:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `how_buys`
--

CREATE TABLE `how_buys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_buys`
--

INSERT INTO `how_buys` (`id`, `description`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"margin-left: 25px;\"><br><br></p>', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guest_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` int(11) DEFAULT '0',
  `online_pay_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_pay_date` datetime DEFAULT NULL,
  `deposit_date` date DEFAULT NULL,
  `default_deposite_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mobile_acc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redeem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward_points` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `hashkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` mediumtext COLLATE utf8mb4_unicode_ci,
  `reject_note` mediumtext COLLATE utf8mb4_unicode_ci,
  `complete_note` mediumtext COLLATE utf8mb4_unicode_ci,
  `package_id` int(11) DEFAULT NULL,
  `package_days` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `date`, `invoice_id`, `delivery_id`, `guest_id`, `coupon_id`, `delivery_charge`, `payment_type`, `payment_status`, `online_pay_id`, `online_pay_date`, `deposit_date`, `default_deposite_time`, `mobile_acc`, `trans_id`, `bank_file`, `discount`, `sub_total`, `redeem`, `grand_total`, `reward_points`, `session_id`, `status`, `hashkey`, `note`, `reject_note`, `complete_note`, `package_id`, `package_days`, `created_at`, `updated_at`) VALUES
(1, '28-02-2022', '2202280001', 1, 122, NULL, '120', 'COD', 0, NULL, NULL, NULL, '2022-02-28 14:19:24', NULL, NULL, NULL, '0', '400', NULL, '520', NULL, 'GlxcI7UFbkxHtvFJ96qQYpZ5DqriHJsGeDStJBCC', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-02-28 02:19:24', '2022-02-28 02:19:27'),
(2, '28-02-2022', '2202280002', 2, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-02-28 14:20:08', NULL, NULL, NULL, '0', '2400', NULL, '2460', NULL, 'EYaIBXkHk5GhCVMoh2I1xpvwYnE58GLLrCKy3tFI', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-02-28 02:20:08', '2022-02-28 02:20:11'),
(3, '06-03-2022', '2203060001', 3, 122, NULL, '120', NULL, 0, NULL, NULL, NULL, '2022-03-06 13:18:46', NULL, NULL, NULL, '0', '600', NULL, '720', NULL, '8mcVvPjnW5Yrdpq9gvzbJoOJp18lM084xeybm56g', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 01:18:46', '2022-03-06 01:18:46'),
(4, '06-03-2022', '2203060002', 4, 122, NULL, '120', NULL, 0, NULL, NULL, NULL, '2022-03-06 13:23:17', NULL, NULL, NULL, '0', '1200', NULL, '1320', NULL, 'r5RdiG9IK87w6KRtgkzllJJWF3esFJ95OQa8VMEA', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 01:23:17', '2022-03-06 01:23:17'),
(5, '06-03-2022', '2203060003', 5, 122, NULL, '60', NULL, 0, NULL, NULL, NULL, '2022-03-06 13:28:46', NULL, NULL, NULL, '0', '600', NULL, '660', NULL, 'mLIpIppcsPRki5YCkzw0NekLMSe8HmBBHTGlls9L', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 01:28:46', '2022-03-06 01:28:46'),
(6, '06-03-2022', '2203060004', 6, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 13:30:43', NULL, NULL, NULL, '0', '900', NULL, '960', NULL, 'dFm7ZNJYqb7W5aLrPVF9Sw5YywkKrzAZl7M1y0a5', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 01:30:43', '2022-03-06 01:32:50'),
(7, '06-03-2022', '2203060005', 7, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 13:34:09', NULL, NULL, NULL, '0', '600', NULL, '660', NULL, 'ZGMXYYaq4GI9Ct1oLBpYIFBzU8f4jr6wnqOnr58m', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 01:34:09', '2022-03-06 01:34:12'),
(8, '06-03-2022', '2203060006', 8, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 13:35:33', NULL, NULL, NULL, '0', '600', NULL, '660', NULL, '892BnAOVSHd8YsxSQCyP1PY5T6lKUMEjh4VK36tg', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 01:35:33', '2022-03-06 01:35:39'),
(9, '06-03-2022', '2203060007', 9, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 13:39:40', NULL, NULL, NULL, '0', '900', NULL, '960', '300', 'zv59ud4SWTnxSc2fGKJZ6smkkYUM0XJr7JIlgNXy', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 01:39:40', '2022-03-06 01:39:43'),
(10, '06-03-2022', '2203060008', 10, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 13:44:32', NULL, NULL, NULL, '0', '600', NULL, '660', '200', 'iei8XqrNTiEjmv6IDfH4SnH26MWSdDkTzcb82Dji', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 01:44:32', '2022-03-06 01:45:18'),
(11, '06-03-2022', '2203060009', 11, 122, NULL, '60', 'bkash', 0, NULL, NULL, NULL, '2022-03-06 13:45:48', '01777919189', '23432423432423', NULL, '0', '700', NULL, '760', '150', 'q0iV8ulxTu1ANyvckt9xEab9l1Oi4BJmEnYRm0be', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 01:45:48', '2022-03-06 01:45:55'),
(12, '06-03-2022', '2203060010', 12, 122, NULL, '120', NULL, 0, NULL, NULL, NULL, '2022-03-06 13:55:00', NULL, NULL, NULL, '0', '600', NULL, '720', NULL, 'cH95PN3HnvcgtX8awP7CpICphweHn6f0e40WUUid', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 01:55:00', '2022-03-06 01:55:00'),
(13, '06-03-2022', '2203060011', 13, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 14:51:50', NULL, NULL, NULL, '0', '4020', NULL, '4080', '0', 'q2MAKQdlERlnezC2mrucVf3STC2LNR6o8378bYkv', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 02:51:50', '2022-03-06 02:51:55'),
(14, '06-03-2022', '2203060012', 14, 122, NULL, '120', 'COD', 0, NULL, NULL, NULL, '2022-03-06 15:00:28', NULL, NULL, NULL, '0', '4020', NULL, '4140', '200', '9CDegv2NIlJdQyzAwNBcvNHsiF0fFDuQxSpefrjK', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 03:00:28', '2022-03-06 03:00:33'),
(15, '06-03-2022', '2203060013', 15, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 15:30:58', NULL, NULL, NULL, '0', '3450', NULL, '3510', '34.5', 'dHlIqUShDhT0HZTuHLALbOrsUkulZOpsDMWLy2t2', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 03:30:58', '2022-03-06 03:31:15'),
(16, '06-03-2022', '2203060014', 16, 122, NULL, '60', NULL, 0, NULL, NULL, NULL, '2022-03-06 15:40:29', NULL, NULL, NULL, '0', '1850', NULL, '1910', NULL, 'PuZOF2hBOG47gTh25p5jdYerwFpaLvFM5kC2L8PP', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 03:40:29', '2022-03-06 03:40:29'),
(17, '06-03-2022', '2203060015', 17, 122, NULL, '60', 'pay_with_reward_points', 0, NULL, NULL, NULL, '2022-03-06 15:49:01', NULL, NULL, NULL, '0', '900', NULL, '960', '0', '2KTK547KzQCTvZN2H12IdYTLdWOBMZ4NulXyrXFU', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 03:49:01', '2022-03-06 03:56:52'),
(18, '06-03-2022', '2203060016', 18, 122, NULL, '60', NULL, 0, NULL, NULL, NULL, '2022-03-06 15:57:42', NULL, NULL, NULL, '0', '4020', NULL, '4080', NULL, 'mDjrQ7ffhUMgkcbh8nS0KcO6zvysVoLI8gyYgmwM', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 03:57:42', '2022-03-06 03:57:42'),
(19, '06-03-2022', '2203060017', 19, 122, NULL, '60', 'pay_with_reward_points', 0, NULL, NULL, NULL, '2022-03-06 16:01:07', NULL, NULL, NULL, '0', '200', NULL, '260', '0', 'sr6WVDwAXHlpGWlZGsbipMPyicYKpjL9LpRvcCLI', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 04:01:07', '2022-03-06 04:01:14'),
(20, '06-03-2022', '2203060018', 20, 122, NULL, '60', 'pay_with_reward_points', 0, NULL, NULL, NULL, '2022-03-06 16:03:48', NULL, NULL, NULL, '0', '400', NULL, '460', '0', 'qj5nebp8z7T0xU6nLsw7CWAQOlqCBHsoN7me5mbQ', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 04:03:48', '2022-03-06 04:04:36'),
(21, '06-03-2022', '2203060019', 21, 122, NULL, '60', 'pay_with_reward_points', 0, NULL, NULL, NULL, '2022-03-06 16:05:17', NULL, NULL, NULL, '0', '400', NULL, '460', '0', 'jl3TqYFQc3NsYYvVXFLNY50jvpUlREZVIDdOly5j', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 04:05:17', '2022-03-06 04:05:20'),
(22, '06-03-2022', '2203060020', 22, 122, NULL, '60', 'pay_with_reward_points', 0, NULL, NULL, NULL, '2022-03-06 16:06:35', NULL, NULL, NULL, '0', '400', NULL, '460', '0', 'eXixtzuq8gDFu20cM0EigGMj9ICsh7sgUgMrhsQ5', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 04:06:35', '2022-03-06 04:06:57'),
(23, '06-03-2022', '2203060021', 23, 122, NULL, '60', NULL, 0, NULL, NULL, NULL, '2022-03-06 16:07:37', NULL, NULL, NULL, '0', '400', NULL, '460', NULL, '6vSoTtNYe2znC7Cxayg23k7emZIZepWAgeSipaap', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 04:07:37', '2022-03-06 04:07:37'),
(24, '06-03-2022', '2203060022', 24, 122, NULL, '60', NULL, 0, NULL, NULL, NULL, '2022-03-06 16:09:45', NULL, NULL, NULL, '0', '400', NULL, '460', NULL, 'CI6VS74tlMT8GW3dlReZg0K3heyzJWsw3t93FNxB', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 04:09:45', '2022-03-06 04:09:45'),
(25, '06-03-2022', '2203060023', 25, 122, NULL, '60', 'pay_with_reward_points', 0, NULL, NULL, NULL, '2022-03-06 16:10:17', NULL, NULL, NULL, '0', '400', NULL, '460', '0', 'yP3sHAo37RQs5yJbuHwpL8iILcvUBRaTwLgICcKM', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 04:10:17', '2022-03-06 04:10:20'),
(26, '06-03-2022', '2203060024', 26, 122, 'd60tk', '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 20:50:36', NULL, NULL, NULL, '10', '1400', NULL, '1450', '14', 'ERzodpU6GnObNfHu6ewEsFJxDvKJj0jtFPR8tgCq', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 08:50:36', '2022-03-06 08:50:39'),
(27, '06-03-2022', '2203060025', 27, 122, 'd100Taka', '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 20:56:52', NULL, NULL, NULL, '100', '1000', NULL, '960', '10', 'XFoGZWbB9HeKlmSVUErvzTWMa8TLQ0vpPpXrJFm5', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 08:56:52', '2022-03-06 08:56:55'),
(28, '06-03-2022', '2203060026', 28, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 20:57:13', NULL, NULL, NULL, '0', '4020', NULL, '4080', '40.2', 'zxDZmwyTJzbnTNAXEXBMWxjl81iQnR2RMokXowIW', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 08:57:13', '2022-03-06 08:57:16'),
(29, '06-03-2022', '2203060027', 29, 122, 'd100Taka', '60', 'pay_with_reward_points', 0, NULL, NULL, NULL, '2022-03-06 20:59:03', NULL, NULL, NULL, '100', '1450', NULL, '1410', '0', 'nhgaVlVs4BOs0hgrtqZ5fNgLJJT0MUJEYWBdY2O8', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 08:59:03', '2022-03-06 08:59:06'),
(30, '06-03-2022', '2203060028', 30, 122, NULL, '60', 'pay_with_reward_points', 0, NULL, NULL, NULL, '2022-03-06 20:59:42', NULL, NULL, NULL, '0', '800', NULL, '860', '0', '4evfaZZ5K7Bdyeqeh7OA5jOS5dWXLimcWPsKl5et', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 08:59:42', '2022-03-06 08:59:45'),
(31, '06-03-2022', '2203060029', 31, 122, NULL, '120', NULL, 0, NULL, NULL, NULL, '2022-03-06 21:00:27', NULL, NULL, NULL, '0', '33800', NULL, '33920', NULL, 'oH8Z2Z4SxRqPVrQTPc3Im3ezZ8OzWncmN8faHwgg', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 09:00:27', '2022-03-06 09:00:27'),
(32, '06-03-2022', '2203060030', 32, 122, NULL, '60', NULL, 0, NULL, NULL, NULL, '2022-03-06 21:00:58', NULL, NULL, NULL, '0', '200000', NULL, '200060', NULL, 'AFeYTKy857IEDtas4UV1bHbfX0oCbimx2rTMtlr1', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 09:00:58', '2022-03-06 09:00:58'),
(33, '06-03-2022', '2203060031', 41, 122, 'd60tk', '60', 'pay_with_reward_points', 0, NULL, NULL, NULL, '2022-03-06 21:29:47', NULL, NULL, NULL, '10', '200', NULL, '250', '0', 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 09:29:47', '2022-03-06 09:29:52'),
(34, '06-03-2022', '2203060032', 42, 122, 'd60tk', '60', 'pay_with_reward_points', 0, NULL, NULL, NULL, '2022-03-06 22:09:36', NULL, NULL, NULL, '10', '1450', NULL, '1500', '0', 'FukImFUIo7JPXpRAch76990nPyCBAu1OKPwpZXB4', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 10:09:36', '2022-03-06 10:10:26'),
(35, '06-03-2022', '2203060033', 43, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-06 22:11:21', NULL, NULL, NULL, '0', '40200', NULL, '40260', '402', 'n1nygkFTU9JfPjD69mzYB9A6yWJ3ESG3sOV8wD4s', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 10:11:21', '2022-03-06 10:11:32'),
(36, '07-03-2022', '2203070001', 44, 122, NULL, '60', NULL, 0, NULL, NULL, NULL, '2022-03-07 11:21:37', NULL, NULL, NULL, '0', '322520', NULL, '322580', NULL, 'J7jNVPMI8v34OgmhGGQasN97z6OGCCXZ5nZnonie', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-06 23:21:37', '2022-03-06 23:21:37'),
(37, '07-03-2022', '2203070002', 45, 122, NULL, '60', NULL, 0, NULL, NULL, NULL, '2022-03-07 12:18:42', NULL, NULL, NULL, '0', '4020', NULL, '4080', NULL, 'a8JvqUsSrB4T7NzX3QS7W6tsH6osBimRZ1E8KZVH', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-07 00:18:42', '2022-03-07 00:18:42'),
(38, '07-03-2022', '2203070003', 46, 122, 'd60tk', '60', 'COD', 0, NULL, NULL, NULL, '2022-03-07 13:17:48', NULL, NULL, NULL, '402', '4020', NULL, '3678', '40.2', 'uMusDHhERPRNj7R2py0l8B0GNAR8IYBq4zm9BDxV', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-07 01:17:48', '2022-03-07 01:17:52'),
(39, '07-03-2022', '2203070004', 47, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-07 13:27:49', NULL, NULL, NULL, '0', '4020', '1000', '3080', '40.2', '0T7kZ5CBWLSXUMAm4dhtvAXYiCJtknvKa0VXfcde', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-07 01:27:49', '2022-03-07 01:27:52'),
(40, '07-03-2022', '2203070005', 48, 122, 'd60tk', '60', 'COD', 0, NULL, NULL, NULL, '2022-03-07 13:37:20', NULL, NULL, NULL, '402', '4020', '1000', '2678', '40.2', 'uHLIg2SZAxGGupk6TzKlYFNfoGIF1e4c2h2bgjcV', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-07 01:37:20', '2022-03-07 01:37:23'),
(41, '07-03-2022', '2203070006', 49, 122, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-07 13:39:40', NULL, NULL, NULL, '0', '4020', '4020', '120', '40.2', 'TfJncNH1LVrFFSetMiu7R2mqe6zKsvUKS4T6BMvB', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-07 01:39:40', '2022-03-07 01:39:43'),
(42, '07-03-2022', '2203070007', 50, 124, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-07 13:48:25', NULL, NULL, NULL, '0', '800', '800', '120', '8', 'VphMVNZHjdnvUKJ9M7qUmmkEpuUqi4I26bXvCoCT', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-07 01:48:25', '2022-03-07 01:48:29'),
(43, '07-03-2022', '2203070008', 51, 124, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-07 13:51:53', NULL, NULL, NULL, '0', '2000', '0', '2060', '20', '5IdfjWVrbcIOTnNZvb7RuoLEDnj1IP86OATIp7tW', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-07 01:51:53', '2022-03-07 01:51:57'),
(44, '28-03-2022', '2203280001', 52, 124, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-03-28 12:33:30', NULL, NULL, NULL, '0', '1040', '0', '1100', '10.4', 'pGBa2uqw4kI1hFR29pu0y2F0iWwdLbL0II9Qn3lW', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-28 00:33:30', '2022-03-28 00:33:35'),
(45, '28-03-2022', '2203280002', 53, 124, NULL, '120', NULL, 0, NULL, NULL, NULL, '2022-03-28 12:51:47', NULL, NULL, NULL, '0', '200', '0', '320', NULL, 'MHNHL7pnP9F3jbpiropRdz3lKzDr1S3srTqpvN8W', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-03-28 00:51:47', '2022-03-28 00:51:47'),
(46, '13-04-2022', '2204130001', 54, 124, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-04-13 15:17:44', NULL, NULL, NULL, '0', '300', '0', '360', '3', 'kyZalGLHrFF7ypBDC7g3YTGNEmzjEoF4WQ4Tby6S', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-04-13 03:17:44', '2022-04-13 03:23:09'),
(47, '13-04-2022', '2204130002', 55, 124, NULL, '60', 'COD', 0, NULL, NULL, NULL, '2022-04-13 16:25:20', NULL, NULL, NULL, '0', '1250', '1250', '60', '12.5', 'Jpde00zpR1vhIekRUZlwAPPRXfRnRxPm5WRpOAvH', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-04-13 04:25:20', '2022-04-13 04:25:27'),
(48, '25-04-2022', '2204250001', 56, 124, NULL, '60', NULL, 0, NULL, NULL, NULL, '2022-04-25 11:27:00', NULL, NULL, NULL, '0', '2950', '0', '3010', NULL, 'GElmttNgcFasUHygGK01rSPBuQdPdU3oDBGYvNtO', 0, NULL, NULL, NULL, NULL, 0, 7, '2022-04-24 23:27:00', '2022-04-24 23:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_balance_sheet`
--

CREATE TABLE `invoice_balance_sheet` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` double(11,2) NOT NULL,
  `payment` double(11,2) NOT NULL,
  `due` double(11,2) NOT NULL,
  `attempt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_balance_sheet`
--

INSERT INTO `invoice_balance_sheet` (`id`, `invoice_id`, `customer_id`, `amount`, `payment`, `due`, `attempt`, `created_at`, `updated_at`) VALUES
(1, '2202280001', 122, 520.00, 0.00, 520.00, 0, '2022-02-28 02:19:24', '2022-02-28 02:19:24'),
(2, '2202280002', 122, 2460.00, 0.00, 2460.00, 0, '2022-02-28 02:20:08', '2022-02-28 02:20:08'),
(3, '2203060001', 122, 720.00, 0.00, 720.00, 0, '2022-03-06 01:18:46', '2022-03-06 01:18:46'),
(4, '2203060002', 122, 1320.00, 0.00, 1320.00, 0, '2022-03-06 01:23:17', '2022-03-06 01:23:17'),
(5, '2203060003', 122, 660.00, 0.00, 660.00, 0, '2022-03-06 01:28:46', '2022-03-06 01:28:46'),
(6, '2203060004', 122, 960.00, 0.00, 960.00, 0, '2022-03-06 01:30:43', '2022-03-06 01:30:43'),
(7, '2203060005', 122, 660.00, 0.00, 660.00, 0, '2022-03-06 01:34:09', '2022-03-06 01:34:09'),
(8, '2203060006', 122, 660.00, 0.00, 660.00, 0, '2022-03-06 01:35:33', '2022-03-06 01:35:33'),
(9, '2203060007', 122, 960.00, 0.00, 960.00, 0, '2022-03-06 01:39:40', '2022-03-06 01:39:40'),
(10, '2203060008', 122, 660.00, 0.00, 660.00, 0, '2022-03-06 01:44:32', '2022-03-06 01:44:32'),
(11, '2203060009', 122, 760.00, 0.00, 760.00, 0, '2022-03-06 01:45:48', '2022-03-06 01:45:48'),
(12, '2203060010', 122, 720.00, 0.00, 720.00, 0, '2022-03-06 01:55:00', '2022-03-06 01:55:00'),
(13, '2203060011', 122, 4080.00, 0.00, 4080.00, 0, '2022-03-06 02:51:50', '2022-03-06 02:51:50'),
(14, '2203060012', 122, 4140.00, 0.00, 4140.00, 0, '2022-03-06 03:00:29', '2022-03-06 03:00:29'),
(15, '2203060013', 122, 3510.00, 0.00, 3510.00, 0, '2022-03-06 03:30:58', '2022-03-06 03:30:58'),
(16, '2203060014', 122, 1910.00, 0.00, 1910.00, 0, '2022-03-06 03:40:29', '2022-03-06 03:40:29'),
(17, '2203060015', 122, 960.00, 0.00, 960.00, 0, '2022-03-06 03:49:01', '2022-03-06 03:49:01'),
(18, '2203060016', 122, 4080.00, 0.00, 4080.00, 0, '2022-03-06 03:57:42', '2022-03-06 03:57:42'),
(19, '2203060017', 122, 260.00, 0.00, 260.00, 0, '2022-03-06 04:01:07', '2022-03-06 04:01:07'),
(20, '2203060018', 122, 460.00, 0.00, 460.00, 0, '2022-03-06 04:03:48', '2022-03-06 04:03:48'),
(21, '2203060019', 122, 460.00, 0.00, 460.00, 0, '2022-03-06 04:05:17', '2022-03-06 04:05:17'),
(22, '2203060020', 122, 460.00, 0.00, 460.00, 0, '2022-03-06 04:06:36', '2022-03-06 04:06:36'),
(23, '2203060021', 122, 460.00, 0.00, 460.00, 0, '2022-03-06 04:07:37', '2022-03-06 04:07:37'),
(24, '2203060022', 122, 460.00, 0.00, 460.00, 0, '2022-03-06 04:09:45', '2022-03-06 04:09:45'),
(25, '2203060023', 122, 460.00, 0.00, 460.00, 0, '2022-03-06 04:10:17', '2022-03-06 04:10:17'),
(26, '2203060024', 122, 1450.00, 0.00, 1450.00, 0, '2022-03-06 08:50:36', '2022-03-06 08:50:36'),
(27, '2203060025', 122, 960.00, 0.00, 960.00, 0, '2022-03-06 08:56:52', '2022-03-06 08:56:52'),
(28, '2203060026', 122, 4080.00, 0.00, 4080.00, 0, '2022-03-06 08:57:13', '2022-03-06 08:57:13'),
(29, '2203060027', 122, 1410.00, 0.00, 1410.00, 0, '2022-03-06 08:59:03', '2022-03-06 08:59:03'),
(30, '2203060028', 122, 860.00, 0.00, 860.00, 0, '2022-03-06 08:59:42', '2022-03-06 08:59:42'),
(31, '2203060029', 122, 33920.00, 0.00, 33920.00, 0, '2022-03-06 09:00:27', '2022-03-06 09:00:27'),
(32, '2203060030', 122, 200060.00, 0.00, 200060.00, 0, '2022-03-06 09:00:58', '2022-03-06 09:00:58'),
(33, '2203060031', 122, 250.00, 0.00, 250.00, 0, '2022-03-06 09:29:47', '2022-03-06 09:29:47'),
(34, '2203060032', 122, 1500.00, 0.00, 1500.00, 0, '2022-03-06 10:09:36', '2022-03-06 10:09:36'),
(35, '2203060033', 122, 40260.00, 0.00, 40260.00, 0, '2022-03-06 10:11:21', '2022-03-06 10:11:21'),
(36, '2203070001', 122, 322580.00, 0.00, 322580.00, 0, '2022-03-06 23:21:37', '2022-03-06 23:21:37'),
(37, '2203070002', 122, 4080.00, 0.00, 4080.00, 0, '2022-03-07 00:18:42', '2022-03-07 00:18:42'),
(38, '2203070003', 122, 3678.00, 0.00, 3678.00, 0, '2022-03-07 01:17:48', '2022-03-07 01:17:48'),
(39, '2203070004', 122, 3080.00, 0.00, 3080.00, 0, '2022-03-07 01:27:49', '2022-03-07 01:27:49'),
(40, '2203070005', 122, 2678.00, 0.00, 2678.00, 0, '2022-03-07 01:37:20', '2022-03-07 01:37:20'),
(41, '2203070006', 122, 120.00, 0.00, 120.00, 0, '2022-03-07 01:39:40', '2022-03-07 01:39:40'),
(42, '2203070007', 124, 120.00, 0.00, 120.00, 0, '2022-03-07 01:48:25', '2022-03-07 01:48:25'),
(43, '2203070008', 124, 2060.00, 0.00, 2060.00, 0, '2022-03-07 01:51:54', '2022-03-07 01:51:54'),
(44, '2203280001', 124, 1100.00, 0.00, 1100.00, 0, '2022-03-28 00:33:30', '2022-03-28 00:33:30'),
(45, '2203280002', 124, 320.00, 0.00, 320.00, 0, '2022-03-28 00:51:47', '2022-03-28 00:51:47'),
(46, '2204130001', 124, 360.00, 0.00, 360.00, 0, '2022-04-13 03:17:45', '2022-04-13 03:17:45'),
(47, '2204130002', 124, 60.00, 0.00, 60.00, 0, '2022-04-13 04:25:20', '2022-04-13 04:25:20'),
(48, '2204250001', 124, 3010.00, 0.00, 3010.00, 0, '2022-04-24 23:27:01', '2022-04-24 23:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_transaction`
--

CREATE TABLE `invoice_transaction` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(50) NOT NULL,
  `trans_id` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `payment` double(11,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `linkpiority`
--

CREATE TABLE `linkpiority` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adminid` bigint(20) UNSIGNED NOT NULL,
  `mainlinkid` bigint(20) UNSIGNED NOT NULL,
  `sublinkid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linkpiority`
--

INSERT INTO `linkpiority` (`id`, `adminid`, `mainlinkid`, `sublinkid`, `created_at`, `updated_at`) VALUES
(1205, 17, 4, 4, '2021-06-20 09:34:41', '2021-06-20 09:34:41'),
(1206, 17, 4, 12, '2021-06-20 09:34:41', '2021-06-20 09:34:41'),
(1207, 17, 4, 51, '2021-06-20 09:34:41', '2021-06-20 09:34:41'),
(1208, 17, 4, 26, '2021-06-20 09:34:41', '2021-06-20 09:34:41'),
(1209, 17, 4, 13, '2021-06-20 09:34:41', '2021-06-20 09:34:41'),
(1210, 17, 4, 72, '2021-06-20 09:34:41', '2021-06-20 09:34:41'),
(1211, 17, 4, 55, '2021-06-20 09:34:41', '2021-06-20 09:34:41'),
(1212, 17, 4, 56, '2021-06-20 09:34:41', '2021-06-20 09:34:41'),
(1213, 17, 4, 57, '2021-06-20 09:34:41', '2021-06-20 09:34:41'),
(1214, 17, 4, 66, '2021-06-20 09:34:41', '2021-06-20 09:34:41'),
(1215, 18, 4, 4, '2021-06-20 09:37:37', '2021-06-20 09:37:37'),
(1216, 18, 4, 12, '2021-06-20 09:37:37', '2021-06-20 09:37:37'),
(1217, 18, 4, 51, '2021-06-20 09:37:37', '2021-06-20 09:37:37'),
(1218, 18, 4, 26, '2021-06-20 09:37:37', '2021-06-20 09:37:37'),
(1219, 18, 4, 13, '2021-06-20 09:37:37', '2021-06-20 09:37:37'),
(1220, 18, 4, 72, '2021-06-20 09:37:37', '2021-06-20 09:37:37'),
(1221, 18, 4, 55, '2021-06-20 09:37:37', '2021-06-20 09:37:37'),
(1222, 18, 4, 56, '2021-06-20 09:37:37', '2021-06-20 09:37:37'),
(1223, 18, 4, 57, '2021-06-20 09:37:37', '2021-06-20 09:37:37'),
(1224, 18, 4, 66, '2021-06-20 09:37:37', '2021-06-20 09:37:37'),
(1225, 19, 4, 4, '2021-06-20 09:41:09', '2021-06-20 09:41:09'),
(1226, 19, 4, 12, '2021-06-20 09:41:09', '2021-06-20 09:41:09'),
(1227, 19, 4, 51, '2021-06-20 09:41:09', '2021-06-20 09:41:09'),
(1228, 19, 4, 26, '2021-06-20 09:41:09', '2021-06-20 09:41:09'),
(1229, 19, 4, 13, '2021-06-20 09:41:09', '2021-06-20 09:41:09'),
(1230, 19, 4, 72, '2021-06-20 09:41:09', '2021-06-20 09:41:09'),
(1231, 19, 4, 55, '2021-06-20 09:41:09', '2021-06-20 09:41:09'),
(1232, 19, 4, 56, '2021-06-20 09:41:09', '2021-06-20 09:41:09'),
(1233, 19, 4, 57, '2021-06-20 09:41:09', '2021-06-20 09:41:09'),
(1234, 19, 4, 66, '2021-06-20 09:41:09', '2021-06-20 09:41:09'),
(1251, 15, 10, 83, '2021-07-05 17:02:25', '2021-07-05 17:02:25'),
(1252, 15, 10, 20, '2021-07-05 17:02:25', '2021-07-05 17:02:25'),
(1253, 15, 10, 21, '2021-07-05 17:02:25', '2021-07-05 17:02:25'),
(1254, 15, 10, 81, '2021-07-05 17:02:25', '2021-07-05 17:02:25'),
(1255, 15, 10, 73, '2021-07-05 17:02:25', '2021-07-05 17:02:25'),
(1256, 15, 10, 22, '2021-07-05 17:02:25', '2021-07-05 17:02:25'),
(1257, 15, 10, 23, '2021-07-05 17:02:25', '2021-07-05 17:02:25'),
(1258, 15, 10, 24, '2021-07-05 17:02:25', '2021-07-05 17:02:25'),
(1259, 15, 10, 78, '2021-07-05 17:02:25', '2021-07-05 17:02:25'),
(1260, 15, 10, 82, '2021-07-05 17:02:25', '2021-07-05 17:02:25'),
(1261, 16, 10, 83, '2021-07-05 17:10:06', '2021-07-05 17:10:06'),
(1262, 16, 10, 20, '2021-07-05 17:10:06', '2021-07-05 17:10:06'),
(1263, 16, 10, 21, '2021-07-05 17:10:06', '2021-07-05 17:10:06'),
(1264, 16, 10, 81, '2021-07-05 17:10:06', '2021-07-05 17:10:06'),
(1265, 16, 10, 73, '2021-07-05 17:10:06', '2021-07-05 17:10:06'),
(1266, 16, 10, 22, '2021-07-05 17:10:06', '2021-07-05 17:10:06'),
(1267, 16, 10, 23, '2021-07-05 17:10:06', '2021-07-05 17:10:06'),
(1268, 16, 10, 24, '2021-07-05 17:10:06', '2021-07-05 17:10:06'),
(1269, 16, 10, 78, '2021-07-05 17:10:06', '2021-07-05 17:10:06'),
(1270, 16, 10, 82, '2021-07-05 17:10:06', '2021-07-05 17:10:06'),
(1444, 24, 1, 1, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1445, 24, 1, 2, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1446, 24, 3, 3, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1447, 24, 3, 5, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1448, 24, 3, 6, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1449, 24, 3, 74, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1450, 24, 3, 75, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1451, 24, 3, 76, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1452, 24, 3, 77, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1453, 24, 3, 7, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1454, 24, 3, 79, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1455, 24, 3, 80, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1456, 24, 3, 8, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1457, 24, 3, 54, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1458, 24, 3, 50, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1459, 24, 3, 11, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1460, 24, 3, 9, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1461, 24, 3, 25, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1462, 24, 3, 71, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1463, 24, 14, 67, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1464, 24, 14, 68, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1465, 24, 4, 4, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1466, 24, 4, 12, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1467, 24, 4, 51, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1468, 24, 4, 26, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1469, 24, 4, 13, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1470, 24, 4, 72, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1471, 24, 4, 55, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1472, 24, 4, 56, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1473, 24, 4, 57, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1474, 24, 4, 66, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1475, 24, 13, 63, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1476, 24, 13, 64, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1477, 24, 13, 65, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1478, 24, 6, 14, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1479, 24, 8, 18, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1480, 24, 11, 53, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1481, 24, 11, 59, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1482, 24, 11, 60, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1483, 24, 11, 61, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1484, 24, 11, 70, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1485, 24, 11, 62, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1486, 24, 9, 19, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1487, 24, 10, 83, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1488, 24, 10, 20, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1489, 24, 10, 21, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1490, 24, 10, 81, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1491, 24, 10, 73, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1492, 24, 10, 22, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1493, 24, 10, 23, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1494, 24, 10, 24, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1495, 24, 10, 78, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1496, 24, 10, 82, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1497, 24, 12, 58, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1498, 24, 12, 93, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1499, 24, 12, 84, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1500, 24, 12, 85, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1501, 24, 12, 86, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1502, 24, 12, 87, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1503, 24, 12, 88, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1504, 24, 12, 89, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1505, 24, 12, 90, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1506, 24, 12, 91, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1507, 24, 12, 92, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(1508, 24, 15, 69, '2021-07-11 07:27:26', '2021-07-11 07:27:26'),
(2563, 36, 4, 4, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2564, 36, 4, 12, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2565, 36, 4, 51, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2566, 36, 4, 26, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2567, 36, 4, 13, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2568, 36, 4, 72, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2569, 36, 4, 55, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2570, 36, 4, 56, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2571, 36, 4, 57, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2572, 36, 4, 66, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2573, 36, 13, 63, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2574, 36, 13, 64, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2575, 36, 13, 65, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2576, 36, 10, 20, '2021-09-01 17:37:48', '2021-09-01 17:37:48'),
(2577, 39, 10, 83, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2578, 39, 10, 20, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2579, 39, 10, 21, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2580, 39, 10, 81, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2581, 39, 10, 73, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2582, 39, 10, 22, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2583, 39, 10, 23, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2584, 39, 10, 24, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2585, 39, 10, 78, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2586, 39, 10, 82, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2587, 39, 10, 94, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2588, 39, 16, 95, '2021-09-02 06:30:27', '2021-09-02 06:30:27'),
(2601, 27, 10, 83, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2602, 27, 10, 20, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2603, 27, 10, 21, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2604, 27, 10, 81, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2605, 27, 10, 73, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2606, 27, 10, 22, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2607, 27, 10, 23, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2608, 27, 10, 24, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2609, 27, 10, 78, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2610, 27, 10, 82, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2611, 27, 10, 94, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2612, 27, 16, 95, '2021-09-02 06:41:44', '2021-09-02 06:41:44'),
(2625, 31, 10, 83, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2626, 31, 10, 20, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2627, 31, 10, 21, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2628, 31, 10, 81, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2629, 31, 10, 73, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2630, 31, 10, 22, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2631, 31, 10, 23, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2632, 31, 10, 24, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2633, 31, 10, 78, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2634, 31, 10, 82, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2635, 31, 10, 94, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2636, 31, 16, 95, '2021-09-02 06:44:15', '2021-09-02 06:44:15'),
(2637, 30, 10, 83, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2638, 30, 10, 20, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2639, 30, 10, 21, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2640, 30, 10, 81, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2641, 30, 10, 73, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2642, 30, 10, 22, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2643, 30, 10, 23, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2644, 30, 10, 24, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2645, 30, 10, 78, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2646, 30, 10, 82, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2647, 30, 10, 94, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2648, 30, 16, 95, '2021-09-02 06:45:40', '2021-09-02 06:45:40'),
(2649, 29, 10, 83, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2650, 29, 10, 20, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2651, 29, 10, 21, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2652, 29, 10, 81, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2653, 29, 10, 73, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2654, 29, 10, 22, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2655, 29, 10, 23, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2656, 29, 10, 24, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2657, 29, 10, 78, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2658, 29, 10, 82, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2659, 29, 10, 94, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2660, 29, 16, 95, '2021-09-02 06:47:05', '2021-09-02 06:47:05'),
(2661, 35, 10, 83, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2662, 35, 10, 20, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2663, 35, 10, 21, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2664, 35, 10, 81, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2665, 35, 10, 73, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2666, 35, 10, 22, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2667, 35, 10, 23, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2668, 35, 10, 24, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2669, 35, 10, 78, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2670, 35, 10, 82, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2671, 35, 10, 94, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2672, 35, 16, 95, '2021-09-02 06:50:02', '2021-09-02 06:50:02'),
(2673, 34, 10, 83, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2674, 34, 10, 20, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2675, 34, 10, 21, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2676, 34, 10, 81, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2677, 34, 10, 73, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2678, 34, 10, 22, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2679, 34, 10, 23, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2680, 34, 10, 24, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2681, 34, 10, 78, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2682, 34, 10, 82, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2683, 34, 10, 94, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(2684, 34, 16, 95, '2021-09-02 06:55:29', '2021-09-02 06:55:29'),
(3090, 37, 4, 4, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3091, 37, 4, 12, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3092, 37, 4, 51, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3093, 37, 4, 26, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3094, 37, 4, 13, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3095, 37, 4, 72, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3096, 37, 4, 55, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3097, 37, 4, 56, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3098, 37, 4, 57, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3099, 37, 4, 66, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3100, 37, 13, 63, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3101, 37, 13, 64, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3102, 37, 13, 65, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3103, 37, 12, 58, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3104, 37, 12, 93, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3105, 37, 12, 84, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3106, 37, 12, 85, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3107, 37, 12, 86, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3108, 37, 12, 87, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3109, 37, 12, 88, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3110, 37, 12, 89, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3111, 37, 12, 90, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3112, 37, 12, 91, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3113, 37, 12, 92, '2021-09-02 09:45:12', '2021-09-02 09:45:12'),
(3197, 1, 1, 1, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3198, 1, 1, 2, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3199, 1, 3, 3, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3200, 1, 3, 5, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3201, 1, 3, 6, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3202, 1, 3, 74, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3203, 1, 3, 75, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3204, 1, 3, 76, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3205, 1, 3, 77, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3206, 1, 3, 7, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3207, 1, 3, 79, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3208, 1, 3, 80, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3209, 1, 3, 8, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3210, 1, 3, 54, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3211, 1, 3, 50, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3212, 1, 3, 11, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3213, 1, 3, 9, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3214, 1, 3, 25, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3215, 1, 3, 71, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3216, 1, 14, 67, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3217, 1, 14, 68, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3218, 1, 4, 4, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3219, 1, 4, 12, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3220, 1, 4, 51, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3221, 1, 4, 26, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3222, 1, 4, 13, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3223, 1, 4, 72, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3224, 1, 4, 55, '2021-09-02 10:37:42', '2021-09-02 10:37:42'),
(3225, 1, 4, 56, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3226, 1, 4, 57, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3227, 1, 4, 66, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3228, 1, 13, 63, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3229, 1, 13, 64, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3230, 1, 13, 65, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3231, 1, 6, 14, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3232, 1, 8, 18, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3233, 1, 11, 53, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3234, 1, 11, 59, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3235, 1, 11, 60, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3236, 1, 11, 61, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3237, 1, 11, 70, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3238, 1, 11, 62, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3239, 1, 9, 19, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3240, 1, 10, 83, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3241, 1, 10, 20, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3242, 1, 10, 21, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3243, 1, 10, 81, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3244, 1, 10, 73, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3245, 1, 10, 22, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3246, 1, 10, 23, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3247, 1, 10, 24, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3248, 1, 10, 78, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3249, 1, 10, 82, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3250, 1, 10, 94, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3251, 1, 12, 58, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3252, 1, 12, 93, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3253, 1, 12, 84, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3254, 1, 12, 85, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3255, 1, 12, 86, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3256, 1, 12, 87, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3257, 1, 12, 88, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3258, 1, 12, 89, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3259, 1, 12, 90, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3260, 1, 12, 91, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3261, 1, 12, 92, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3262, 1, 15, 69, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3263, 1, 16, 95, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3264, 1, 17, 96, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3265, 1, 18, 97, '2021-09-02 10:37:43', '2021-09-02 10:37:43'),
(3333, 25, 3, 3, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3334, 25, 3, 5, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3335, 25, 3, 6, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3336, 25, 3, 74, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3337, 25, 3, 75, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3338, 25, 3, 76, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3339, 25, 3, 77, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3340, 25, 3, 7, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3341, 25, 3, 79, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3342, 25, 3, 80, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3343, 25, 3, 8, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3344, 25, 3, 54, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3345, 25, 3, 50, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3346, 25, 3, 11, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3347, 25, 3, 9, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3348, 25, 3, 25, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3349, 25, 3, 71, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3350, 25, 14, 67, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3351, 25, 14, 68, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3352, 25, 4, 4, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3353, 25, 4, 12, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3354, 25, 4, 51, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3355, 25, 4, 26, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3356, 25, 4, 13, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3357, 25, 4, 72, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3358, 25, 4, 55, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3359, 25, 4, 56, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3360, 25, 4, 57, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3361, 25, 4, 66, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3362, 25, 13, 63, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3363, 25, 13, 64, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3364, 25, 13, 65, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3365, 25, 6, 14, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3366, 25, 8, 18, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3367, 25, 11, 53, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3368, 25, 11, 59, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3369, 25, 11, 60, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3370, 25, 11, 61, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3371, 25, 11, 70, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3372, 25, 11, 62, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3373, 25, 9, 19, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3374, 25, 10, 83, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3375, 25, 10, 20, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3376, 25, 10, 21, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3377, 25, 10, 81, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3378, 25, 10, 73, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3379, 25, 10, 22, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3380, 25, 10, 23, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3381, 25, 10, 24, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3382, 25, 10, 78, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3383, 25, 10, 82, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3384, 25, 10, 94, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3385, 25, 12, 58, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3386, 25, 12, 93, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3387, 25, 12, 84, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3388, 25, 12, 85, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3389, 25, 12, 86, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3390, 25, 12, 87, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3391, 25, 12, 88, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3392, 25, 12, 89, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3393, 25, 12, 90, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3394, 25, 12, 91, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3395, 25, 12, 92, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3396, 25, 15, 69, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3397, 25, 16, 95, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3398, 25, 17, 96, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3399, 25, 18, 97, '2021-09-02 10:46:10', '2021-09-02 10:46:10'),
(3400, 32, 4, 4, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3401, 32, 4, 12, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3402, 32, 4, 51, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3403, 32, 4, 26, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3404, 32, 4, 13, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3405, 32, 4, 72, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3406, 32, 4, 55, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3407, 32, 4, 56, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3408, 32, 4, 57, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3409, 32, 4, 66, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3410, 32, 13, 63, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3411, 32, 13, 64, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3412, 32, 13, 65, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3413, 32, 12, 58, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3414, 32, 12, 93, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3415, 32, 12, 84, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3416, 32, 12, 85, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3417, 32, 12, 86, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3418, 32, 12, 87, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3419, 32, 12, 88, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3420, 32, 12, 89, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3421, 32, 12, 90, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3422, 32, 12, 91, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3423, 32, 12, 92, '2021-09-03 04:44:28', '2021-09-03 04:44:28'),
(3424, 20, 3, 3, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3425, 20, 3, 5, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3426, 20, 3, 6, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3427, 20, 3, 74, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3428, 20, 3, 75, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3429, 20, 3, 76, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3430, 20, 3, 77, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3431, 20, 3, 7, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3432, 20, 3, 79, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3433, 20, 3, 80, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3434, 20, 3, 8, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3435, 20, 3, 54, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3436, 20, 3, 50, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3437, 20, 3, 11, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3438, 20, 3, 9, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3439, 20, 3, 25, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3440, 20, 3, 71, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3441, 20, 14, 67, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3442, 20, 14, 68, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3443, 20, 4, 4, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3444, 20, 4, 12, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3445, 20, 4, 51, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3446, 20, 4, 26, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3447, 20, 4, 13, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3448, 20, 4, 72, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3449, 20, 4, 55, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3450, 20, 4, 56, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3451, 20, 4, 57, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3452, 20, 4, 66, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3453, 20, 13, 63, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3454, 20, 13, 64, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3455, 20, 13, 65, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3456, 20, 6, 14, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3457, 20, 8, 18, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3458, 20, 11, 53, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3459, 20, 11, 59, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3460, 20, 11, 60, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3461, 20, 11, 61, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3462, 20, 11, 70, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3463, 20, 11, 62, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3464, 20, 9, 19, '2021-09-03 08:10:01', '2021-09-03 08:10:01'),
(3465, 20, 10, 83, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3466, 20, 10, 20, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3467, 20, 10, 21, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3468, 20, 10, 81, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3469, 20, 10, 73, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3470, 20, 10, 22, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3471, 20, 10, 23, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3472, 20, 10, 24, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3473, 20, 10, 78, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3474, 20, 10, 82, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3475, 20, 10, 94, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3476, 20, 12, 58, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3477, 20, 12, 93, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3478, 20, 12, 84, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3479, 20, 12, 85, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3480, 20, 12, 86, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3481, 20, 12, 87, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3482, 20, 12, 88, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3483, 20, 12, 89, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3484, 20, 12, 90, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3485, 20, 12, 91, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3486, 20, 12, 92, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3487, 20, 15, 69, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3488, 20, 16, 95, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3489, 20, 17, 96, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3490, 20, 18, 97, '2021-09-03 08:10:02', '2021-09-03 08:10:02'),
(3491, 38, 3, 3, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3492, 38, 3, 5, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3493, 38, 3, 6, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3494, 38, 3, 74, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3495, 38, 3, 75, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3496, 38, 3, 76, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3497, 38, 3, 77, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3498, 38, 3, 7, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3499, 38, 3, 79, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3500, 38, 3, 80, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3501, 38, 3, 8, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3502, 38, 3, 54, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3503, 38, 3, 50, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3504, 38, 3, 11, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3505, 38, 3, 9, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3506, 38, 3, 25, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3507, 38, 3, 71, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3508, 38, 4, 4, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3509, 38, 4, 12, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3510, 38, 4, 51, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3511, 38, 4, 26, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3512, 38, 4, 13, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3513, 38, 4, 72, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3514, 38, 4, 55, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3515, 38, 4, 56, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3516, 38, 4, 57, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3517, 38, 4, 66, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3518, 38, 13, 63, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3519, 38, 13, 64, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3520, 38, 13, 65, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3521, 38, 12, 58, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3522, 38, 12, 93, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3523, 38, 12, 84, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3524, 38, 12, 85, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3525, 38, 12, 86, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3526, 38, 12, 87, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3527, 38, 12, 88, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3528, 38, 12, 89, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3529, 38, 12, 90, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3530, 38, 12, 91, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3531, 38, 12, 92, '2021-09-04 06:13:26', '2021-09-04 06:13:26'),
(3601, 33, 3, 3, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3602, 33, 3, 5, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3603, 33, 3, 6, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3604, 33, 3, 74, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3605, 33, 3, 75, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3606, 33, 3, 76, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3607, 33, 3, 77, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3608, 33, 3, 7, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3609, 33, 3, 79, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3610, 33, 3, 80, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3611, 33, 3, 8, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3612, 33, 3, 54, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3613, 33, 3, 50, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3614, 33, 3, 11, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3615, 33, 3, 9, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3616, 33, 3, 25, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3617, 33, 3, 71, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3618, 33, 14, 67, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3619, 33, 14, 68, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3620, 33, 4, 4, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3621, 33, 4, 12, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3622, 33, 4, 51, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3623, 33, 4, 26, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3624, 33, 4, 13, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3625, 33, 4, 72, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3626, 33, 4, 55, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3627, 33, 4, 56, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3628, 33, 4, 57, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3629, 33, 4, 66, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3630, 33, 13, 63, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3631, 33, 13, 64, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3632, 33, 13, 65, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3633, 33, 6, 14, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3634, 33, 8, 18, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3635, 33, 11, 53, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3636, 33, 11, 59, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3637, 33, 11, 60, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3638, 33, 11, 61, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3639, 33, 11, 70, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3640, 33, 11, 62, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3641, 33, 9, 19, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3642, 33, 10, 83, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3643, 33, 10, 20, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3644, 33, 10, 21, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3645, 33, 10, 81, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3646, 33, 10, 73, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3647, 33, 10, 22, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3648, 33, 10, 23, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3649, 33, 10, 24, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3650, 33, 10, 78, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3651, 33, 10, 82, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3652, 33, 10, 94, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3653, 33, 12, 58, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3654, 33, 12, 93, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3655, 33, 12, 84, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3656, 33, 12, 85, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3657, 33, 12, 86, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3658, 33, 12, 87, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3659, 33, 12, 88, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3660, 33, 12, 89, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3661, 33, 12, 90, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3662, 33, 12, 91, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3663, 33, 12, 92, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3664, 33, 15, 69, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3665, 33, 16, 95, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3666, 33, 17, 96, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3667, 33, 18, 97, '2021-09-07 04:32:23', '2021-09-07 04:32:23'),
(3668, 40, 3, 3, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3669, 40, 3, 5, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3670, 40, 3, 6, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3671, 40, 3, 74, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3672, 40, 3, 75, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3673, 40, 3, 76, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3674, 40, 3, 77, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3675, 40, 3, 7, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3676, 40, 3, 79, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3677, 40, 3, 80, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3678, 40, 3, 8, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3679, 40, 3, 54, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3680, 40, 3, 50, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3681, 40, 3, 11, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3682, 40, 3, 9, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3683, 40, 3, 25, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3684, 40, 3, 71, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3685, 40, 14, 67, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3686, 40, 14, 68, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3687, 40, 4, 4, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3688, 40, 4, 12, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3689, 40, 4, 51, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3690, 40, 4, 26, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3691, 40, 4, 13, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3692, 40, 4, 72, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3693, 40, 4, 55, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3694, 40, 4, 56, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3695, 40, 4, 57, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3696, 40, 4, 66, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3697, 40, 13, 63, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3698, 40, 13, 64, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3699, 40, 13, 65, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3700, 40, 6, 14, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3701, 40, 8, 18, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3702, 40, 11, 53, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3703, 40, 11, 59, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3704, 40, 11, 60, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3705, 40, 11, 61, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3706, 40, 11, 70, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3707, 40, 11, 62, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3708, 40, 9, 19, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3709, 40, 10, 83, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3710, 40, 10, 20, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3711, 40, 10, 21, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3712, 40, 10, 81, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3713, 40, 10, 73, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3714, 40, 10, 22, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3715, 40, 10, 23, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3716, 40, 10, 24, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3717, 40, 10, 78, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3718, 40, 10, 82, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3719, 40, 10, 94, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3720, 40, 12, 58, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3721, 40, 12, 93, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3722, 40, 12, 84, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3723, 40, 12, 85, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3724, 40, 12, 86, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3725, 40, 12, 87, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3726, 40, 12, 88, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3727, 40, 12, 89, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3728, 40, 12, 90, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3729, 40, 12, 91, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3730, 40, 12, 92, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3731, 40, 15, 69, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3732, 40, 16, 95, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3733, 40, 17, 96, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3734, 40, 18, 97, '2021-09-07 04:33:43', '2021-09-07 04:33:43'),
(3735, 41, 3, 3, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3736, 41, 3, 5, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3737, 41, 3, 6, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3738, 41, 3, 74, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3739, 41, 3, 75, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3740, 41, 3, 76, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3741, 41, 3, 77, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3742, 41, 3, 7, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3743, 41, 3, 79, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3744, 41, 3, 80, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3745, 41, 3, 8, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3746, 41, 3, 54, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3747, 41, 3, 50, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3748, 41, 3, 11, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3749, 41, 3, 9, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3750, 41, 3, 25, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3751, 41, 3, 71, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3752, 41, 14, 67, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3753, 41, 14, 68, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3754, 41, 4, 4, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3755, 41, 4, 12, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3756, 41, 4, 51, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3757, 41, 4, 26, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3758, 41, 4, 13, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3759, 41, 4, 72, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3760, 41, 4, 55, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3761, 41, 4, 56, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3762, 41, 4, 57, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3763, 41, 4, 66, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3764, 41, 13, 63, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3765, 41, 13, 64, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3766, 41, 13, 65, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3767, 41, 6, 14, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3768, 41, 8, 18, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3769, 41, 11, 53, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3770, 41, 11, 59, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3771, 41, 11, 60, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3772, 41, 11, 61, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3773, 41, 11, 70, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3774, 41, 11, 62, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3775, 41, 9, 19, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3776, 41, 10, 83, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3777, 41, 10, 20, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3778, 41, 10, 21, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3779, 41, 10, 81, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3780, 41, 10, 73, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3781, 41, 10, 22, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3782, 41, 10, 23, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3783, 41, 10, 24, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3784, 41, 10, 78, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3785, 41, 10, 82, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3786, 41, 10, 94, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3787, 41, 12, 58, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3788, 41, 12, 93, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3789, 41, 12, 84, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3790, 41, 12, 85, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3791, 41, 12, 86, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3792, 41, 12, 87, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3793, 41, 12, 88, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3794, 41, 12, 89, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3795, 41, 12, 90, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3796, 41, 12, 91, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3797, 41, 12, 92, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3798, 41, 15, 69, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3799, 41, 16, 95, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3800, 41, 17, 96, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3801, 41, 18, 97, '2021-09-08 07:14:19', '2021-09-08 07:14:19'),
(3802, 43, 3, 3, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3803, 43, 3, 5, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3804, 43, 3, 6, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3805, 43, 3, 74, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3806, 43, 3, 75, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3807, 43, 3, 76, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3808, 43, 3, 77, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3809, 43, 3, 7, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3810, 43, 3, 79, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3811, 43, 3, 80, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3812, 43, 3, 8, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3813, 43, 3, 54, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3814, 43, 3, 50, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3815, 43, 3, 11, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3816, 43, 3, 9, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3817, 43, 3, 25, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3818, 43, 3, 71, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3819, 43, 14, 67, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3820, 43, 14, 68, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3821, 43, 4, 4, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3822, 43, 4, 12, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3823, 43, 4, 51, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3824, 43, 4, 26, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3825, 43, 4, 13, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3826, 43, 4, 72, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3827, 43, 4, 55, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3828, 43, 4, 56, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3829, 43, 4, 57, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3830, 43, 4, 66, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3831, 43, 13, 63, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3832, 43, 13, 64, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3833, 43, 13, 65, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3834, 43, 6, 14, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3835, 43, 8, 18, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3836, 43, 8, 99, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3837, 43, 11, 53, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3838, 43, 11, 59, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3839, 43, 11, 60, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3840, 43, 11, 61, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3841, 43, 11, 70, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3842, 43, 11, 62, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3843, 43, 9, 19, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3844, 43, 10, 83, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3845, 43, 10, 20, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3846, 43, 10, 21, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3847, 43, 10, 81, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3848, 43, 10, 73, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3849, 43, 10, 22, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3850, 43, 10, 23, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3851, 43, 10, 24, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3852, 43, 10, 78, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3853, 43, 10, 82, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3854, 43, 10, 94, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3855, 43, 12, 58, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3856, 43, 12, 93, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3857, 43, 12, 84, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3858, 43, 12, 85, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3859, 43, 12, 86, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3860, 43, 12, 87, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3861, 43, 12, 88, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3862, 43, 12, 89, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3863, 43, 12, 90, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3864, 43, 12, 91, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3865, 43, 12, 92, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3866, 43, 15, 69, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3867, 43, 16, 95, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3868, 43, 17, 96, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3869, 43, 18, 97, '2021-09-19 06:19:01', '2021-09-19 06:19:01'),
(3870, 28, 4, 4, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3871, 28, 4, 12, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3872, 28, 4, 51, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3873, 28, 4, 26, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3874, 28, 4, 13, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3875, 28, 4, 72, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3876, 28, 4, 55, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3877, 28, 4, 56, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3878, 28, 4, 57, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3879, 28, 4, 66, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3880, 28, 13, 63, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3881, 28, 13, 64, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3882, 28, 13, 65, '2021-09-19 09:11:03', '2021-09-19 09:11:03');
INSERT INTO `linkpiority` (`id`, `adminid`, `mainlinkid`, `sublinkid`, `created_at`, `updated_at`) VALUES
(3883, 28, 12, 58, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3884, 28, 12, 93, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3885, 28, 12, 84, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3886, 28, 12, 85, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3887, 28, 12, 86, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3888, 28, 12, 87, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3889, 28, 12, 88, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3890, 28, 12, 89, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3891, 28, 12, 90, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3892, 28, 12, 91, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3893, 28, 12, 92, '2021-09-19 09:11:03', '2021-09-19 09:11:03'),
(3894, 26, 3, 3, '2021-09-19 10:07:19', '2021-09-19 10:07:19'),
(3895, 26, 3, 5, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3896, 26, 3, 6, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3897, 26, 3, 74, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3898, 26, 3, 75, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3899, 26, 3, 76, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3900, 26, 3, 77, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3901, 26, 3, 7, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3902, 26, 3, 79, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3903, 26, 3, 80, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3904, 26, 3, 8, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3905, 26, 3, 54, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3906, 26, 3, 50, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3907, 26, 3, 11, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3908, 26, 3, 9, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3909, 26, 3, 25, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3910, 26, 3, 71, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3911, 26, 14, 67, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3912, 26, 14, 68, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3913, 26, 4, 4, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3914, 26, 4, 12, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3915, 26, 4, 51, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3916, 26, 4, 26, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3917, 26, 4, 13, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3918, 26, 4, 72, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3919, 26, 4, 55, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3920, 26, 4, 56, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3921, 26, 4, 57, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3922, 26, 4, 66, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3923, 26, 13, 63, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3924, 26, 13, 64, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3925, 26, 13, 65, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3926, 26, 6, 14, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3927, 26, 8, 18, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3928, 26, 8, 99, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3929, 26, 11, 53, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3930, 26, 11, 59, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3931, 26, 11, 60, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3932, 26, 11, 61, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3933, 26, 11, 70, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3934, 26, 11, 62, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3935, 26, 9, 19, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3936, 26, 10, 83, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3937, 26, 10, 20, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3938, 26, 10, 21, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3939, 26, 10, 81, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3940, 26, 10, 73, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3941, 26, 10, 22, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3942, 26, 10, 23, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3943, 26, 10, 24, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3944, 26, 10, 78, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3945, 26, 10, 82, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3946, 26, 10, 94, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3947, 26, 12, 58, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3948, 26, 12, 93, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3949, 26, 12, 84, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3950, 26, 12, 85, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3951, 26, 12, 86, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3952, 26, 12, 87, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3953, 26, 12, 88, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3954, 26, 12, 89, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3955, 26, 12, 90, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3956, 26, 12, 91, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3957, 26, 12, 92, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3958, 26, 15, 69, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3959, 26, 16, 95, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3960, 26, 17, 96, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3961, 26, 18, 97, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(3962, 26, 19, 98, '2021-09-19 10:07:20', '2021-09-19 10:07:20'),
(0, 0, 1, 1, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 1, 2, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 3, 5, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 3, 6, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 3, 8, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 3, 9, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 3, 71, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 4, 4, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 4, 12, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 4, 26, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 4, 13, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 4, 72, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 4, 66, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 4, 117, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 4, 118, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 4, 119, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 8, 18, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 10, 20, '2022-02-28 15:30:43', '2022-02-28 15:30:43'),
(0, 0, 10, 21, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 10, 81, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 10, 73, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 10, 22, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 10, 23, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 10, 24, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 10, 78, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 10, 82, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 10, 94, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 15, 69, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 17, 96, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 21, 103, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 22, 105, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 22, 104, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 22, 106, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 22, 107, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 23, 108, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 23, 109, '2022-02-28 15:30:44', '2022-02-28 15:30:44'),
(0, 0, 25, 111, '2022-02-28 15:30:45', '2022-02-28 15:30:45'),
(0, 0, 26, 112, '2022-02-28 15:30:45', '2022-02-28 15:30:45'),
(0, 0, 26, 113, '2022-02-28 15:30:45', '2022-02-28 15:30:45'),
(0, 0, 27, 114, '2022-02-28 15:30:45', '2022-02-28 15:30:45'),
(0, 0, 27, 115, '2022-02-28 15:30:45', '2022-02-28 15:30:45'),
(0, 0, 27, 116, '2022-02-28 15:30:45', '2022-02-28 15:30:45'),
(0, 0, 28, 120, '2022-02-28 15:30:45', '2022-02-28 15:30:45'),
(0, 0, 28, 121, '2022-02-28 15:30:45', '2022-02-28 15:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_zone`
--

CREATE TABLE `merchant_zone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_21_060344_createadmin', 1),
(5, '2020_09_21_062638_create_guests_table', 1),
(6, '2020_09_22_052129_create_sellers_table', 1),
(7, '2020_09_23_072100_create_adminmainmenus_table', 1),
(8, '2020_09_23_072102_create_adminsubmenus_table', 1),
(9, '2020_09_23_111230_create_linkpiorities_table', 1),
(10, '2020_09_24_053702_create_about_uses_table', 1),
(11, '2020_09_24_054030_create_contact_uses_table', 1),
(12, '2020_09_24_054217_create_privacy_policies_table', 1),
(13, '2020_09_24_054332_create_faq_infos_table', 1),
(14, '2020_09_24_054415_create_terms_uses_table', 1),
(15, '2020_09_24_054533_create_how_buys_table', 1),
(16, '2020_09_24_054911_create_sliders_table', 1),
(17, '2020_09_24_055105_create_explore_banners_table', 1),
(18, '2020_09_24_055217_create_customer_messages_table', 1),
(19, '2020_09_24_055346_create_career_infos_table', 1),
(20, '2020_09_24_055516_create_product_items_table', 1),
(21, '2020_09_24_055535_create_product_categories_table', 1),
(22, '2020_09_24_055550_create_product_infos_table', 1),
(23, '2020_09_24_055926_create_news_table', 1),
(24, '2020_09_24_055955_create_coupons_table', 1),
(25, '2020_09_24_061539_create_product_images_table', 1),
(26, '2020_09_24_070001_create_disctricts_table', 2),
(27, '2020_09_24_070003_create_thanas_table', 2),
(28, '2020_09_24_070006_create_delivery_charges_table', 2),
(29, '2020_09_24_070128_create_delivery_infos_table', 2),
(30, '2020_09_24_070155_create_shopping_carts_table', 2),
(31, '2020_09_24_070306_create_invoices_table', 2),
(32, '2020_09_24_080421_create_current_order_infos_table', 3),
(33, '2020_09_27_050521_create_product_companies_table', 4),
(34, '2020_09_27_051143_create_product_measurements_table', 4),
(35, '2020_09_27_051244_create_product_measurement_subunits_table', 4),
(36, '2020_09_29_051645_create_product_sizes_table', 4),
(37, '2020_09_29_051913_create_product_colors_table', 4),
(38, '2020_09_29_052207_create_product_size_infos_table', 4),
(39, '2020_09_29_052246_create_product_color_infos_table', 4),
(43, '2020_10_06_053728_create_subcategories_table', 5),
(44, '2021_02_07_080907_create_offer_setups_table', 6),
(45, '2021_02_08_063657_create_shipping_classes_table', 7),
(46, '2020_09_24_070001_create_districts_table', 8),
(47, '2021_02_22_052408_create_zones_table', 9),
(48, '2021_02_22_053523_create_zone_districts_table', 10),
(49, '2021_12_02_145355_create_s_e_o_s_table', 11),
(50, '2021_12_02_154626_create_page_categories_table', 12),
(51, '2021_12_02_161917_create_pages_table', 13),
(52, '2021_12_02_175114_create_employees_table', 14),
(53, '2021_12_04_054106_create_payment_methods_table', 15),
(54, '2022_01_15_153849_create_product_ratings_table', 16),
(55, '2022_01_22_071851_create_flash_deals_table', 16),
(56, '2022_01_22_073413_create_flash_deal_products_table', 16),
(57, '2022_01_25_161529_create_product_review_images_table', 17),
(0, '2022_02_27_154307_create_wishlists_table', 18),
(0, '2022_02_28_053451_create_exchange_requests_table', 19),
(0, '2022_03_28_070359_create_subscriptions_table', 20),
(0, '2022_03_28_084327_create_site_reviews_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer_control`
--

CREATE TABLE `offer_control` (
  `id` bigint(11) NOT NULL,
  `discount_start` datetime DEFAULT NULL,
  `discount_end` datetime DEFAULT NULL,
  `life_start` datetime DEFAULT NULL,
  `life_end` datetime DEFAULT NULL,
  `gadget_start` datetime DEFAULT NULL,
  `gadget_end` datetime DEFAULT NULL,
  `deshi_start` datetime DEFAULT NULL,
  `deshi_end` datetime DEFAULT NULL,
  `discount_days` int(11) DEFAULT NULL,
  `lifestyle_days` int(11) DEFAULT NULL,
  `gadget_days` int(11) DEFAULT NULL,
  `deshi_days` int(11) DEFAULT NULL,
  `wholesale_start` datetime DEFAULT NULL,
  `wholesale_end` datetime DEFAULT NULL,
  `wholesale_days` int(5) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offer_setups`
--

CREATE TABLE `offer_setups` (
  `id` bigint(50) NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sale_price` double(11,2) DEFAULT NULL,
  `discount_price` double(11,2) DEFAULT NULL,
  `discount_per` double(11,2) DEFAULT NULL,
  `current_price` double(11,2) DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT 'flash sale=1,offer=2,feature product=3,best sale=4,discount mela=5,express service=6,lifystyle mela=7,gadget mela=8,Deshi mela=9,Wholesale=10',
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_payment_details`
--

CREATE TABLE `online_payment_details` (
  `id` bigint(11) NOT NULL,
  `mer_txnid` varchar(50) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `cus_name` varchar(50) DEFAULT NULL,
  `cus_phone` varchar(50) DEFAULT NULL,
  `cus_email` varchar(50) DEFAULT NULL,
  `pg_service_charge_bdt` double(11,2) DEFAULT NULL,
  `amount_original` double(11,2) DEFAULT NULL,
  `gateway_fee` double(11,2) DEFAULT NULL,
  `pg_card_bank_name` varchar(50) DEFAULT NULL,
  `pg_card_bank_country` varchar(50) DEFAULT NULL,
  `card_number` varchar(50) DEFAULT NULL,
  `card_holder` varchar(50) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL,
  `currency_merchant` varchar(50) DEFAULT NULL,
  `convertion_rate` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `other_currency` varchar(50) DEFAULT NULL,
  `pay_status` varchar(50) DEFAULT NULL,
  `pg_txnid` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `store_amount` double(11,2) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `amount` double(11,2) DEFAULT NULL,
  `bank_txn` varchar(50) DEFAULT NULL,
  `card_type` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `pg_card_risklevel` varchar(50) DEFAULT NULL,
  `pg_error_code_details` mediumtext,
  `session_id` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_category_id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Book Appoinment', 'book-appoinment', '<ul class=\"footerLinks\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; margin-bottom: 10px; padding: 0px; color: rgb(64, 64, 66); font-family: latoregular, sans-serif; background-color: rgb(230, 231, 233);\"><li style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; list-style: none; margin-bottom: 5px;\"><a href=\"https://www.shayonastore.com/book_appointment/\" class=\"gray font15\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; color: rgb(89, 89, 91); text-decoration: none; font-size: 15px;\">Book Appoinment</a></li></ul>', 1, '2022-03-28 01:32:47', '2022-03-28 01:32:47'),
(2, 1, 'Video Appoinment', 'video-appoinment', '<ul class=\"footerLinks\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; margin-bottom: 10px; padding: 0px; color: rgb(64, 64, 66); font-family: latoregular, sans-serif; background-color: rgb(230, 231, 233);\"><li style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; list-style: none; margin-bottom: 5px;\"><a href=\"https://www.shayonastore.com/video_appoinment/\" class=\"gray font15\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; color: rgb(89, 89, 91); text-decoration: none; font-size: 15px;\">Video Appoinment</a></li></ul>', 1, '2022-03-28 01:32:54', '2022-03-28 01:32:54'),
(3, 1, 'Contact Us', 'contact-us', '<ul class=\"footerLinks\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; margin-bottom: 10px; padding: 0px; color: rgb(64, 64, 66); font-family: latoregular, sans-serif; background-color: rgb(230, 231, 233);\"><li style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; list-style: none; margin-bottom: 5px;\"><div class=\"wpb_text_column wpb_content_element\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; direction: ltr; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14.5px; margin-bottom: 0px !important;\"><p style=\"margin-bottom: 0px; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\">Customer Care Number :&nbsp;<strong style=\"line-height: inherit;\">+88 09678221331</strong></p></div><div class=\"wpb_text_column wpb_content_element\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; direction: ltr; float: left; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14.5px; margin-bottom: 0px !important;\"><p style=\"margin-bottom: 0px; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\">Sun to Thur (10 am -7 pm) and Fri (10 am - 1 pm)<br>E-mail us at texmartcustomercare@gmail.com</p></div></li></ul>', 1, '2022-03-28 01:33:02', '2022-04-20 06:03:00'),
(4, 1, 'Refund And Cancellation', 'refund-and-cancellation', '<p>Refund And Cancellation<br></p>', 1, '2022-03-28 01:33:27', '2022-03-28 01:33:27'),
(5, 2, 'About Us', 'about-us', '<ul class=\"footerLinks\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; margin-bottom: 10px; padding: 0px; color: rgb(64, 64, 66); font-family: latoregular, sans-serif; background-color: rgb(230, 231, 233);\"><li style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; list-style: none; margin-bottom: 5px;\"><a href=\"https://www.shayonastore.com/about/\" class=\"gray font15\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; color: rgb(89, 89, 91); text-decoration: none; font-size: 15px;\">About Us</a></li></ul>', 1, '2022-03-28 01:35:20', '2022-03-28 01:35:20'),
(6, 2, 'Terms & Conditions', 'terms-conditions', '<ul class=\"footerLinks\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; margin-bottom: 10px; padding: 0px; color: rgb(64, 64, 66); font-family: latoregular, sans-serif; background-color: rgb(230, 231, 233);\"><li style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; list-style: none; margin-bottom: 5px;\"><a href=\"https://www.shayonastore.com/terms_and_conditions/\" class=\"gray font15\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; color: rgb(239, 43, 63); text-decoration: none; font-size: 15px;\">Terms &amp; Conditions</a></li></ul>', 1, '2022-03-28 01:35:38', '2022-03-28 01:35:38'),
(7, 2, 'Privacy Policy', 'privacy-policy', '<ul class=\"footerLinks\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; margin-bottom: 10px; padding: 0px; color: rgb(64, 64, 66); font-family: latoregular, sans-serif; background-color: rgb(230, 231, 233);\"><li style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; list-style: none; margin-bottom: 5px;\"><a href=\"https://www.shayonastore.com/privacy_policy/\" class=\"gray font15\" style=\"image-rendering: -webkit-optimize-contrast; text-rendering: optimizelegibility; -webkit-font-smoothing: antialiased; color: rgb(89, 89, 91); text-decoration: none; font-size: 15px;\">Privacy Policy</a></li></ul>', 1, '2022-03-28 01:35:44', '2022-03-28 01:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE `page_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_categories`
--

INSERT INTO `page_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HELP & SUPPORT', 1, '2022-03-28 01:30:17', '2022-03-28 01:30:17'),
(2, 'TEXMART', 1, '2022-03-28 01:30:26', '2022-04-20 06:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_system_control`
--

CREATE TABLE `payment_system_control` (
  `id` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT 'offline&online=1,online=0;',
  `cash` int(2) NOT NULL DEFAULT '1',
  `online` int(2) NOT NULL DEFAULT '1',
  `bkash` int(2) NOT NULL DEFAULT '1',
  `rocket` int(2) NOT NULL DEFAULT '1',
  `nagad` int(2) NOT NULL DEFAULT '1',
  `bkash_number` varchar(255) DEFAULT NULL,
  `rocket_number` varchar(255) DEFAULT NULL,
  `nagad_number` varchar(255) DEFAULT NULL,
  `bank` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_system_control`
--

INSERT INTO `payment_system_control` (`id`, `status`, `cash`, `online`, `bkash`, `rocket`, `nagad`, `bkash_number`, `rocket_number`, `nagad_number`, `bank`) VALUES
(1, 1, 1, 0, 1, 1, 0, '435345345345', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policy`
--

INSERT INTO `privacy_policy` (`id`, `description`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'HelloPrivacy &amp; Policy', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productstocks`
--

CREATE TABLE `productstocks` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quentity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productstocks`
--

INSERT INTO `productstocks` (`id`, `product_id`, `quentity`, `size`, `color`, `date`) VALUES
(1, '525', '10', 'None', 'None', '04/12/2021'),
(2, '518', '250', 'None', 'Choose...', '04/12/2021');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `sl` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_bangla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_by` int(11) DEFAULT '0',
  `paginate` int(11) DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `item_id`, `sl`, `category_name`, `category_name_bangla`, `image`, `banner`, `shop_by`, `paginate`, `admin_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(172, 114, 1, 'Fish', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:01:21', '2021-11-03 04:01:21'),
(173, 114, 3, 'Egg', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:01:51', '2021-11-03 04:05:45'),
(175, 117, 2, 'Soups', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:07:43', '2021-11-03 04:21:57'),
(176, 117, 1, 'Forzen Food', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:23:47', '2021-11-03 04:23:47'),
(177, 103, 3, 'Chips ,Nuts &Others', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:24:33', '2021-11-03 04:24:33'),
(178, 117, 3, 'Chips ,Nuts &Other', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:25:59', '2021-11-03 04:25:59'),
(179, 103, 5, 'Noodles Pastas & Shemai', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:27:19', '2021-11-03 04:27:19'),
(180, 103, 5, 'Noodles Pastas & Shemai', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:27:20', '2021-11-03 04:27:20'),
(181, 117, 5, 'Noodles Pastas & Shemai', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:27:47', '2021-11-03 04:27:47'),
(182, 119, 1, 'Biscuits', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:29:34', '2021-11-03 04:29:34'),
(183, 119, 2, 'Breads', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:30:00', '2021-11-03 04:30:00'),
(184, 119, 3, 'Cakes', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:30:29', '2021-11-03 04:30:29'),
(185, 120, 1, 'Jam & Jelly', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:32:16', '2021-11-03 04:32:16'),
(186, 120, 2, 'Honey', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:32:35', '2021-11-03 04:32:35'),
(187, 120, 3, 'Chocolate Spreads & Mixed Spreads', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:33:26', '2021-11-03 04:33:26'),
(188, 121, 1, 'Liquid &uht Milk', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:35:52', '2021-11-03 04:35:52'),
(189, 121, 2, 'Butter & Sour Cream', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:36:32', '2021-11-03 04:36:32'),
(190, 121, 3, 'Cheese', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:36:51', '2021-11-03 04:36:51'),
(191, 120, 4, 'Powder Milk & Cream', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:37:23', '2021-11-03 04:37:23'),
(192, 121, 5, 'Ghee', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:37:40', '2021-11-03 04:37:40'),
(193, 121, 6, 'Borhani & laban', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:38:07', '2021-11-03 04:38:07'),
(194, 122, 1, 'Tea', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:39:26', '2021-11-03 04:39:26'),
(195, 122, 2, 'Coffee', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:39:45', '2021-11-03 04:39:45'),
(196, 122, 3, 'Juice', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:40:05', '2021-11-03 04:40:05'),
(197, 122, 4, 'Soft Drink', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:40:30', '2021-11-03 04:40:30'),
(198, 122, 5, 'Enrgy Drink', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:41:08', '2021-11-03 04:41:08'),
(201, 123, 1, 'Baby Diapers', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:43:17', '2021-11-03 04:43:17'),
(202, 123, 2, 'Baby Wipes', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:43:46', '2021-11-03 04:43:46'),
(203, 123, 3, 'Baby Accessories', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:44:24', '2021-11-03 04:44:24'),
(204, 123, 4, 'Baby Food', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:44:42', '2021-11-03 04:44:42'),
(205, 124, 1, 'Air Freshner', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:46:30', '2021-11-03 04:46:30'),
(206, 124, 2, 'Cleaning Products', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:47:16', '2021-11-03 04:47:16'),
(207, 124, 3, 'Post control', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:47:50', '2021-11-03 04:47:50'),
(208, 125, 1, 'Shampo & hair Care', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:50:30', '2021-11-03 04:50:30'),
(209, 125, 2, 'Tooth  paste & oral Care', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:51:07', '2021-11-03 04:51:07'),
(210, 125, 3, 'Shaving & facial  care', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:51:49', '2021-11-03 04:51:49'),
(211, 125, 3, 'Bath  & body Health care', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:52:40', '2021-11-03 04:52:40'),
(212, 125, 6, 'Cosmatics', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:53:05', '2021-11-03 04:53:05'),
(215, 126, 2, 'Cabinets', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:55:17', '2021-11-03 04:55:17'),
(216, 126, 3, 'Pillow & Cushion', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:56:02', '2021-11-03 04:56:02'),
(217, 126, 4, 'Bedding', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:56:26', '2021-11-03 04:56:26'),
(218, 127, 1, 'Kitchen Appilication', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:57:51', '2021-11-03 04:57:51'),
(219, 127, 2, 'Home Accessoris', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:58:32', '2021-11-03 04:58:32'),
(220, 130, 1, 'Pet Food', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:59:29', '2021-11-03 04:59:29'),
(221, 130, 2, 'Pet Accessorics', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 04:59:59', '2021-11-03 04:59:59'),
(222, 128, 1, 'Women', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 05:00:51', '2021-11-03 05:00:51'),
(223, 128, 2, 'Men', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 05:01:13', '2021-11-03 05:01:13'),
(224, 132, 1, 'Kids Tricycle', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 05:02:09', '2021-11-03 05:02:09'),
(225, 133, 1, 'Fruits and Vegetables', '', '225.png', NULL, NULL, NULL, 1, 0, '2021-11-03 05:03:26', '2022-01-08 09:24:40'),
(226, 134, 1, 'Writing & Drawing', '', '', NULL, NULL, NULL, 44, 0, '2021-11-03 05:04:39', '2021-11-03 05:04:39'),
(227, 114, 1, 'Beef', '', '227.webp', NULL, NULL, NULL, 44, 0, '2021-11-04 05:00:11', '2021-11-04 05:00:11'),
(229, 106, 1213, 'Omera LPG', '', '229.jpg', '229banner.jpg', NULL, NULL, 44, 0, '2021-11-05 12:02:42', '2021-11-05 12:02:42'),
(230, 106, 1214, 'Jamuna GasÂ®', '', '230.jpg', '230banner.jfif', NULL, NULL, 44, 0, '2021-11-05 12:25:57', '2021-11-05 12:25:57'),
(231, 106, 13, 'Bashundhara LP Gas', '', '231.jpg', '231banner.webp', NULL, NULL, 46, 0, '2021-11-08 08:40:51', '2021-11-08 08:40:51'),
(232, 106, 4, 'Orion Gas ltd.', '', '232.jpg', '232banner.png', NULL, NULL, 46, 0, '2021-11-08 10:59:53', '2021-11-08 10:59:53'),
(233, 106, 5, 'LAUGFS Gas (Bangladesh) Ltd.', '', '233.png', '233banner.png', NULL, NULL, 46, 0, '2021-11-08 11:10:31', '2021-11-08 11:10:31'),
(236, 114, 5, 'Chicken', '', '', NULL, NULL, NULL, 46, 0, '2021-11-22 07:25:44', '2021-11-22 07:25:44'),
(237, 114, 5, 'Other Birds', '', '237.jfif', '237banner.jpg', NULL, NULL, 46, 0, '2021-11-24 07:34:15', '2021-11-24 07:34:15'),
(240, 121, 6, 'Powder Milk & Cream', '', '', '240banner.png', NULL, NULL, 46, 0, '2021-11-28 11:18:06', '2021-11-28 11:18:06'),
(241, 113, 25, 'Shirt', '', '241.webp', NULL, NULL, NULL, 1, 0, '2022-01-12 14:36:02', '2022-01-12 14:36:02'),
(242, 115, 26, 'Womens\'Clothings', '', '242.jpg', NULL, NULL, NULL, 1, 0, '2022-01-12 14:59:06', '2022-01-12 15:00:17'),
(244, 142, 25, 'Clothings', '', '', NULL, NULL, NULL, 1, 0, '2022-01-13 02:51:00', '2022-01-13 05:49:18'),
(245, 115, 28, 'Sharee', '', '245.jpg', NULL, NULL, NULL, 1, 0, '2022-01-13 03:37:44', '2022-01-13 03:37:44'),
(246, 113, 24, 'panjabi', '', '246.webp', NULL, NULL, NULL, 1, 0, '2022-01-13 05:24:44', '2022-01-13 05:24:44'),
(247, 113, 25, 'Fatua', '', '247.webp', NULL, NULL, NULL, 1, 0, '2022-01-13 05:25:07', '2022-01-13 05:25:07'),
(248, 113, 26, 'Tshirt', '', '248.webp', '248banner.webp', NULL, NULL, 1, 0, '2022-01-13 05:25:41', '2022-01-13 05:25:41'),
(249, 113, 27, 'Jecekets', '', '249.webp', NULL, NULL, NULL, 1, 0, '2022-01-13 05:27:02', '2022-01-13 05:27:02'),
(250, 113, 28, 'Hoodies', '', '', NULL, NULL, NULL, 1, 0, '2022-01-13 05:27:18', '2022-01-13 05:27:18'),
(252, 115, 30, 'Kurti Fatua', '', '252.webp', NULL, NULL, NULL, 1, 0, '2022-01-13 05:28:55', '2022-01-13 05:28:55'),
(253, 115, 31, 'Tops & Shirts', '', '253.jpg', NULL, NULL, NULL, 1, 0, '2022-01-13 05:29:28', '2022-01-13 05:29:28'),
(256, 116, 34, 'T-shirt', '', '', NULL, NULL, NULL, 1, 0, '2022-01-13 05:31:03', '2022-01-13 05:47:42'),
(257, 116, 35, 'Casula Shirt', '', '', NULL, NULL, NULL, 1, 0, '2022-01-13 05:31:36', '2022-01-13 05:47:22'),
(258, 116, 36, 'Panjabi', '', '', NULL, NULL, NULL, 1, 0, '2022-01-13 05:31:59', '2022-01-13 05:47:31'),
(260, 116, 37, 'Patua', '', '', NULL, NULL, NULL, 1, 0, '2022-01-13 05:33:04', '2022-01-13 05:46:53'),
(261, 142, 38, 'Tunics', '', '261.webp', NULL, NULL, NULL, 1, 0, '2022-01-13 05:34:10', '2022-01-13 05:49:24'),
(262, 142, 39, 'Capri', '', '262.webp', NULL, NULL, NULL, 1, 0, '2022-01-13 05:34:37', '2022-01-13 05:49:31'),
(263, 142, 40, 'Clothings Sets', '', '263.webp', NULL, NULL, NULL, 1, 0, '2022-01-13 05:35:03', '2022-01-13 05:49:36'),
(264, 115, 41, 'grills Jeans', '', '264.webp', NULL, NULL, NULL, 1, 0, '2022-01-13 05:35:38', '2022-02-28 01:24:05'),
(265, 115, 43, 'Junior Boys', '', '265.webp', NULL, NULL, NULL, 1, 0, '2022-01-13 05:36:11', '2022-02-28 01:24:01'),
(266, 115, 44, 'Junior Grils', '', '266.webp', '266banner.webp', NULL, NULL, 1, 0, '2022-01-13 05:36:30', '2022-02-28 01:23:58'),
(267, 115, 45, 'Fabric Mask', '', '267.webp', '267banner.webp', NULL, NULL, 1, 0, '2022-01-13 05:37:05', '2022-02-28 01:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `product_id`, `color`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 525, 'None', 1, 0, NULL, NULL),
(2, 518, 'Choose...', 1, 0, NULL, NULL),
(12, 590, 'Red', 1, 0, NULL, NULL),
(15, 588, 'White', 1, 0, NULL, NULL),
(16, 588, 'Black', 1, 0, NULL, NULL),
(17, 588, 'Pink', 1, 0, NULL, NULL),
(18, 588, 'Green', 1, 0, NULL, NULL),
(25, 590, 'White', 1, 0, NULL, NULL),
(26, 590, 'Black', 1, 0, NULL, NULL),
(27, 590, 'Orange', 1, 0, NULL, NULL),
(28, 590, 'Yellow', 1, 0, NULL, NULL),
(31, 593, 'White', 1, 0, NULL, NULL),
(32, 593, 'Red', 1, 0, NULL, NULL),
(48, 589, 'White', 1, 0, NULL, NULL),
(49, 589, 'Red', 1, 0, NULL, NULL),
(50, 589, 'Black', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_color_infos`
--

CREATE TABLE `product_color_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color_infos`
--

INSERT INTO `product_color_infos` (`id`, `color_title`, `created_at`, `updated_at`) VALUES
(1, 'White', '2022-01-20 03:10:58', '2022-01-20 03:10:58'),
(2, 'Red', '2022-01-20 03:11:02', '2022-01-20 03:11:02'),
(3, 'Black', '2022-01-20 03:11:15', '2022-01-20 03:11:15'),
(4, 'Pink', '2022-01-20 03:11:18', '2022-01-20 03:11:18'),
(5, 'Orange', '2022-01-20 03:11:22', '2022-01-20 03:11:22'),
(6, 'Yellow', '2022-01-20 03:11:25', '2022-01-20 03:11:25'),
(7, 'Green', '2022-01-20 03:11:30', '2022-01-20 03:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_company`
--

CREATE TABLE `product_company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl` int(11) DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_show` int(11) DEFAULT '1',
  `status` int(11) DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_company`
--

INSERT INTO `product_company` (`id`, `sl`, `company_name`, `image`, `branch_id`, `home_show`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(282, 1, 'Teers', '282.jpg', '', NULL, NULL, '1', '2021-10-25 10:01:36', '2021-10-25 10:03:00'),
(283, 2, 'sarf Execl', '283.jpg', '', NULL, NULL, '44', '2021-11-02 10:46:34', '2021-11-02 10:46:34'),
(284, 13, 'Bashundhara LP Gas Ltd.', '284.jpg', '', NULL, NULL, '46', '2021-11-08 08:44:18', '2021-11-08 08:44:18'),
(285, 14, 'INDEX LP GAS Limited', '', '', NULL, NULL, '46', '2021-11-08 09:07:48', '2021-11-08 09:07:48'),
(286, 15, 'Orion Gas Ltd', '286.png', '', NULL, NULL, '46', '2021-11-08 09:10:08', '2021-11-08 09:10:08'),
(287, 16, 'LAUGFS Gas (Bangladesh) Ltd.', '287.png', '', NULL, NULL, '46', '2021-11-08 09:12:55', '2021-11-08 09:12:55'),
(288, 17, 'Totalgaz Bangladesh', '288.jfif', '', NULL, NULL, '46', '2021-11-08 09:16:37', '2021-11-08 09:16:37'),
(289, 18, 'JMI LPG', '', '', NULL, NULL, '46', '2021-11-08 09:21:21', '2021-11-08 09:21:21'),
(290, 19, 'Navana LPG Limited', '290.jfif', '', NULL, NULL, '46', '2021-11-08 09:22:48', '2021-11-08 09:22:48'),
(291, 2, 'Omera LPG', '291.jpg', '', NULL, NULL, '46', '2021-11-08 09:33:50', '2021-11-08 09:33:50'),
(292, 5, 'LAUGFS Gas (Bangladesh) Ltd.', '292.png', '', NULL, NULL, '46', '2021-11-08 11:05:51', '2021-11-08 11:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(5, 2, '2036828333.jpg', NULL, NULL),
(6, 3, '949275092.jpg', NULL, NULL),
(7, 4, '392255795.jpg', NULL, NULL),
(8, 5, '1936099577.jpg', NULL, NULL),
(9, 6, '1090341408.jpg', NULL, NULL),
(10, 7, '978149380.jpg', NULL, NULL),
(11, 8, '830626750.jpg', NULL, NULL),
(12, 9, '1490725941.png', NULL, NULL),
(13, 10, '768425563.png', NULL, NULL),
(14, 11, '314533440.png', NULL, NULL),
(15, 12, '1601698758.png', NULL, NULL),
(16, 13, '1743559058.png', NULL, NULL),
(17, 15, '1667486571.jpg', NULL, NULL),
(18, 16, '1332454943.webp', NULL, NULL),
(19, 17, '278285110.webp', NULL, NULL),
(20, 18, '1803371243.webp', NULL, NULL),
(21, 19, '955229031.webp', NULL, NULL),
(22, 20, '1250443193.webp', NULL, NULL),
(23, 21, '1203545531.webp', NULL, NULL),
(24, 22, '1931724428.webp', NULL, NULL),
(25, 23, '1916596224.webp', NULL, NULL),
(26, 24, '343844838.webp', NULL, NULL),
(27, 25, '1760093568.webp', NULL, NULL),
(28, 27, '1213611507.jpg', NULL, NULL),
(29, 28, '2020012778.jpg', NULL, NULL),
(30, 29, '1260011735.jpg', NULL, NULL),
(31, 30, '1353434060.jpg', NULL, NULL),
(32, 31, '1107799822.jpg', NULL, NULL),
(33, 33, '468031698.jpg', NULL, NULL),
(34, 35, '1276764058.jpg', NULL, NULL),
(35, 36, '37965379.jpg', NULL, NULL),
(36, 37, '1855424146.png', NULL, NULL),
(37, 39, '1243825077.jfif', NULL, NULL),
(38, 40, '1006425322.jfif', NULL, NULL),
(39, 41, '524043961.jfif', NULL, NULL),
(40, 42, '371331788.png', NULL, NULL),
(41, 43, '574749911.jpg', NULL, NULL),
(42, 44, '512065441.jpg', NULL, NULL),
(43, 45, '1665811837.jfif', NULL, NULL),
(44, 46, '462487638.png', NULL, NULL),
(45, 47, '1865926758.png', NULL, NULL),
(46, 48, '857025307.jfif', NULL, NULL),
(47, 49, '1760356627.png', NULL, NULL),
(48, 50, '1043640410.jfif', NULL, NULL),
(49, 51, '2000846001.jfif', NULL, NULL),
(50, 52, '2068101838.jfif', NULL, NULL),
(51, 53, '1141433568.jfif', NULL, NULL),
(52, 55, '1759017905.jfif', NULL, NULL),
(53, 56, '2101650669.jpg', NULL, NULL),
(54, 59, '620535452.jfif', NULL, NULL),
(55, 60, '1859323119.jfif', NULL, NULL),
(56, 61, '69619225.png', NULL, NULL),
(57, 62, '61818586.png', NULL, NULL),
(58, 63, '655653679.png', NULL, NULL),
(59, 64, '71430915.png', NULL, NULL),
(60, 65, '558065866.jpg', NULL, NULL),
(61, 68, '2077591999.jpg', NULL, NULL),
(62, 69, '1585526727.png', NULL, NULL),
(63, 70, '1627424990.jpg', NULL, NULL),
(64, 71, '1490829724.png', NULL, NULL),
(65, 73, '1359643080.jpg', NULL, NULL),
(66, 74, '1115369541.jpg', NULL, NULL),
(67, 75, '1750016713.jpg', NULL, NULL),
(68, 76, '2018051850.jpg', NULL, NULL),
(69, 77, '172607533.jpg', NULL, NULL),
(70, 78, '1558383189.jpg', NULL, NULL),
(71, 79, '1864152403.jpg', NULL, NULL),
(73, 81, '252324627.jpg', NULL, NULL),
(74, 82, '185911222.jpg', NULL, NULL),
(75, 83, '434974758.jpg', NULL, NULL),
(76, 84, '2109148553.jpg', NULL, NULL),
(77, 85, '1890273075.jpg', NULL, NULL),
(78, 86, '512198724.jfif', NULL, NULL),
(79, 87, '1158431841.jpg', NULL, NULL),
(80, 88, '1362821587.jpg', NULL, NULL),
(81, 89, '1774445370.jpg', NULL, NULL),
(82, 90, '1004159745.jpeg', NULL, NULL),
(87, 95, '1300582797.jpg', NULL, NULL),
(90, 98, '1758059162.jpg', NULL, NULL),
(91, 99, '437861741.jpg', NULL, NULL),
(92, 101, '504166248.jpg', NULL, NULL),
(93, 102, '1931681360.jpg', NULL, NULL),
(94, 103, '1634327993.jpeg', NULL, NULL),
(95, 104, '1656398276.jpg', NULL, NULL),
(96, 105, '436687790.jpg', NULL, NULL),
(97, 106, '345698393.jpg', NULL, NULL),
(98, 107, '259336425.jpeg', NULL, NULL),
(99, 108, '689066983.jpg', NULL, NULL),
(100, 109, '566994775.jpg', NULL, NULL),
(101, 110, '1622606068.jfif', NULL, NULL),
(102, 111, '785797046.jpg', NULL, NULL),
(103, 112, '643000436.jpg', NULL, NULL),
(104, 113, '1933147952.jpg', NULL, NULL),
(111, 120, '183831547.jpg', NULL, NULL),
(112, 121, '1169388737.png', NULL, NULL),
(113, 122, '1693730565.jpg', NULL, NULL),
(114, 123, '794617107.jfif', NULL, NULL),
(115, 124, '1109661075.jpg', NULL, NULL),
(116, 125, '1633306625.jpg', NULL, NULL),
(117, 126, '771484322.jfif', NULL, NULL),
(118, 127, '338821936.jpg', NULL, NULL),
(119, 128, '1624564952.jfif', NULL, NULL),
(120, 129, '346166942.jfif', NULL, NULL),
(121, 130, '2078947324.jfif', NULL, NULL),
(122, 131, '2142380219.jfif', NULL, NULL),
(123, 132, '1990371044.jfif', NULL, NULL),
(124, 100, '1207017443.jpg', NULL, NULL),
(125, 133, '1608323611.jpg', NULL, NULL),
(126, 134, '1358399562.jpg', NULL, NULL),
(127, 135, '388729481.jpeg', NULL, NULL),
(128, 136, '2028032335.jpg', NULL, NULL),
(129, 137, '1769364991.jpg', NULL, NULL),
(130, 138, '1349792474.jpg', NULL, NULL),
(131, 139, '1347083823.jpg', NULL, NULL),
(132, 140, '1114092350.jpeg', NULL, NULL),
(133, 141, '699570302.png', NULL, NULL),
(134, 142, '2105179925.jpg', NULL, NULL),
(135, 143, '1690748858.jpeg', NULL, NULL),
(136, 144, '1687424962.jpeg', NULL, NULL),
(137, 145, '818790374.jpeg', NULL, NULL),
(138, 146, '307657523.jpg', NULL, NULL),
(139, 147, '906919043.jpg', NULL, NULL),
(140, 148, '294708620.png', NULL, NULL),
(141, 149, '2039153316.jpg', NULL, NULL),
(142, 150, '1644747215.jpg', NULL, NULL),
(143, 151, '1914120107.jpg', NULL, NULL),
(144, 152, '1434520100.jpg', NULL, NULL),
(145, 153, '1051495610.jpg', NULL, NULL),
(146, 154, '1093053969.jpg', NULL, NULL),
(147, 155, '1759442304.jfif', NULL, NULL),
(148, 156, '1092378611.jpg', NULL, NULL),
(149, 157, '832820020.jpg', NULL, NULL),
(150, 158, '2000739463.jfif', NULL, NULL),
(151, 159, '1504886208.jpg', NULL, NULL),
(152, 160, '1004485863.jfif', NULL, NULL),
(153, 161, '1875136132.jpg', NULL, NULL),
(154, 162, '841094979.jpg', NULL, NULL),
(155, 163, '1821944749.jfif', NULL, NULL),
(156, 164, '504413806.jpg', NULL, NULL),
(157, 165, '827185054.jfif', NULL, NULL),
(158, 166, '1395157579.jfif', NULL, NULL),
(159, 167, '1671220176.jpg', NULL, NULL),
(160, 168, '673616613.jpg', NULL, NULL),
(161, 169, '1968716200.jfif', NULL, NULL),
(162, 170, '1678320303.jpg', NULL, NULL),
(163, 171, '900503192.jpg', NULL, NULL),
(164, 172, '1685011988.jpg', NULL, NULL),
(165, 173, '881702586.jpg', NULL, NULL),
(166, 174, '2031206528.jpg', NULL, NULL),
(167, 175, '1393488878.jpg', NULL, NULL),
(168, 176, '802371143.png', NULL, NULL),
(169, 177, '438127396.png', NULL, NULL),
(170, 178, '259617092.jpeg', NULL, NULL),
(171, 179, '1973728496.jpg', NULL, NULL),
(172, 180, '1222915775.jpg', NULL, NULL),
(173, 181, '571390059.jpg', NULL, NULL),
(174, 182, '966834256.jpg', NULL, NULL),
(175, 183, '834740201.jfif', NULL, NULL),
(176, 185, '283763349.jfif', NULL, NULL),
(177, 186, '198878654.jpg', NULL, NULL),
(178, 187, '1683387677.jfif', NULL, NULL),
(179, 188, '90404206.jfif', NULL, NULL),
(180, 189, '279707816.jpg', NULL, NULL),
(181, 190, '1751577905.jpg', NULL, NULL),
(182, 191, '159429041.jpg', NULL, NULL),
(183, 192, '969087906.jfif', NULL, NULL),
(184, 193, '1758974752.jpg', NULL, NULL),
(185, 194, '379825231.jpg', NULL, NULL),
(186, 195, '1514624105.jpeg', NULL, NULL),
(187, 196, '1905270453.jpeg', NULL, NULL),
(188, 197, '1443323427.jpg', NULL, NULL),
(189, 198, '1692014468.jpg', NULL, NULL),
(190, 199, '1794824475.jpg', NULL, NULL),
(191, 200, '1628093762.jpg', NULL, NULL),
(192, 201, '570823132.jfif', NULL, NULL),
(193, 202, '1122556074.jpg', NULL, NULL),
(194, 203, '1955477874.jpg', NULL, NULL),
(195, 204, '1811432389.jpg', NULL, NULL),
(196, 205, '1477286372.jpg', NULL, NULL),
(197, 206, '106276606.jpg', NULL, NULL),
(198, 207, '456968559.jpg', NULL, NULL),
(199, 208, '1636084798.webp', NULL, NULL),
(200, 209, '199887851.jpg', NULL, NULL),
(201, 210, '2124703873.jpg', NULL, NULL),
(202, 211, '1331086325.jfif', NULL, NULL),
(203, 212, '417802811.jpg', NULL, NULL),
(204, 214, '1844786165.jpg', NULL, NULL),
(205, 215, '470055640.jpg', NULL, NULL),
(206, 216, '138279530.png', NULL, NULL),
(207, 217, '999748176.jpg', NULL, NULL),
(208, 218, '48520776.png', NULL, NULL),
(209, 219, '162340215.jpg', NULL, NULL),
(210, 220, '1424291617.jpg', NULL, NULL),
(211, 221, '1874051901.jpg', NULL, NULL),
(212, 222, '397129716.jfif', NULL, NULL),
(213, 223, '938902761.jpg', NULL, NULL),
(214, 224, '1153821671.jpg', NULL, NULL),
(215, 225, '1141992022.jfif', NULL, NULL),
(216, 226, '631125196.jpg', NULL, NULL),
(217, 227, '827241390.jpg', NULL, NULL),
(218, 228, '783601920.jpg', NULL, NULL),
(219, 229, '1334571108.jpg', NULL, NULL),
(220, 230, '1822318513.jpg', NULL, NULL),
(221, 231, '1979281854.jpg', NULL, NULL),
(222, 232, '1361226441.jpg', NULL, NULL),
(223, 233, '2007857772.jpg', NULL, NULL),
(224, 234, '894669246.jfif', NULL, NULL),
(225, 235, '97210785.jpg', NULL, NULL),
(226, 236, '1546097159.jpg', NULL, NULL),
(227, 237, '1266444588.jpg', NULL, NULL),
(228, 238, '740476951.jpg', NULL, NULL),
(229, 239, '818043613.png', NULL, NULL),
(230, 240, '1992189.jpg', NULL, NULL),
(231, 241, '937968765.jfif', NULL, NULL),
(232, 242, '1159270763.jpg', NULL, NULL),
(233, 243, '658062529.jpg', NULL, NULL),
(234, 244, '348557496.jfif', NULL, NULL),
(235, 245, '1915951540.jpg', NULL, NULL),
(236, 246, '1566129453.webp', NULL, NULL),
(237, 247, '268066442.jfif', NULL, NULL),
(238, 248, '1648664950.jpg', NULL, NULL),
(239, 249, '1594985720.jpg', NULL, NULL),
(240, 250, '1400384925.jpg', NULL, NULL),
(241, 251, '1052059467.jpg', NULL, NULL),
(242, 252, '963795058.jpg', NULL, NULL),
(243, 253, '171423887.jfif', NULL, NULL),
(244, 254, '375295249.jpg', NULL, NULL),
(245, 255, '1574479869.jfif', NULL, NULL),
(246, 256, '1696342791.jpg', NULL, NULL),
(247, 257, '1370859456.jpg', NULL, NULL),
(248, 258, '585399445.jpg', NULL, NULL),
(249, 259, '42113849.jpg', NULL, NULL),
(250, 260, '1666159176.jpg', NULL, NULL),
(251, 261, '1878716126.jpg', NULL, NULL),
(252, 262, '1322485446.jpg', NULL, NULL),
(253, 263, '2124961035.jpg', NULL, NULL),
(254, 264, '1076072711.jpg', NULL, NULL),
(255, 265, '2108412122.jpg', NULL, NULL),
(256, 266, '86128382.jpg', NULL, NULL),
(257, 267, '1513136701.jfif', NULL, NULL),
(258, 268, '735309208.jpg', NULL, NULL),
(259, 269, '853723496.jpg', NULL, NULL),
(260, 270, '59122772.jpg', NULL, NULL),
(261, 271, '796857810.jpg', NULL, NULL),
(262, 272, '1435819405.jpg', NULL, NULL),
(263, 273, '984594291.jpg', NULL, NULL),
(264, 274, '1276599149.jpg', NULL, NULL),
(265, 275, '61260624.jpg', NULL, NULL),
(266, 276, '1732607778.jpg', NULL, NULL),
(267, 277, '2101344419.jpg', NULL, NULL),
(268, 278, '1599209533.jpg', NULL, NULL),
(269, 280, '1297617227.jpg', NULL, NULL),
(270, 281, '2076015730.jpg', NULL, NULL),
(271, 282, '272840676.jpg', NULL, NULL),
(272, 283, '1159113884.jpg', NULL, NULL),
(273, 284, '1893621184.jpg', NULL, NULL),
(274, 285, '1416354337.jpg', NULL, NULL),
(275, 286, '155018747.jpg', NULL, NULL),
(276, 287, '1197008533.jpg', NULL, NULL),
(277, 288, '466588704.jpg', NULL, NULL),
(278, 289, '609616120.jpg', NULL, NULL),
(279, 290, '1604039290.jpg', NULL, NULL),
(280, 291, '1155307171.jpg', NULL, NULL),
(281, 292, '986849557.jpg', NULL, NULL),
(282, 293, '447043154.jpg', NULL, NULL),
(283, 294, '1001092453.jpg', NULL, NULL),
(284, 295, '860603158.jpeg', NULL, NULL),
(285, 296, '1739284662.jpg', NULL, NULL),
(286, 297, '943733523.jpg', NULL, NULL),
(287, 298, '1540783452.jpg', NULL, NULL),
(288, 299, '737173839.jpg', NULL, NULL),
(289, 300, '1546940283.jpg', NULL, NULL),
(290, 301, '997211425.jfif', NULL, NULL),
(291, 302, '1595409043.jpg', NULL, NULL),
(292, 303, '365495616.jpg', NULL, NULL),
(293, 304, '2100978256.jpg', NULL, NULL),
(294, 305, '1800422397.jpg', NULL, NULL),
(295, 306, '1198920959.jpg', NULL, NULL),
(296, 307, '365689862.jpg', NULL, NULL),
(297, 308, '84471133.jpg', NULL, NULL),
(298, 309, '1846648499.png', NULL, NULL),
(299, 310, '1774130875.webp', NULL, NULL),
(300, 311, '131144693.jpg', NULL, NULL),
(301, 312, '1381867954.jpg', NULL, NULL),
(302, 313, '96235116.jpg', NULL, NULL),
(303, 314, '178829114.jpg', NULL, NULL),
(304, 315, '700623723.jpg', NULL, NULL),
(305, 316, '1264068684.jpg', NULL, NULL),
(306, 317, '1848550854.jpg', NULL, NULL),
(307, 318, '846638922.jpg', NULL, NULL),
(308, 319, '377624651.jpg', NULL, NULL),
(309, 320, '306137184.jpg', NULL, NULL),
(310, 321, '161524495.jpg', NULL, NULL),
(311, 322, '1590455547.jpg', NULL, NULL),
(312, 323, '1994829649.jpg', NULL, NULL),
(313, 324, '162916277.jpg', NULL, NULL),
(314, 325, '1235025580.jpg', NULL, NULL),
(315, 326, '1215231461.jpg', NULL, NULL),
(316, 327, '331977250.jpg', NULL, NULL),
(317, 328, '1287105886.jpg', NULL, NULL),
(318, 329, '168647103.jpg', NULL, NULL),
(319, 330, '2106023974.jpg', NULL, NULL),
(320, 331, '1176960802.jpg', NULL, NULL),
(321, 332, '1912123144.jpg', NULL, NULL),
(322, 333, '1316512164.jpg', NULL, NULL),
(323, 334, '1367192964.jpg', NULL, NULL),
(324, 335, '834800753.jfif', NULL, NULL),
(325, 336, '990150697.jpg', NULL, NULL),
(326, 337, '1959779146.jpg', NULL, NULL),
(327, 338, '390101670.jpg', NULL, NULL),
(328, 339, '1914327496.jpg', NULL, NULL),
(329, 340, '1476836672.jpg', NULL, NULL),
(330, 341, '752588442.jpg', NULL, NULL),
(331, 342, '563288549.jpg', NULL, NULL),
(332, 343, '301617486.jpg', NULL, NULL),
(333, 344, '1688937244.jpg', NULL, NULL),
(334, 345, '1880783888.jpg', NULL, NULL),
(335, 346, '45471587.jpg', NULL, NULL),
(336, 347, '1056728272.jpg', NULL, NULL),
(337, 348, '1233670483.jpg', NULL, NULL),
(338, 349, '1514604000.jpg', NULL, NULL),
(339, 350, '67691934.jpg', NULL, NULL),
(340, 351, '482064481.jpg', NULL, NULL),
(341, 352, '251637909.jpg', NULL, NULL),
(342, 353, '112316809.jpg', NULL, NULL),
(343, 354, '182675134.jpg', NULL, NULL),
(344, 355, '2055641355.jpg', NULL, NULL),
(345, 356, '1488586120.jpg', NULL, NULL),
(346, 357, '501162149.jpg', NULL, NULL),
(347, 358, '851824332.jpg', NULL, NULL),
(348, 359, '702029107.jpg', NULL, NULL),
(349, 360, '1495739687.jpg', NULL, NULL),
(350, 361, '997093954.jpg', NULL, NULL),
(351, 363, '1223776190.jpg', NULL, NULL),
(352, 364, '407226237.jfif', NULL, NULL),
(353, 365, '1689436963.jpg', NULL, NULL),
(354, 366, '1348569675.jpg', NULL, NULL),
(355, 367, '1251543776.jpg', NULL, NULL),
(356, 368, '643915359.jpg', NULL, NULL),
(357, 369, '510295245.jpg', NULL, NULL),
(358, 370, '828498648.jpg', NULL, NULL),
(359, 371, '37197037.jpg', NULL, NULL),
(360, 372, '208465371.jpg', NULL, NULL),
(361, 373, '1732248727.jpg', NULL, NULL),
(362, 374, '968672769.jpg', NULL, NULL),
(363, 375, '1424642482.jpg', NULL, NULL),
(364, 376, '1386391551.jpg', NULL, NULL),
(365, 377, '135842438.jpg', NULL, NULL),
(366, 378, '26809864.jpg', NULL, NULL),
(367, 379, '1805245261.jpg', NULL, NULL),
(368, 380, '1715108521.jpg', NULL, NULL),
(369, 381, '1235560700.jpg', NULL, NULL),
(370, 382, '958427744.jpg', NULL, NULL),
(371, 383, '486577214.jpg', NULL, NULL),
(372, 384, '82432504.jpg', NULL, NULL),
(373, 385, '1544963258.jpg', NULL, NULL),
(374, 386, '1645875747.jpg', NULL, NULL),
(375, 387, '859006193.jfif', NULL, NULL),
(376, 388, '1602561392.jpg', NULL, NULL),
(377, 389, '711345176.jpg', NULL, NULL),
(378, 390, '2092912855.jpeg', NULL, NULL),
(379, 391, '1711052444.jpg', NULL, NULL),
(380, 392, '216015982.jpg', NULL, NULL),
(381, 393, '1493066792.jpg', NULL, NULL),
(382, 394, '1514712327.jpg', NULL, NULL),
(383, 395, '1769981448.jpg', NULL, NULL),
(384, 396, '2037278652.jpg', NULL, NULL),
(385, 397, '1602302470.jpg', NULL, NULL),
(386, 398, '1962301795.jpg', NULL, NULL),
(387, 399, '1213185712.jpg', NULL, NULL),
(388, 400, '967239482.jpg', NULL, NULL),
(389, 401, '1846686872.jpg', NULL, NULL),
(390, 402, '1671839883.jpg', NULL, NULL),
(391, 403, '1877753948.jpg', NULL, NULL),
(392, 404, '1798672718.jpg', NULL, NULL),
(393, 405, '1268835891.jpg', NULL, NULL),
(394, 406, '1496754500.jpg', NULL, NULL),
(395, 407, '562553689.jpg', NULL, NULL),
(396, 408, '296696516.jpg', NULL, NULL),
(397, 409, '540355966.jpeg', NULL, NULL),
(398, 410, '101373266.jpg', NULL, NULL),
(399, 411, '1965809141.jpg', NULL, NULL),
(400, 412, '1748480206.jpg', NULL, NULL),
(401, 413, '1363440979.jpg', NULL, NULL),
(402, 414, '1312070879.jpg', NULL, NULL),
(403, 415, '871324431.jpg', NULL, NULL),
(404, 416, '2014639390.jpg', NULL, NULL),
(405, 417, '503869633.jpg', NULL, NULL),
(406, 418, '2059936745.jpg', NULL, NULL),
(407, 419, '371129796.jpg', NULL, NULL),
(408, 420, '630073743.jpg', NULL, NULL),
(409, 421, '2140831275.jpg', NULL, NULL),
(410, 422, '204941547.jpg', NULL, NULL),
(411, 423, '1434962524.jpg', NULL, NULL),
(412, 424, '27129002.jpg', NULL, NULL),
(413, 425, '452239260.jpg', NULL, NULL),
(414, 426, '569783075.jpg', NULL, NULL),
(415, 427, '1082010462.jpg', NULL, NULL),
(416, 428, '1153794559.jpg', NULL, NULL),
(417, 429, '2104740195.jpg', NULL, NULL),
(418, 430, '244630268.jpg', NULL, NULL),
(419, 431, '470207559.jpg', NULL, NULL),
(420, 432, '1330296394.jpg', NULL, NULL),
(421, 433, '871045978.jpg', NULL, NULL),
(422, 434, '118244467.jpg', NULL, NULL),
(423, 435, '753517455.jpg', NULL, NULL),
(424, 436, '975369525.jpg', NULL, NULL),
(425, 437, '1805025762.jpg', NULL, NULL),
(426, 438, '1501718531.jpg', NULL, NULL),
(427, 439, '1989834363.jpg', NULL, NULL),
(428, 440, '1171844817.jfif', NULL, NULL),
(429, 441, '1115103833.jpg', NULL, NULL),
(430, 442, '1238268449.jpg', NULL, NULL),
(431, 443, '1343838403.jpg', NULL, NULL),
(432, 444, '1133130790.jpg', NULL, NULL),
(433, 445, '1917202160.jpg', NULL, NULL),
(434, 446, '962563462.jpg', NULL, NULL),
(435, 447, '427052448.jpg', NULL, NULL),
(436, 448, '1240389836.jpg', NULL, NULL),
(437, 449, '72708894.jpg', NULL, NULL),
(438, 450, '1558504038.jpg', NULL, NULL),
(439, 451, '1037614843.jpg', NULL, NULL),
(440, 452, '264576561.jpg', NULL, NULL),
(441, 453, '748943819.jpg', NULL, NULL),
(442, 454, '1003720131.jpg', NULL, NULL),
(443, 455, '2019938695.jpg', NULL, NULL),
(444, 456, '1991792902.jpg', NULL, NULL),
(445, 457, '381110686.jpg', NULL, NULL),
(446, 458, '113979486.jpg', NULL, NULL),
(447, 459, '340103785.jpg', NULL, NULL),
(448, 460, '544344276.jpg', NULL, NULL),
(449, 461, '469494154.jpg', NULL, NULL),
(450, 462, '1179691061.jpg', NULL, NULL),
(451, 463, '268080671.jpg', NULL, NULL),
(452, 464, '1481960851.jpg', NULL, NULL),
(453, 465, '1582853597.jpg', NULL, NULL),
(454, 466, '1179447407.jfif', NULL, NULL),
(455, 467, '1115368185.jpg', NULL, NULL),
(456, 468, '1734019515.jpg', NULL, NULL),
(457, 469, '1152319093.jpg', NULL, NULL),
(458, 470, '836030246.jpg', NULL, NULL),
(459, 471, '787656854.jpg', NULL, NULL),
(460, 472, '1145343817.jpg', NULL, NULL),
(461, 473, '1582001953.jpg', NULL, NULL),
(462, 474, '897398427.jpg', NULL, NULL),
(463, 475, '1549087996.jpg', NULL, NULL),
(464, 476, '25928529.jpg', NULL, NULL),
(465, 477, '1818084923.jpg', NULL, NULL),
(466, 478, '1344099025.jpg', NULL, NULL),
(467, 479, '1410068425.jpg', NULL, NULL),
(468, 480, '1460762206.jpg', NULL, NULL),
(469, 481, '2029822270.webp', NULL, NULL),
(470, 482, '1904524696.webp', NULL, NULL),
(471, 483, '695078349.webp', NULL, NULL),
(472, 484, '1515484828.jpg', NULL, NULL),
(473, 485, '1846158235.jpg', NULL, NULL),
(474, 486, '572639084.jpg', NULL, NULL),
(475, 487, '908021562.jpg', NULL, NULL),
(476, 488, '1261239985.jpg', NULL, NULL),
(477, 489, '822639482.jpg', NULL, NULL),
(478, 490, '1095111041.jpg', NULL, NULL),
(479, 491, '1383102189.jpg', NULL, NULL),
(480, 492, '1803733451.jpg', NULL, NULL),
(481, 493, '176968663.jpg', NULL, NULL),
(482, 494, '78568958.jpg', NULL, NULL),
(483, 495, '548116363.jpg', NULL, NULL),
(484, 496, '1733538541.webp', NULL, NULL),
(485, 497, '1996679012.webp', NULL, NULL),
(486, 498, '1316156655.jpg', NULL, NULL),
(487, 499, '782075773.webp', NULL, NULL),
(488, 500, '2085448507.jpg', NULL, NULL),
(489, 501, '481637242.jpg', NULL, NULL),
(490, 502, '401732259.jpg', NULL, NULL),
(491, 503, '425691558.jpg', NULL, NULL),
(492, 504, '128743694.jpg', NULL, NULL),
(493, 505, '1733269978.jpg', NULL, NULL),
(494, 506, '1355623433.jpg', NULL, NULL),
(495, 507, '1689473168.jpg', NULL, NULL),
(496, 508, '467146506.jpg', NULL, NULL),
(497, 509, '946456084.jfif', NULL, NULL),
(498, 510, '1740532925.jpg', NULL, NULL),
(499, 511, '1702724666.jpg', NULL, NULL),
(500, 512, '1130462624.jpg', NULL, NULL),
(501, 513, '1161308091.jpg', NULL, NULL),
(502, 514, '1704053559.jpg', NULL, NULL),
(503, 515, '691892993.jpg', NULL, NULL),
(504, 516, '1791090338.jpg', NULL, NULL),
(515, 80, '121160570.png', NULL, NULL),
(522, 526, '1929843961.jpg', NULL, NULL),
(523, 526, '592766603.jpg', NULL, NULL),
(524, 526, '2143878840.jpg', NULL, NULL),
(525, 526, '947883575.jpg', NULL, NULL),
(527, 96, '1741191730.png', NULL, NULL),
(529, 92, '85348110.jpg', NULL, NULL),
(530, 91, '2015065806.png', NULL, NULL),
(532, 97, '1099412138.jpg', NULL, NULL),
(533, 94, '1921380162.png', NULL, NULL),
(534, 93, '1779238266.png', NULL, NULL),
(535, 118, '87096708.png', NULL, NULL),
(536, 117, '1198080725.jpg', NULL, NULL),
(537, 115, '733033261.jpg', NULL, NULL),
(538, 119, '67332364.png', NULL, NULL),
(539, 114, '544328405.png', NULL, NULL),
(540, 527, '1828294522.jpg', NULL, NULL),
(541, 116, '2131020924.png', NULL, NULL),
(542, 528, '1851148227.jpg', NULL, NULL),
(543, 529, '1567299683.jpg', NULL, NULL),
(544, 530, '267953115.jpg', NULL, NULL),
(545, 531, '801407271.jpg', NULL, NULL),
(546, 532, '1399303532.jpg', NULL, NULL),
(550, 518, '1240374934.jpg', NULL, NULL),
(551, 517, '1581855472.jpg', NULL, NULL),
(552, 525, '1626838026.jpg', NULL, NULL),
(553, 522, '1903252425.jpg', NULL, NULL),
(554, 523, '1119906235.jpg', NULL, NULL),
(555, 519, '300402826.jpg', NULL, NULL),
(556, 524, '85054539.jpg', NULL, NULL),
(557, 521, '427399093.jpg', NULL, NULL),
(558, 520, '594639985.jpg', NULL, NULL),
(559, 533, '498923758.jpg', NULL, NULL),
(560, 535, '1663081300.jpg', NULL, NULL),
(561, 536, '1588504279.jpg', NULL, NULL),
(562, 537, '1139516713.jpg', NULL, NULL),
(563, 534, '2131240655.jpg', NULL, NULL),
(564, 538, '596059657.jpg', NULL, NULL),
(565, 539, '682588453.jpg', NULL, NULL),
(566, 540, '856511171.jpg', NULL, NULL),
(567, 541, '535719702.jpg', NULL, NULL),
(568, 542, '1863937669.jpg', NULL, NULL),
(569, 543, '873140297.jpg', NULL, NULL),
(570, 544, '389573395.jpg', NULL, NULL),
(571, 545, '2010118446.jpg', NULL, NULL),
(572, 546, '1432208567.jpg', NULL, NULL),
(573, 547, '480795609.jpg', NULL, NULL),
(574, 548, '416949836.jpg', NULL, NULL),
(575, 549, '384384915.jpg', NULL, NULL),
(576, 550, '1947518282.jpg', NULL, NULL),
(577, 551, '1334994373.jpg', NULL, NULL),
(578, 552, '394253497.jpg', NULL, NULL),
(579, 553, '1508715543.jpg', NULL, NULL),
(580, 554, '1792758488.jpg', NULL, NULL),
(581, 555, '1678807547.jpg', NULL, NULL),
(582, 556, '1515265337.jpg', NULL, NULL),
(583, 557, '1966998639.png', NULL, NULL),
(584, 558, '950207695.jpg', NULL, NULL),
(585, 559, '1884551524.jpg', NULL, NULL),
(586, 560, '311126826.jpg', NULL, NULL),
(587, 561, '2014497266.jpg', NULL, NULL),
(594, 567, '132719071.jpg', NULL, NULL),
(595, 564, '2094230985.jpg', NULL, NULL),
(596, 565, '881448632.jpg', NULL, NULL),
(597, 566, '181192230.jpg', NULL, NULL),
(602, 571, '530477577.png', NULL, NULL),
(613, 584, '796968580.jpg', NULL, NULL),
(614, 585, '174921009.jpg', NULL, NULL),
(626, 590, '2019748016.jpg', NULL, NULL),
(629, 563, '1214378758.jpg', NULL, NULL),
(630, 562, '1265658456.jpg', NULL, NULL),
(631, 588, '649184989.jpg', NULL, NULL),
(632, 570, '507298472.jpg', NULL, NULL),
(633, 569, '1155337148.jpg', NULL, NULL),
(634, 578, '1401251457.jpg', NULL, NULL),
(635, 572, '1274028224.jpg', NULL, NULL),
(636, 573, '340879329.jpg', NULL, NULL),
(637, 581, '168837167.jpg', NULL, NULL),
(638, 577, '1967017281.jpg', NULL, NULL),
(639, 576, '1833824018.jpg', NULL, NULL),
(640, 575, '112456083.jpg', NULL, NULL),
(641, 574, '1014726418.jpg', NULL, NULL),
(642, 587, '838535908.jpg', NULL, NULL),
(643, 586, '1978523596.jpg', NULL, NULL),
(644, 582, '1641741942.jpg', NULL, NULL),
(645, 580, '434676259.jpg', NULL, NULL),
(650, 589, '1333025552.jpg', '2022-04-20 05:31:39', '2022-04-20 05:31:39'),
(651, 589, '202343440.jpg', '2022-04-20 05:31:39', '2022-04-20 05:31:39'),
(652, 589, '941234250.jpg', '2022-04-20 05:31:39', '2022-04-20 05:31:39'),
(653, 590, '1117853424.jpg', NULL, NULL),
(654, 590, '1093904169.jpg', NULL, NULL),
(655, 590, '1888300118.jpg', NULL, NULL),
(656, 590, '2000665662.jpg', NULL, NULL),
(657, 590, '1313929911.jpg', NULL, NULL),
(658, 591, '1759182037.jpg', NULL, NULL),
(659, 591, '876418243.jpg', NULL, NULL),
(660, 591, '795695921.jpg', NULL, NULL),
(661, 591, '508340564.jpg', NULL, NULL),
(662, 592, '1784072889.jpg', NULL, NULL),
(663, 592, '976580381.jpg', NULL, NULL),
(664, 592, '213358942.jpg', NULL, NULL),
(665, 592, '2087932103.jpg', NULL, NULL),
(666, 593, '207726302.jpg', NULL, NULL),
(667, 593, '797837045.jpg', NULL, NULL),
(668, 593, '719480586.jpg', NULL, NULL),
(669, 593, '1241187966.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_item`
--

CREATE TABLE `product_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `left_menu` int(11) DEFAULT NULL,
  `shop_by` int(11) DEFAULT NULL,
  `show_home` int(11) DEFAULT NULL,
  `paginate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_item`
--

INSERT INTO `product_item` (`id`, `item_name`, `sl`, `image`, `banner`, `admin_id`, `branch_id`, `created_at`, `updated_at`, `left_menu`, `shop_by`, `show_home`, `paginate`) VALUES
(113, 'Men', 1, '113.jpg', '113banner.jpg', 1, 0, '2021-11-03 03:17:24', '2022-01-12 14:22:32', NULL, NULL, NULL, NULL),
(115, 'Women', 3, '115.jpg', '115banner.jpg', 1, 0, '2021-11-03 03:41:28', '2022-01-12 14:23:01', NULL, NULL, NULL, NULL),
(116, 'Kids Boys', 4, '116.jpg', '116banner.jpg', 1, 0, '2021-11-03 03:45:49', '2022-01-13 05:46:03', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_measurement`
--

CREATE TABLE `product_measurement` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `measurement_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_measurement`
--

INSERT INTO `product_measurement` (`id`, `measurement_type`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Piece', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_measurement_subunit`
--

CREATE TABLE `product_measurement_subunit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `measurement_unit_id` bigint(20) UNSIGNED NOT NULL,
  `sub_unit_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_unit_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_productinfo`
--

CREATE TABLE `product_productinfo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_id` bigint(50) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_bangla` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `measurement_type` bigint(20) UNSIGNED DEFAULT NULL,
  `call_for_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` double(11,2) DEFAULT '0.00',
  `sale_price` double(11,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(11,2) DEFAULT '0.00',
  `discount_per` double(11,2) DEFAULT '0.00',
  `current_price` double(11,2) NOT NULL DEFAULT '0.00',
  `min_qunt` int(11) DEFAULT '0',
  `product_us` mediumtext COLLATE utf8mb4_unicode_ci,
  `product_details` longtext COLLATE utf8mb4_unicode_ci,
  `condition` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shelf_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `stock_status` int(11) DEFAULT '1',
  `home_item_show` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `copy_dis` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copy_per` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copy_current_price` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_productinfo`
--

INSERT INTO `product_productinfo` (`id`, `product_id`, `item_id`, `category_id`, `subcategory_id`, `brand_id`, `shipping_id`, `product_name`, `product_name_bangla`, `measurement_type`, `call_for_order`, `purchase_price`, `sale_price`, `discount_price`, `discount_per`, `current_price`, `min_qunt`, `product_us`, `product_details`, `condition`, `image`, `barcode`, `shelf_no`, `seller_id`, `admin_id`, `branch_id`, `status`, `stock_status`, `home_item_show`, `created_at`, `updated_at`, `copy_dis`, `copy_per`, `copy_current_price`, `hot_deals`, `offer_id`) VALUES
(562, '126', 113, 241, NULL, NULL, NULL, 'New Sky Blue Men Shirt', NULL, 1, 'No', 200.00, 200.00, 50.00, 2.00, 200.00, 1, NULL, NULL, NULL, '1265658456.jpg', NULL, NULL, NULL, 0, NULL, 1, 1, NULL, '2022-01-12 14:37:32', '2022-03-06 01:11:19', '', '', '', NULL, NULL),
(563, '129', 113, 241, NULL, NULL, 19, 'Menswear for The Stylish and Modern', NULL, 1, 'No', 250.00, 250.00, 40.00, 5.00, 250.00, 5, NULL, NULL, NULL, '1214378758.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-12 14:38:56', '2022-01-12 14:38:56', '', '', '', NULL, NULL),
(572, '138', 115, 243, NULL, NULL, 16, 'Straight Cut Salwar Kameez', NULL, 1, 'No', 210.00, 210.00, 0.00, 0.00, 210.00, 54, NULL, NULL, NULL, '1274028224.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 02:41:39', '2022-01-13 02:41:39', '', '', '', NULL, NULL),
(573, '139', 115, 243, NULL, NULL, 16, 'Gorgeous Dark Blue Patiala', NULL, 1, 'No', 252.00, 252.00, NULL, 0.00, 252.00, 45, NULL, NULL, NULL, '340879329.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 02:42:29', '2022-01-13 02:42:29', '', '', '', NULL, NULL),
(574, '140', 116, 244, NULL, NULL, 16, 'Winter Kids Fashion Cotton Long', NULL, 1, 'No', 230.00, 230.00, 0.00, 0.00, 230.00, 44, NULL, NULL, NULL, '1014726418.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 02:52:02', '2022-01-13 02:52:02', '', '', '', NULL, NULL),
(575, '141', 116, 244, NULL, NULL, 16, 'Shopee Summer Baby Boy', NULL, 1, 'No', 210.00, 210.00, 0.00, 0.00, 210.00, 54, NULL, NULL, NULL, '112456083.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 02:52:54', '2022-01-13 02:52:54', '', '', '', NULL, NULL),
(576, '142', 116, 244, NULL, NULL, 16, 'Discount Spring Kids Boys Clothing', NULL, 1, 'No', 260.00, 260.00, 0.00, 0.00, 260.00, 99, NULL, NULL, NULL, '1833824018.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 02:53:53', '2022-01-13 02:53:53', '', '', '', NULL, NULL),
(577, '143', 116, 244, NULL, NULL, NULL, 'clothing sets boys clothing kids', NULL, 1, 'No', 240.00, 240.00, 0.00, 0.00, 240.00, 44, NULL, NULL, NULL, '1967017281.jpg', NULL, NULL, NULL, 0, NULL, 1, 1, NULL, '2022-01-13 02:55:04', '2022-03-06 01:11:25', '', '', '', NULL, NULL),
(578, '146', 116, 244, NULL, 288, 16, 'Casual Patch Color Zipper Boys Clothing', NULL, 1, 'No', 260.00, 260.00, 0.00, 0.00, 260.00, 4, NULL, NULL, NULL, '1401251457.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 03:04:14', '2022-02-27 23:01:26', '', '', '', NULL, NULL),
(580, '147', 113, 247, NULL, 287, NULL, 'Man Red Fotual', NULL, 1, 'No', 670.00, 670.00, 0.00, 0.00, 670.00, 6, NULL, NULL, NULL, '434676259.jpg', NULL, NULL, NULL, 0, NULL, 1, 1, NULL, '2022-01-13 03:39:30', '2022-03-06 01:11:13', '', '', '', NULL, NULL),
(581, '148', 115, 245, NULL, NULL, 16, 'Sharee Style Women', NULL, 1, 'No', 500.00, 500.00, 0.00, 0.00, 500.00, 85, NULL, NULL, NULL, '168837167.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 03:40:25', '2022-01-13 03:40:25', '', '', '', NULL, NULL),
(582, '149', 116, 256, NULL, 284, 16, 'fashion world Embellished', NULL, 1, 'No', 520.00, 520.00, 0.00, 0.00, 520.00, 45, NULL, NULL, NULL, '1641741942.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 03:41:41', '2022-02-27 23:08:29', '', '', '', NULL, NULL),
(586, '153', 115, 245, NULL, NULL, 16, 'Sharee Style Women', NULL, 1, 'No', 500.00, 500.00, 0.00, 0.00, 500.00, 54, NULL, NULL, NULL, '1978523596.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 03:47:30', '2022-01-13 03:47:30', '', '', '', NULL, NULL),
(587, '154', 115, 245, NULL, NULL, 16, 'Women sharee kurti', NULL, 1, 'No', 450.00, 450.00, 0.00, 0.00, 450.00, 678, NULL, NULL, NULL, '838535908.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 03:48:12', '2022-01-13 03:48:12', '', '', '', NULL, NULL),
(588, '156', 113, 241, NULL, NULL, 16, 'men shirt kurti', NULL, 1, 'No', 500.00, 400.00, 100.00, 5.00, 300.00, 1, NULL, NULL, NULL, '649184989.jpg', NULL, NULL, NULL, 1, NULL, 1, 1, NULL, '2022-01-13 03:50:42', '2022-01-22 10:03:52', '', '', '', NULL, NULL),
(589, 'Test01', 115, 242, 2, 286, NULL, 'Female A-line Long Kameez | Rasin Purple', NULL, 1, NULL, 2400.00, 2950.00, 0.00, 0.00, 2950.00, 1, '<div style=\"text-align: justify;\">Wash delicately with mild detergent in cold water. Wash with similar color. Hand wash gently in cold water</div>', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14.5px;\">Georgette A-line long kameez has band collar with lace details, has hand embroidery work on front part, princess line has lace details, has three quarter sleeve with contrast with lace details &amp; hemline ruffle, has hemline ruffle with lace details.</span><br></p>', NULL, '1216497529.jpg', NULL, NULL, NULL, 2, NULL, 1, 1, NULL, '2022-04-20 05:16:53', '2022-06-23 06:54:41', '', '', '', NULL, NULL),
(590, 'Man1', 113, 241, 0, 287, NULL, 'Zaviyar Premium Embroidery Panjabi | Sacramento', NULL, 1, NULL, 3500.00, 4150.00, 0.00, 0.00, 4150.00, 1, '<div class=\"nasa-last-sold nasa-crazy-inline\" style=\"margin: 20px 0px; padding: 0px; direction: ltr; display: flex; -webkit-box-align: baseline; align-items: baseline; font-weight: bold; font-size: 15px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><img class=\"last-sold-img\" src=\"https://www.texmartonline.com/wp-content/plugins/nasa-core/assets/images/flame.png\" alt=\"Last Sold\" width=\"18\" height=\"18\" style=\"border: 0px; color: transparent; display: inline-block; position: relative; top: 2px; animation: 8000ms ease 0s infinite normal none running nasa_flash_animate;\">&nbsp;&nbsp;5 sold in last 5 hours</div><div class=\"woocommerce-product-details__short-description\" style=\"margin: 15px 0px 20px; padding: 0px; direction: ltr; color: rgb(119, 119, 119); font-size: 13.775px; clear: both; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><p style=\"margin-bottom: 1.37931em; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\"><strong style=\"line-height: inherit;\">Style Number : 23531 Sacramento</strong></p><p style=\"margin-bottom: 0px; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\"><strong style=\"line-height: inherit;\">Material</strong>&nbsp;: High Grade Slub Cotton</p></div>', 'Zaviyar Premium Embroidery menâ€™s Panjabi with decorative metal button.', NULL, '8495544.jpg', NULL, NULL, NULL, 2, NULL, 1, 1, NULL, '2022-04-20 05:34:43', '2022-04-20 05:34:43', '', '', '', NULL, NULL),
(591, 'Dis10', 113, 246, 0, 292, NULL, 'Zaviyar Premium Embroidery Panjabi | Pewter', NULL, 1, NULL, 2800.00, 3650.00, 365.00, 10.00, 3285.00, 1, '<p class=\"price nasa-single-product-price\" style=\"margin-bottom: 15px; padding: 10px 0px 0px; direction: ltr; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-weight: 600; font-size: 26.1px; line-height: 1.2; text-rendering: optimizelegibility; min-height: 15px; color: rgb(51, 51, 51); -webkit-box-align: baseline; align-items: baseline; flex-wrap: wrap; clear: both;\"><a class=\"open-popup-link button_sg\" href=\"https://www.texmartonline.com/mens/topwear/newpanjabi/zaviyar-premium-embroidery-panjabi-pewter/#ct_size_guide-56886\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(51, 51, 51); text-decoration: underline; line-height: normal; display: table; transition-duration: 200ms; transition-property: color; float: left; padding: 3px !important; font-size: smaller !important;\">Size Guide</a></p><div class=\"clearfix\" style=\"margin: 0px; padding: 0px; direction: ltr; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 14.5px;\"></div><div class=\"nasa-last-sold nasa-crazy-inline\" style=\"margin: 20px 0px; padding: 0px; direction: ltr; display: flex; -webkit-box-align: baseline; align-items: baseline; font-weight: bold; font-size: 15px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><img class=\"last-sold-img\" src=\"https://www.texmartonline.com/wp-content/plugins/nasa-core/assets/images/flame.png\" alt=\"Last Sold\" width=\"18\" height=\"18\" style=\"border: 0px; color: transparent; display: inline-block; position: relative; top: 2px; animation: 8000ms ease 0s infinite normal none running nasa_flash_animate;\">&nbsp;&nbsp;3 sold in last 1 hour</div><div class=\"woocommerce-product-details__short-description\" style=\"margin: 15px 0px 20px; padding: 0px; direction: ltr; color: rgb(119, 119, 119); font-size: 13.775px; clear: both; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><p style=\"margin-bottom: 1.37931em; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\"><strong style=\"line-height: inherit;\">Style Number :23509&nbsp; Pewter</strong></p><p style=\"margin-bottom: 0px; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\"><strong style=\"line-height: inherit;\">Material</strong>&nbsp;:&nbsp;<b style=\"line-height: inherit;\">High Grade Slub Cotton</b></p></div>', '<p>Zaviyar Premium Embroidery menâ€™s Panjabi with decorative metal button.<br></p>', NULL, '1071713832.jpg', NULL, NULL, NULL, 2, NULL, 1, 1, NULL, '2022-04-20 05:42:22', '2022-04-20 05:42:22', '', '', '', NULL, NULL),
(592, 'TEst02', 113, 246, 0, 287, NULL, 'Zaviyar Premium Panjabi| Alabaster', NULL, 1, NULL, 1600.00, 2450.00, 0.00, 0.00, 2450.00, 1, '<div class=\"nasa-last-sold nasa-crazy-inline\" style=\"margin: 20px 0px; padding: 0px; direction: ltr; display: flex; -webkit-box-align: baseline; align-items: baseline; font-weight: bold; font-size: 15px; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><img class=\"last-sold-img\" src=\"https://www.texmartonline.com/wp-content/plugins/nasa-core/assets/images/flame.png\" alt=\"Last Sold\" width=\"18\" height=\"18\" style=\"border: 0px; color: transparent; display: inline-block; position: relative; top: 2px; animation: 8000ms ease 0s infinite normal none running nasa_flash_animate;\">&nbsp;&nbsp;10 sold in last 1 hour</div><div class=\"woocommerce-product-details__short-description\" style=\"margin: 15px 0px 20px; padding: 0px; direction: ltr; color: rgb(119, 119, 119); font-size: 13.775px; clear: both; font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif;\"><p style=\"margin-bottom: 1.37931em; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\"><strong style=\"line-height: inherit;\">Style Number : 23438&nbsp;Alabaster</strong></p><p style=\"margin-bottom: 0px; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\"><strong style=\"line-height: inherit;\">Material</strong>&nbsp;:&nbsp;<strong style=\"line-height: inherit;\">Premium Fine Cotton</strong></p></div>', '<p>Zaviyar Premium menâ€™s Panjabi with decorative snap button.<br></p>', NULL, '1385546478.jpg', NULL, NULL, NULL, 2, NULL, 1, 1, NULL, '2022-04-20 05:50:23', '2022-04-20 05:50:23', '', '', '', NULL, NULL),
(593, 'Test50', 113, 246, 0, 285, NULL, 'Zaviyar Premium Embroidery Panjabi | Deep Ruby', NULL, 1, NULL, 1450.00, 2250.00, 0.00, 0.00, 2250.00, 1, '<div style=\"text-align: center;\"><b>Features &amp; Benefits</b></div><div style=\"text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.<br></div>', '<p>Zaviyar Premium Embroidery menâ€™s Panjabi with decorative metal button.<br></p>', NULL, '270554544.jpg', NULL, NULL, NULL, 2, NULL, 1, 1, NULL, '2022-04-20 05:52:14', '2022-06-23 03:47:38', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guest_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `guest_rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `guest_id`, `product_id`, `guest_rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 122, 126, 5, '<p><img src=\"data:image/png;base64,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', 1, '2022-01-23 22:58:01', '2022-01-23 22:58:01');
INSERT INTO `product_ratings` (`id`, `guest_id`, `product_id`, `guest_rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(2, 122, 45, 3, '<p>asdasd</p>', 1, '2022-01-25 09:57:39', '2022-01-25 09:57:39'),
(3, 122, 45, 2, '<p>asdasdasd</p>', 1, '2022-01-25 09:57:48', '2022-01-25 09:57:48'),
(4, 122, 137, 5, 'as', 1, '2022-01-25 10:23:27', '2022-01-25 10:23:27'),
(5, 122, 137, 5, 'as', 1, '2022-01-25 10:23:33', '2022-01-25 10:23:33'),
(6, 122, 137, 5, 'as', 1, '2022-01-25 10:23:46', '2022-01-25 10:23:46'),
(7, 122, 137, 5, 'as', 1, '2022-01-25 10:23:59', '2022-01-25 10:23:59'),
(8, 122, 137, 5, 'sdfsdfsdf', 1, '2022-01-25 10:25:07', '2022-01-25 10:25:07'),
(9, 122, 137, 3, 'sdfdsfsdf', 1, '2022-01-25 10:30:30', '2022-01-25 10:30:30'),
(10, 122, 129, 5, 'Nice Product', 1, '2022-01-25 23:00:31', '2022-01-25 23:00:31'),
(11, 122, 154, 3, 'Nice SHari', 1, '2022-01-26 04:18:03', '2022-01-26 04:18:03'),
(12, 125, 151, 5, 'fgadsff', 1, '2022-01-26 07:45:29', '2022-01-26 07:45:29'),
(13, 125, 151, 5, 'dsfasdsadasd', 1, '2022-01-26 07:47:11', '2022-01-26 07:47:11'),
(14, 125, 151, 5, 'erqwer', 1, '2022-01-27 08:36:27', '2022-01-27 08:36:27'),
(15, 122, 156, 3, 'asas', 1, '2022-01-29 14:27:52', '2022-01-29 14:27:52'),
(16, 122, 156, 4, 'asdasd', 1, '2022-01-29 14:28:04', '2022-01-29 14:28:04'),
(17, 122, 156, 5, 'assaas', 1, '2022-01-29 14:29:00', '2022-01-29 14:29:00'),
(18, 122, 156, 5, 'as', 1, '2022-01-29 15:26:26', '2022-01-29 15:26:26'),
(19, 122, 156, 3, '3', 1, '2022-01-29 16:09:55', '2022-01-29 16:09:55'),
(20, 125, 151, 5, 'dd', 1, '2022-01-29 19:57:10', '2022-01-29 19:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_review_images`
--

CREATE TABLE `product_review_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_rating_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_review_images`
--

INSERT INTO `product_review_images` (`id`, `product_rating_id`, `image`, `image_thumb`, `created_at`, `updated_at`) VALUES
(1, 8, 'images/product_review_image/BFRxC.jpg', 'images/product_review_image/thumb_BFRxC.jpg', '2022-01-25 10:25:07', '2022-01-25 10:25:07'),
(2, 8, 'images/product_review_image/kWg48.jpg', 'images/product_review_image/thumb_kWg48.jpg', '2022-01-25 10:25:07', '2022-01-25 10:25:07'),
(3, 8, 'images/product_review_image/3WNUG.jpg', 'images/product_review_image/thumb_3WNUG.jpg', '2022-01-25 10:25:07', '2022-01-25 10:25:07'),
(4, 9, 'images/product_review_image/S1FZs.png', 'images/product_review_image/thumb_S1FZs.png', '2022-01-25 10:30:30', '2022-01-25 10:30:30'),
(5, 9, 'images/product_review_image/aABnk.png', 'images/product_review_image/thumb_aABnk.png', '2022-01-25 10:30:30', '2022-01-25 10:30:30'),
(6, 10, 'images/product_review_image/KUODR.jpg', 'images/product_review_image/thumb_KUODR.jpg', '2022-01-25 23:00:32', '2022-01-25 23:00:32'),
(7, 10, 'images/product_review_image/sQ4a1.jpg', 'images/product_review_image/thumb_sQ4a1.jpg', '2022-01-25 23:00:32', '2022-01-25 23:00:32'),
(8, 11, 'images/product_review_image/XyaCG.jpg', 'images/product_review_image/thumb_XyaCG.jpg', '2022-01-26 04:18:06', '2022-01-26 04:18:06'),
(9, 11, 'images/product_review_image/wdw4L.jpg', 'images/product_review_image/thumb_wdw4L.jpg', '2022-01-26 04:18:06', '2022-01-26 04:18:06'),
(10, 11, 'images/product_review_image/epHmd.jpg', 'images/product_review_image/thumb_epHmd.jpg', '2022-01-26 04:18:06', '2022-01-26 04:18:06'),
(11, 12, 'images/product_review_image/nNn3S.jpeg', 'images/product_review_image/thumb_nNn3S.jpeg', '2022-01-26 07:45:30', '2022-01-26 07:45:30'),
(12, 13, 'images/product_review_image/tjI8W.jpg', 'images/product_review_image/thumb_tjI8W.jpg', '2022-01-26 07:47:12', '2022-01-26 07:47:12'),
(13, 14, 'images/product_review_image/A8y2X.jpg', 'images/product_review_image/thumb_A8y2X.jpg', '2022-01-27 08:36:31', '2022-01-27 08:36:31'),
(14, 16, 'images/product_review_image/EoaLN.png', 'images/product_review_image/thumb_EoaLN.png', '2022-01-29 14:28:08', '2022-01-29 14:28:08'),
(15, 16, 'images/product_review_image/IU00o.png', 'images/product_review_image/thumb_IU00o.png', '2022-01-29 14:28:08', '2022-01-29 14:28:08'),
(16, 17, 'images/product_review_image/nJg85.png', 'images/product_review_image/thumb_nJg85.png', '2022-01-29 14:29:00', '2022-01-29 14:29:00'),
(17, 17, 'images/product_review_image/tIM9o.png', 'images/product_review_image/thumb_tIM9o.png', '2022-01-29 14:29:00', '2022-01-29 14:29:00'),
(18, 17, 'images/product_review_image/j3sXx.png', 'images/product_review_image/thumb_j3sXx.png', '2022-01-29 14:29:00', '2022-01-29 14:29:00'),
(19, 18, 'images/product_review_image/AT5f6.gif', 'images/product_review_image/thumb_AT5f6.gif', '2022-01-29 15:26:26', '2022-01-29 15:26:26'),
(20, 18, 'images/product_review_image/65GSM.jpg', 'images/product_review_image/thumb_65GSM.jpg', '2022-01-29 15:26:26', '2022-01-29 15:26:26'),
(21, 18, 'images/product_review_image/wxqeP.jpg', 'images/product_review_image/thumb_wxqeP.jpg', '2022-01-29 15:26:26', '2022-01-29 15:26:26'),
(22, 20, 'images/product_review_image/Jb5np.jpg', 'images/product_review_image/thumb_Jb5np.jpg', '2022-01-29 19:57:10', '2022-01-29 19:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 525, 'None', 1, '', NULL, NULL),
(2, 518, 'None', 1, '', NULL, NULL),
(10, 590, 'S', 1, '', NULL, NULL),
(13, 588, 'M', 1, '', NULL, NULL),
(14, 588, 'XL', 1, '', NULL, NULL),
(15, 588, 'XXXL', 1, '', NULL, NULL),
(16, 581, 'M', 1, '', NULL, NULL),
(17, 581, 'L', 1, '', NULL, NULL),
(18, 581, 'XL', 1, '', NULL, NULL),
(19, 581, 'XXL', 1, '', NULL, NULL),
(20, 581, 'XXXL', 1, '', NULL, NULL),
(21, 574, 'M', 1, '', NULL, NULL),
(22, 574, 'XL', 1, '', NULL, NULL),
(23, 574, 'XXL', 1, '', NULL, NULL),
(24, 574, 'XXXL', 1, '', NULL, NULL),
(25, 582, 'S', 1, '', NULL, NULL),
(26, 582, 'L', 1, '', NULL, NULL),
(27, 582, 'XL', 1, '', NULL, NULL),
(28, 582, 'XXL', 1, '', NULL, NULL),
(29, 582, 'XXXL', 1, '', NULL, NULL),
(30, 570, 'S', 1, '', NULL, NULL),
(31, 570, 'M', 1, '', NULL, NULL),
(32, 570, 'XXL', 1, '', NULL, NULL),
(33, 570, 'XXXL', 1, '', NULL, NULL),
(34, 580, 'M', 1, '', NULL, NULL),
(35, 580, 'XL', 1, '', NULL, NULL),
(36, 580, 'XXXL', 1, '', NULL, NULL),
(43, 590, 'S', 1, '', NULL, NULL),
(44, 590, 'L', 1, '', NULL, NULL),
(45, 590, 'XL', 1, '', NULL, NULL),
(46, 590, 'XXL', 1, '', NULL, NULL),
(47, 590, 'XXXL', 1, '', NULL, NULL),
(53, 591, 'S', 1, '', NULL, NULL),
(54, 591, 'M', 1, '', NULL, NULL),
(55, 591, 'L', 1, '', NULL, NULL),
(56, 591, 'L', 1, '', NULL, NULL),
(57, 591, 'XL', 1, '', NULL, NULL),
(58, 591, 'XXL', 1, '', NULL, NULL),
(59, 591, 'XXXL', 1, '', NULL, NULL),
(60, 592, 'M', 1, '', NULL, NULL),
(61, 592, 'L', 1, '', NULL, NULL),
(62, 592, 'XL', 1, '', NULL, NULL),
(63, 592, 'XXL', 1, '', NULL, NULL),
(64, 592, 'XXXL', 1, '', NULL, NULL),
(77, 593, 'S', 1, '', NULL, NULL),
(78, 593, 'M', 1, '', NULL, NULL),
(79, 593, 'L', 1, '', NULL, NULL),
(80, 593, 'XL', 1, '', NULL, NULL),
(81, 593, 'XXL', 1, '', NULL, NULL),
(82, 593, 'XXXL', 1, '', NULL, NULL),
(98, 589, 'S', 1, '', NULL, NULL),
(99, 589, 'M', 1, '', NULL, NULL),
(100, 589, 'L', 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_size_infos`
--

CREATE TABLE `product_size_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size_infos`
--

INSERT INTO `product_size_infos` (`id`, `size_title`, `created_at`, `updated_at`) VALUES
(1, 'S', '2022-01-20 03:11:41', '2022-01-20 03:11:41'),
(2, 'M', '2022-01-20 03:11:45', '2022-01-20 03:11:45'),
(3, 'L', '2022-01-20 03:11:50', '2022-01-20 03:11:50'),
(4, 'XL', '2022-01-20 03:11:58', '2022-01-20 03:11:58'),
(5, 'XXL', '2022-01-20 03:12:02', '2022-01-20 03:12:02'),
(6, 'XXXL', '2022-01-20 03:12:06', '2022-01-20 03:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_subcategory`
--

CREATE TABLE `product_subcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sl` int(11) DEFAULT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_subcategory`
--

INSERT INTO `product_subcategory` (`id`, `item_id`, `category_id`, `sl`, `subcategory_name`, `image`, `banner`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 115, 245, 1, 'Red Sharee', '0.webp', NULL, '1', '2022-03-06 22:24:42', '2022-03-06 22:24:42'),
(2, 115, 242, 2, 'asd', NULL, NULL, '1', '2022-03-06 22:24:59', '2022-03-06 22:24:59'),
(3, 115, 252, 3, 'dafdsf', NULL, NULL, '1', '2022-03-06 22:25:06', '2022-03-06 22:25:06'),
(4, 116, 257, 4, 'dfsfsdf', NULL, NULL, '1', '2022-03-06 22:25:12', '2022-03-06 22:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `purchasing_policy`
--

CREATE TABLE `purchasing_policy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_policy`
--

CREATE TABLE `return_policy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_policy`
--

INSERT INTO `return_policy` (`id`, `description`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double NOT NULL,
  `reply_id` int(11) NOT NULL,
  `status` int(3) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_password` int(11) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_policy`
--

CREATE TABLE `seller_policy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_zone`
--

CREATE TABLE `seller_zone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reward_points` int(11) NOT NULL,
  `address` text,
  `marquee` text,
  `short_des` text,
  `exchange_policy_title` text,
  `exchange_policy` longtext,
  `inside_dhaka` int(11) DEFAULT NULL,
  `outside_dhaka` int(11) DEFAULT NULL,
  `number_1` varchar(255) DEFAULT NULL,
  `number_2` varchar(255) DEFAULT NULL,
  `hotline` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instragram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `call_for_order_image` varchar(255) DEFAULT NULL,
  `offer_banner` varchar(255) DEFAULT NULL,
  `ex_re_image` varchar(255) DEFAULT NULL,
  `api_url` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `senderid` varchar(255) DEFAULT NULL,
  `section_one` text,
  `section_two` text,
  `section_three` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `reward_points`, `address`, `marquee`, `short_des`, `exchange_policy_title`, `exchange_policy`, `inside_dhaka`, `outside_dhaka`, `number_1`, `number_2`, `hotline`, `email`, `facebook`, `twitter`, `instragram`, `youtube`, `logo`, `favicon`, `call_for_order_image`, `offer_banner`, `ex_re_image`, `api_url`, `api_key`, `senderid`, `section_one`, `section_two`, `section_three`) VALUES
(1, 'Textmart', 100, '98/2, Vista Garden, Begum Rokeya Soroni, Mirpur-10', 'Women sharee kurti Sharee Style Women', 'Sun to Thur (10 am -7 pm) and Fri (10 am - 1 pm)', 'To guarantee that you are fully satisfied with your purchases, we are happy to exchange within 15 days with a valid receipt. Returned itemâ€™s condition must be unworn, unused with all price tags plus barcodes intact along with the original packaging.', '<div class=\"vc_row wpb_row vc_inner vc_row-fluid\" style=\"margin: 0px 0px 15px; padding: 0px; direction: ltr; color: rgb(51, 51, 51); font-family: \"Open Sans\", Helvetica, Arial, sans-serif; font-size: 14.5px;\"><div class=\"wpb_column vc_column_container vc_col-sm-12\" style=\"margin: 0px; padding: 0px; direction: ltr;\"><div class=\"vc_column-inner vc_custom_1494857398526\" style=\"margin: 0px; padding: 0px; direction: ltr;\"><div class=\"wpb_wrapper\" style=\"margin: 0px; padding: 0px; direction: ltr;\"><div class=\"wpb_text_column wpb_content_element vc_custom_1582533424670\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; direction: ltr; margin-bottom: 0px !important;\"><div class=\"wpb_wrapper\" style=\"margin: 0px; padding: 0px; direction: ltr;\"><p style=\"margin-bottom: 0px; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\"><strong style=\"line-height: inherit;\">Inside Dhaka and Chittagong :</strong></p></div></div><div class=\"wpb_text_column wpb_content_element vc_custom_1584429228187\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; direction: ltr; float: left; margin-bottom: 0px !important;\"><div class=\"wpb_wrapper\" style=\"margin: 0px; padding: 0px; direction: ltr;\"><p style=\"margin-bottom: 0px; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\">1. NO ADDITIONAL DELIVERY CHARGE FOR EXCHANGE.<br>2. Customer can exchange with any other product from Texmart.<br>3. For exchange customer must receive the delivery, make the payment and keep the product unused.Customer Care team should be informed by calling: +88 09678221331 within 3 days of receiving the delivery.<br>4. Customer has to mention style number, size and color of desired product that they want to exchange with.<br>5. We will send the exchanged product. While receiving the new product customer has to return the previous product to deliveryman.<br>6. In case of exchanging with a product of higher value, additional amount must be paid during exchange delivery. In case of exchanging with a product of lower value, additional amount will be credited/added to customer wallet as store credit for future purchase.<br>7. Customer can exchange any ordered product for 1 time only.</p></div></div></div></div></div></div><div class=\"vc_row wpb_row vc_inner vc_row-fluid\" style=\"margin: 0px 0px 15px; padding: 0px; direction: ltr; color: rgb(51, 51, 51); font-family: \"Open Sans\", Helvetica, Arial, sans-serif; font-size: 14.5px;\"><div class=\"wpb_column vc_column_container vc_col-sm-12\" style=\"margin: 0px; padding: 0px; direction: ltr;\"><div class=\"vc_column-inner vc_custom_1494857398526\" style=\"margin: 0px; padding: 0px; direction: ltr;\"><div class=\"wpb_wrapper\" style=\"margin: 0px; padding: 0px; direction: ltr;\"><div class=\"wpb_text_column wpb_content_element vc_custom_1582533418082\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; direction: ltr; margin-bottom: 0px !important;\"><div class=\"wpb_wrapper\" style=\"margin: 0px; padding: 0px; direction: ltr;\"><p style=\"margin-bottom: 0px; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\"><strong style=\"line-height: inherit;\">Outside Dhaka :</strong></p></div></div><div class=\"wpb_text_column wpb_content_element vc_custom_1582536116592\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; direction: ltr; float: left; margin-bottom: 0px !important;\"><div class=\"wpb_wrapper\" style=\"margin: 0px; padding: 0px; direction: ltr;\"><p style=\"margin-bottom: 1.37931em; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\">1. If customer is from out of Dhaka, product must be returned to our office first via any courier service. After receiving the product we will send the exchanged product.<br>2. Other terms and conditions will remain same as above.<br>3. Unfortunately customer must pay additional delivery charge of Shundarban/ S.A Paribahan to return the product to our office. Texmart will bear the cost of resending the exchanged product.</p><p style=\"margin-bottom: 0px; padding: 0px; direction: ltr; font-family: inherit; line-height: 1.6; text-rendering: optimizelegibility;\"><strong style=\"line-height: inherit;\">For any further assistance feel free to contact us @ +88 09678221331 Sun to Thur (10 am -7 pm) and Fri (10 am â€“ 1 pm). You can also email us here texmartcustomercare@gmail.com. We will get back to you at the earliest possible time.</strong></p></div></div></div></div></div></div>', NULL, NULL, NULL, NULL, '0170000000', 'info@textmart.com', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.youtube.com', 'pwTgYVUOI2.webp', 'Arc3XnzxZg.webp', '750Y8x47n2.png', '', '4EFTtjbC8k.webp', 'http://sms.ctghostbd.com/api/v1/send', '44516450971105701645097110', '8801844532635', 'Section 1', 'Section 2', 'Section 3');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_classes`
--

CREATE TABLE `shipping_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_classes`
--

INSERT INTO `shipping_classes` (`id`, `shipping_name`, `created_at`, `updated_at`) VALUES
(16, 'Pieces (Per Unit)', '2021-02-22 04:01:10', '2021-04-06 10:27:52'),
(19, '500gm-1Kg', '2021-02-22 12:02:13', '2021-04-06 10:28:56'),
(23, 'Express Service', '2021-02-23 13:59:37', '2021-03-26 13:23:28'),
(24, '1kg-5kg', '2021-04-05 06:05:02', '2021-04-06 12:25:23'),
(25, '5kg-10kg', '2021-04-05 06:05:14', '2021-04-06 12:25:47'),
(26, '10kg-20kg', '2021-04-05 06:05:23', '2021-04-06 12:26:22'),
(27, '20kg-30kg', '2021-04-06 12:27:09', '2021-04-06 12:28:11'),
(28, '30Kg-40Kg', '2021-04-06 12:27:25', '2021-04-06 12:27:25'),
(29, '40kg-50kg', '2021-04-06 12:27:34', '2021-04-06 12:27:34'),
(30, '50-100kg', '2021-04-06 12:28:55', '2021-04-06 12:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sale_price` double(11,2) DEFAULT NULL,
  `discount_price` double(11,2) DEFAULT NULL,
  `current_price` double(11,2) DEFAULT NULL,
  `reward_points` int(11) DEFAULT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_carts`
--

INSERT INTO `shopping_carts` (`id`, `product_id`, `session_id`, `status`, `quantity`, `sale_price`, `discount_price`, `current_price`, `reward_points`, `size`, `color`, `created_at`, `updated_at`) VALUES
(1, 469, 'fR1BngqiwUe91aJt9AFfGPKm71bFTyNWhAbnjcLD', 0, 1, 80.00, 0.00, 80.00, NULL, NULL, NULL, '2021-12-02 03:22:23', '2021-12-02 03:22:23'),
(2, 3, 'ga0AizMsb5mnE9qHGTvYXzaOmFKvcbyfYBAik4JN', 1, 2, 600.00, 0.00, 600.00, NULL, NULL, NULL, '2021-10-25 12:16:01', '2021-10-25 12:16:26'),
(3, 2, 'tlMhS86ya6xvfRzoJYBABEB0bD79KC7FJahOe3f8', 0, 51, 6000.00, 100.00, 5900.00, NULL, NULL, NULL, '2021-10-25 12:19:42', '2021-10-25 12:19:51'),
(22, 5, 'TB1yDDnzDDDPLxRFTSAouF4L3CzwIEADqhvQf3nm', 1, 1, 800.00, 0.00, 800.00, NULL, NULL, NULL, '2021-10-27 01:31:13', '2021-10-27 01:31:34'),
(24, 4, 'ERUsQd3c6CV9CPMBLXlUKi8lsSyai4St9OzGc5wr', 1, 1, 700.00, 50.00, 650.00, NULL, NULL, NULL, '2021-10-27 01:41:35', '2021-10-27 01:47:07'),
(25, 7, 'l1THRaKC8IHONB225adZhgaTaDd9rwZmeg520nZb', 1, 1, 6000.00, 500.00, 5500.00, NULL, NULL, NULL, '2021-10-27 02:25:59', '2021-10-27 02:27:24'),
(26, 4, 'ES5E6BEHYuFkK3oHucYKCrBrS1UZpKmeJgk0HwE7', 1, 1, 700.00, 50.00, 650.00, NULL, NULL, NULL, '2021-10-27 11:26:30', '2021-10-27 11:28:07'),
(28, 5, 'RJ78JFcifDHCQoQpJ7kH4SOd5ThB4NGfbsFs1eQH', 0, 1, 800.00, 0.00, 800.00, NULL, NULL, NULL, '2021-10-28 12:21:42', '2021-10-28 12:21:42'),
(31, 10, 'b61E19MFw4UGFcPVs4WGIhXjI6ek7fycZvEoE5mJ', 1, 2, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-05 12:27:19', '2021-11-05 12:31:58'),
(33, 11, '7PcPJ2mBswR6eXWPh6R4dtapAW7vtd2wrVlAnpv9', 1, 4, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-05 12:31:12', '2021-11-05 12:34:20'),
(37, 11, '1hzDuLozrakQuapq6smvrHvikxx2HTPEvzrKuCly', 1, 4, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-05 15:50:03', '2021-11-05 15:51:28'),
(38, 10, '1hzDuLozrakQuapq6smvrHvikxx2HTPEvzrKuCly', 1, 2, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-05 15:50:09', '2021-11-05 15:51:28'),
(39, 9, '1hzDuLozrakQuapq6smvrHvikxx2HTPEvzrKuCly', 1, 3, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2021-11-05 15:50:13', '2021-11-05 15:51:28'),
(40, 24, '1hzDuLozrakQuapq6smvrHvikxx2HTPEvzrKuCly', 1, 1, 369.00, 0.00, 369.00, NULL, NULL, NULL, '2021-11-05 15:50:19', '2021-11-05 15:51:28'),
(41, 25, '1hzDuLozrakQuapq6smvrHvikxx2HTPEvzrKuCly', 1, 1, 279.00, 0.00, 279.00, NULL, NULL, NULL, '2021-11-05 15:50:23', '2021-11-05 15:51:28'),
(42, 22, '1hzDuLozrakQuapq6smvrHvikxx2HTPEvzrKuCly', 1, 1, 209.00, 0.00, 209.00, NULL, NULL, NULL, '2021-11-05 15:50:26', '2021-11-05 15:51:28'),
(43, 15, 'kyLmwO1cS1hGv09Kt12SM5t5PpCaNuy1D4BINnHF', 1, 10, 30.00, 5.00, 25.00, NULL, NULL, NULL, '2021-11-06 08:05:20', '2021-11-06 08:06:03'),
(44, 11, 'kyLmwO1cS1hGv09Kt12SM5t5PpCaNuy1D4BINnHF', 1, 4, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-06 08:05:23', '2021-11-06 08:06:03'),
(45, 22, 'kyLmwO1cS1hGv09Kt12SM5t5PpCaNuy1D4BINnHF', 1, 1, 209.00, 0.00, 209.00, NULL, NULL, NULL, '2021-11-06 08:05:32', '2021-11-06 08:06:03'),
(46, 25, 'YCkPa63bIYT7Ne4Yc2XSeMAHrt5ZclXaOrFHLTR6', 1, 5, 279.00, 0.00, 279.00, NULL, NULL, NULL, '2021-11-07 02:59:53', '2021-11-07 03:03:13'),
(47, 23, 'YCkPa63bIYT7Ne4Yc2XSeMAHrt5ZclXaOrFHLTR6', 1, 1, 369.00, 0.00, 369.00, NULL, NULL, NULL, '2021-11-07 03:02:06', '2021-11-07 03:03:13'),
(48, 10, 'YCkPa63bIYT7Ne4Yc2XSeMAHrt5ZclXaOrFHLTR6', 1, 2, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-07 03:02:20', '2021-11-07 03:03:13'),
(49, 9, 'YCkPa63bIYT7Ne4Yc2XSeMAHrt5ZclXaOrFHLTR6', 1, 3, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2021-11-07 03:02:23', '2021-11-07 03:03:13'),
(50, 15, 'gYOM3jDcK2rWW2H8jjQASF2W496LTx4hEaJMdBuE', 0, 10, 30.00, 5.00, 25.00, NULL, NULL, NULL, '2021-11-07 04:16:58', '2021-11-07 04:16:58'),
(51, 11, 'gYOM3jDcK2rWW2H8jjQASF2W496LTx4hEaJMdBuE', 0, 4, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-07 04:17:00', '2021-11-07 04:17:00'),
(52, 24, 'gYOM3jDcK2rWW2H8jjQASF2W496LTx4hEaJMdBuE', 0, 2, 369.00, 0.00, 369.00, NULL, NULL, NULL, '2021-11-07 04:17:04', '2021-11-07 04:33:58'),
(53, 22, 'gYOM3jDcK2rWW2H8jjQASF2W496LTx4hEaJMdBuE', 0, 1, 209.00, 0.00, 209.00, NULL, NULL, NULL, '2021-11-07 04:17:07', '2021-11-07 04:17:07'),
(54, 10, 'gYOM3jDcK2rWW2H8jjQASF2W496LTx4hEaJMdBuE', 0, 2, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-07 04:33:51', '2021-11-07 04:33:51'),
(55, 9, 'gYOM3jDcK2rWW2H8jjQASF2W496LTx4hEaJMdBuE', 0, 3, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2021-11-07 04:33:54', '2021-11-07 04:33:54'),
(56, 15, 'WDlFS7tZAQZ1e9OsONEievvWYV0MWAe1fT26ev1y', 0, 10, 30.00, 5.00, 25.00, NULL, NULL, NULL, '2021-11-07 23:01:01', '2021-11-07 23:01:01'),
(57, 11, 'WDlFS7tZAQZ1e9OsONEievvWYV0MWAe1fT26ev1y', 0, 4, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-07 23:01:04', '2021-11-07 23:01:04'),
(58, 10, 'WDlFS7tZAQZ1e9OsONEievvWYV0MWAe1fT26ev1y', 0, 2, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-07 23:01:06', '2021-11-07 23:01:06'),
(59, 25, 'P49ZDPDFF080VJn7o8N9yROC9hz6AvQ7Z6REhoPo', 0, 2, 279.00, 0.00, 279.00, NULL, NULL, NULL, '2021-11-08 04:31:37', '2021-11-08 04:31:43'),
(60, 24, 'P49ZDPDFF080VJn7o8N9yROC9hz6AvQ7Z6REhoPo', 0, 1, 369.00, 0.00, 369.00, NULL, NULL, NULL, '2021-11-08 04:31:47', '2021-11-08 04:31:47'),
(62, 11, 'IUmXC4eLtqhjt110nbmtBqOtrRevtlm3b79u67gF', 1, 4, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-08 09:35:56', '2021-11-08 09:43:09'),
(63, 10, 'IUmXC4eLtqhjt110nbmtBqOtrRevtlm3b79u67gF', 1, 2, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-08 09:36:03', '2021-11-08 09:43:09'),
(65, 27, 'U0gkZBRAhvWE64aqwdjWkGLtDZKFDldzo4s57iQu', 0, 200, 300.00, 0.00, 300.00, NULL, NULL, NULL, '2021-11-08 12:18:34', '2021-11-08 12:18:34'),
(66, 11, '88IZp5UR69ipPOUy5f6W9HuDGJKdDFYQfetvUK4O', 0, 8, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-09 06:40:23', '2021-11-09 06:40:26'),
(73, 29, 'jyMVzLvw7EfLvWx3hXtNLs7o8l5p82aaSmki1l6c', 0, 1, 1500.00, 0.00, 1500.00, NULL, NULL, NULL, '2021-11-09 08:39:52', '2021-11-09 08:39:52'),
(74, 27, '30rcP6Mss5UDOtHAPCDxWsIQw6sirpl4ax2WNjIL', 1, 200, 300.00, 0.00, 300.00, NULL, NULL, NULL, '2021-11-10 00:24:07', '2021-11-10 00:26:14'),
(75, 7, '30rcP6Mss5UDOtHAPCDxWsIQw6sirpl4ax2WNjIL', 1, 1, 6000.00, 500.00, 5500.00, NULL, NULL, NULL, '2021-11-10 00:24:10', '2021-11-10 00:26:14'),
(76, 25, 'QoHrkUEMC1pOjh5gDAjtFUoI2Fh1YqxzLWHTR99R', 1, 1, 279.00, 0.00, 279.00, NULL, NULL, NULL, '2021-11-10 11:41:09', '2021-11-10 11:43:04'),
(77, 28, 'sdZdasuWEipqTMsiQ76emLWS6qvOSHbrOmxgOUVs', 0, 1, 1400.00, 0.00, 1400.00, NULL, NULL, NULL, '2021-11-10 13:45:53', '2021-11-10 13:45:53'),
(83, 4, '3uPkeSwO32Ef8ujM1StEKYSs2drOn64Ekm7QZoRb', 0, 1, 700.00, 50.00, 650.00, NULL, NULL, NULL, '2021-11-12 14:37:45', '2021-11-12 14:37:45'),
(84, 5, '3uPkeSwO32Ef8ujM1StEKYSs2drOn64Ekm7QZoRb', 0, 1, 800.00, 0.00, 800.00, NULL, NULL, NULL, '2021-11-12 14:37:54', '2021-11-12 14:37:54'),
(85, 7, '3uPkeSwO32Ef8ujM1StEKYSs2drOn64Ekm7QZoRb', 0, 1, 6000.00, 500.00, 5500.00, NULL, NULL, NULL, '2021-11-12 14:38:04', '2021-11-12 14:38:04'),
(86, 31, '3uPkeSwO32Ef8ujM1StEKYSs2drOn64Ekm7QZoRb', 0, 1, 1400.00, 0.00, 1400.00, NULL, NULL, NULL, '2021-11-12 14:38:13', '2021-11-12 14:38:13'),
(87, 11, 'GAGFckMqUmFCZpIOem0L0C0ZNLfLQwHqKBdB2ehl', 0, 12, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-13 07:18:46', '2021-11-13 07:19:14'),
(88, 10, 'GAGFckMqUmFCZpIOem0L0C0ZNLfLQwHqKBdB2ehl', 0, 2, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-13 07:19:16', '2021-11-13 07:19:16'),
(89, 27, 'GAGFckMqUmFCZpIOem0L0C0ZNLfLQwHqKBdB2ehl', 0, 200, 300.00, 0.00, 300.00, NULL, NULL, NULL, '2021-11-13 07:23:29', '2021-11-13 07:23:29'),
(90, 7, 'GAGFckMqUmFCZpIOem0L0C0ZNLfLQwHqKBdB2ehl', 0, 1, 6000.00, 500.00, 5500.00, NULL, NULL, NULL, '2021-11-13 07:23:31', '2021-11-13 07:23:31'),
(91, 5, 'GAGFckMqUmFCZpIOem0L0C0ZNLfLQwHqKBdB2ehl', 0, 1, 800.00, 0.00, 800.00, NULL, NULL, NULL, '2021-11-13 07:24:07', '2021-11-13 07:24:07'),
(93, 23, 'VHPiIlywDO6wdh8oTodxIX8XwQysMjcnTwXD5ZWX', 0, 1, 369.00, 0.00, 369.00, NULL, NULL, NULL, '2021-11-13 11:33:34', '2021-11-13 11:33:34'),
(94, 24, 'VHPiIlywDO6wdh8oTodxIX8XwQysMjcnTwXD5ZWX', 0, 1, 369.00, 0.00, 369.00, NULL, NULL, NULL, '2021-11-13 11:33:37', '2021-11-13 11:33:37'),
(95, 22, 'VHPiIlywDO6wdh8oTodxIX8XwQysMjcnTwXD5ZWX', 0, 1, 209.00, 0.00, 209.00, NULL, NULL, NULL, '2021-11-13 11:33:38', '2021-11-13 11:33:38'),
(102, 11, 'f0lvPtdylGGZovVZWlw4DqkQsd50ZuLZUdHAB1uZ', 0, 4, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-13 22:54:26', '2021-11-13 22:54:26'),
(103, 10, 'f0lvPtdylGGZovVZWlw4DqkQsd50ZuLZUdHAB1uZ', 0, 2, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-13 22:54:28', '2021-11-13 22:54:28'),
(104, 9, 'f0lvPtdylGGZovVZWlw4DqkQsd50ZuLZUdHAB1uZ', 0, 3, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2021-11-13 22:54:30', '2021-11-13 22:54:30'),
(105, 23, 'f0lvPtdylGGZovVZWlw4DqkQsd50ZuLZUdHAB1uZ', 0, 1, 369.00, 0.00, 369.00, NULL, NULL, NULL, '2021-11-13 22:54:42', '2021-11-13 22:54:42'),
(106, 22, 'f0lvPtdylGGZovVZWlw4DqkQsd50ZuLZUdHAB1uZ', 0, 1, 209.00, 0.00, 209.00, NULL, NULL, NULL, '2021-11-13 22:54:43', '2021-11-13 22:54:43'),
(107, 25, 'f0lvPtdylGGZovVZWlw4DqkQsd50ZuLZUdHAB1uZ', 0, 1, 279.00, 0.00, 279.00, NULL, NULL, NULL, '2021-11-13 22:54:46', '2021-11-13 22:54:46'),
(108, 15, 'WztF4GfQlWWkllryf9h7ruhz5UqK6l9KKDovWLGy', 0, 10, 30.00, 5.00, 25.00, NULL, NULL, NULL, '2021-11-13 22:57:12', '2021-11-13 22:57:12'),
(109, 11, 'WztF4GfQlWWkllryf9h7ruhz5UqK6l9KKDovWLGy', 0, 8, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-13 22:57:15', '2021-11-13 22:57:46'),
(110, 25, 'WztF4GfQlWWkllryf9h7ruhz5UqK6l9KKDovWLGy', 0, 1, 279.00, 0.00, 279.00, NULL, NULL, NULL, '2021-11-13 22:57:21', '2021-11-13 22:57:21'),
(111, 10, 'GP1TrOWvU9hHbCii04DjrftRZ4b3R5YkdOEfs1hm', 0, 2, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-14 04:39:22', '2021-11-14 04:39:22'),
(112, 9, 'GP1TrOWvU9hHbCii04DjrftRZ4b3R5YkdOEfs1hm', 0, 6, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2021-11-14 04:39:25', '2021-11-14 04:40:35'),
(113, 11, 'GP1TrOWvU9hHbCii04DjrftRZ4b3R5YkdOEfs1hm', 0, 4, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-14 04:40:42', '2021-11-14 04:40:42'),
(114, 24, 'GP1TrOWvU9hHbCii04DjrftRZ4b3R5YkdOEfs1hm', 0, 1, 369.00, 0.00, 369.00, NULL, NULL, NULL, '2021-11-14 06:07:39', '2021-11-14 06:07:39'),
(115, 21, 'GP1TrOWvU9hHbCii04DjrftRZ4b3R5YkdOEfs1hm', 0, 1, 359.00, 0.00, 359.00, NULL, NULL, NULL, '2021-11-14 06:07:49', '2021-11-14 06:07:49'),
(117, 9, 'x39d8q2dxkGZbPv6GAsKzbdl18r212bfxxpbmSw7', 0, 3, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2021-11-14 09:28:18', '2021-11-14 09:28:18'),
(118, 11, 'x39d8q2dxkGZbPv6GAsKzbdl18r212bfxxpbmSw7', 0, 4, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-14 09:28:24', '2021-11-14 09:28:24'),
(122, 64, 'Lj8jg8KgrIYW4h7LMaYGlJzBv5BAQe6GoEC9sy5e', 1, 2, 40.00, 0.00, 40.00, NULL, NULL, NULL, '2021-11-14 12:22:47', '2021-11-15 07:17:26'),
(123, 44, 'Xa2dhTSppVqaGB2G64UjT1r3pS1CK9kOHq0kKzKo', 1, 2, 160.00, 0.00, 160.00, NULL, NULL, NULL, '2021-11-14 14:03:18', '2021-11-14 14:03:57'),
(124, 43, 'Xa2dhTSppVqaGB2G64UjT1r3pS1CK9kOHq0kKzKo', 1, 2, 130.00, 0.00, 130.00, NULL, NULL, NULL, '2021-11-14 14:03:20', '2021-11-14 14:03:57'),
(125, 44, 'ynC6XyIrHFcwtrCxlKViWzzCfvfe4znbJtZy2Pix', 0, 2, 160.00, 0.00, 160.00, NULL, NULL, NULL, '2021-11-15 01:34:54', '2021-11-15 01:34:54'),
(126, 43, 'ynC6XyIrHFcwtrCxlKViWzzCfvfe4znbJtZy2Pix', 0, 2, 130.00, 0.00, 130.00, NULL, NULL, NULL, '2021-11-15 01:34:59', '2021-11-15 01:34:59'),
(127, 42, 'ynC6XyIrHFcwtrCxlKViWzzCfvfe4znbJtZy2Pix', 0, 3, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-15 01:35:01', '2021-11-15 01:35:01'),
(128, 76, 'H0RkKNuhrJi89lGHUhSedEwRqxkuwnj56jnqKPA0', 0, 1, 5.00, 0.00, 5.00, NULL, NULL, NULL, '2021-11-15 03:12:36', '2021-11-15 03:12:36'),
(129, 75, 'H0RkKNuhrJi89lGHUhSedEwRqxkuwnj56jnqKPA0', 0, 1, 170.00, 0.00, 170.00, NULL, NULL, NULL, '2021-11-15 03:12:38', '2021-11-15 03:12:38'),
(130, 74, 'H0RkKNuhrJi89lGHUhSedEwRqxkuwnj56jnqKPA0', 0, 1, 80.00, 0.00, 80.00, NULL, NULL, NULL, '2021-11-15 03:12:40', '2021-11-15 03:12:40'),
(131, 73, 'H0RkKNuhrJi89lGHUhSedEwRqxkuwnj56jnqKPA0', 0, 1, 75.00, 0.00, 75.00, NULL, NULL, NULL, '2021-11-15 03:12:42', '2021-11-15 03:12:42'),
(132, 75, 'AcfbFZ1i2HGqpHG03IKEwwasxwJjLzU8gX3sLiBk', 0, 1, 170.00, 0.00, 170.00, NULL, NULL, NULL, '2021-11-15 04:16:44', '2021-11-15 04:16:44'),
(133, 91, 'Lj8jg8KgrIYW4h7LMaYGlJzBv5BAQe6GoEC9sy5e', 1, 1, 115.00, 0.00, 115.00, NULL, NULL, NULL, '2021-11-15 06:38:04', '2021-11-15 07:17:26'),
(141, 103, 'AKcmXRZBp2dEFcX3kLhyW1WsqKQ1cyIdgGS1Uaqk', 0, 1, 110.00, 0.00, 110.00, NULL, NULL, NULL, '2021-11-16 10:02:22', '2021-11-16 10:02:22'),
(142, 102, 'AKcmXRZBp2dEFcX3kLhyW1WsqKQ1cyIdgGS1Uaqk', 0, 1, 150.00, 0.00, 150.00, NULL, NULL, NULL, '2021-11-16 10:02:24', '2021-11-16 10:02:24'),
(143, 99, 'AKcmXRZBp2dEFcX3kLhyW1WsqKQ1cyIdgGS1Uaqk', 0, 100, 300.00, 0.00, 300.00, NULL, NULL, NULL, '2021-11-16 10:02:27', '2021-11-16 10:02:27'),
(144, 127, 'jLWNKvZ7GAg7JUMgq65QKwshrV5sVh3mW9rVgE2Y', 0, 1, 60.00, 0.00, 60.00, NULL, NULL, NULL, '2021-11-16 12:08:49', '2021-11-16 12:08:49'),
(145, 133, 'jLWNKvZ7GAg7JUMgq65QKwshrV5sVh3mW9rVgE2Y', 0, 1, 65.00, 0.00, 65.00, NULL, NULL, NULL, '2021-11-16 12:08:50', '2021-11-16 12:08:50'),
(146, 123, 'RNlLKi2PHtbjOp32j6vKRCe7s1IgiQXQozyy7jux', 0, 2, 250.00, 0.00, 250.00, NULL, NULL, NULL, '2021-11-16 12:19:37', '2021-11-16 12:19:45'),
(152, 142, 'SiLWNEuuKXeyzCl7QbFlFJYPPvhqYBwoWPyeqo7B', 0, 2, 70.00, 0.00, 70.00, NULL, NULL, NULL, '2021-11-16 22:50:42', '2021-11-16 22:50:42'),
(153, 141, 'SiLWNEuuKXeyzCl7QbFlFJYPPvhqYBwoWPyeqo7B', 0, 2, 150.00, NULL, 150.00, NULL, NULL, NULL, '2021-11-16 22:50:44', '2021-11-16 22:50:44'),
(154, 144, 'SiLWNEuuKXeyzCl7QbFlFJYPPvhqYBwoWPyeqo7B', 0, 5, 60.00, 0.00, 60.00, NULL, NULL, NULL, '2021-11-16 22:50:46', '2021-11-16 22:50:46'),
(155, 135, 'SiLWNEuuKXeyzCl7QbFlFJYPPvhqYBwoWPyeqo7B', 0, 2, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2021-11-17 00:47:00', '2021-11-17 00:47:00'),
(156, 136, 'SiLWNEuuKXeyzCl7QbFlFJYPPvhqYBwoWPyeqo7B', 0, 2, 300.00, 0.00, 300.00, NULL, NULL, NULL, '2021-11-17 00:47:03', '2021-11-17 00:47:03'),
(159, 139, 'C94JKYeDHnhUGpSKpt0bSQ5AYsiEFf1f7xppwcPM', 0, 2, 3000.00, 0.00, 3000.00, NULL, NULL, NULL, '2021-11-17 01:07:29', '2021-11-17 01:07:29'),
(160, 136, 'QgY5DKS6g2f817IiRPDsW8gWkL0ZOXjEzGLy1hTu', 0, 2, 300.00, 0.00, 300.00, NULL, NULL, NULL, '2021-11-17 02:57:21', '2021-11-17 02:57:21'),
(161, 137, 'q43Tm0sWf28nz4kum28rDVN9uzz6KR3JYRqKRFXz', 0, 1, 60.00, 0.00, 60.00, NULL, NULL, NULL, '2021-11-17 05:25:06', '2021-11-17 05:25:06'),
(162, 135, 'jiJWPPzQTsByqfaVWR9YMJM8QOxYANZgI5QBhhK1', 0, 2, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2021-11-17 06:05:51', '2021-11-17 06:05:51'),
(163, 134, 'jiJWPPzQTsByqfaVWR9YMJM8QOxYANZgI5QBhhK1', 0, 2, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2021-11-17 06:05:54', '2021-11-17 06:05:54'),
(164, 136, 'jiJWPPzQTsByqfaVWR9YMJM8QOxYANZgI5QBhhK1', 0, 2, 300.00, 0.00, 300.00, NULL, NULL, NULL, '2021-11-17 06:05:56', '2021-11-17 06:05:56'),
(165, 103, 'jiJWPPzQTsByqfaVWR9YMJM8QOxYANZgI5QBhhK1', 0, 1, 110.00, 0.00, 110.00, NULL, NULL, NULL, '2021-11-17 06:06:11', '2021-11-17 06:06:11'),
(166, 100, 'jiJWPPzQTsByqfaVWR9YMJM8QOxYANZgI5QBhhK1', 0, 1, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-17 06:06:14', '2021-11-17 06:06:14'),
(167, 133, '989IODnmzC4nErTTpPXUYpEy1q7RDWU3UN1G8Jlo', 0, 1, 65.00, 0.00, 65.00, NULL, NULL, NULL, '2021-11-17 06:15:43', '2021-11-17 06:15:43'),
(168, 135, '989IODnmzC4nErTTpPXUYpEy1q7RDWU3UN1G8Jlo', 0, 2, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2021-11-17 06:15:47', '2021-11-17 06:15:47'),
(169, 137, '71sQ9CaMJVe1dMIlqwhuFjSBAzkE22rXXhAaViAB', 1, 1, 60.00, 0.00, 60.00, NULL, NULL, NULL, '2021-11-17 06:28:06', '2021-11-17 06:28:45'),
(170, 136, '71sQ9CaMJVe1dMIlqwhuFjSBAzkE22rXXhAaViAB', 1, 2, 300.00, 0.00, 300.00, NULL, NULL, NULL, '2021-11-17 06:28:10', '2021-11-17 06:28:45'),
(171, 133, 'm6rji1QorWaKcyMZOtSOYBnXseLpvFmSp1X3ej3A', 1, 2, 65.00, 0.00, 65.00, NULL, NULL, NULL, '2021-11-17 06:28:13', '2021-11-17 06:30:42'),
(172, 137, 'm6rji1QorWaKcyMZOtSOYBnXseLpvFmSp1X3ej3A', 1, 1, 60.00, 0.00, 60.00, NULL, NULL, NULL, '2021-11-17 06:28:29', '2021-11-17 06:30:42'),
(173, 136, 'm6rji1QorWaKcyMZOtSOYBnXseLpvFmSp1X3ej3A', 1, 2, 300.00, 0.00, 300.00, NULL, NULL, NULL, '2021-11-17 06:28:31', '2021-11-17 06:30:42'),
(174, 135, 'm6rji1QorWaKcyMZOtSOYBnXseLpvFmSp1X3ej3A', 1, 2, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2021-11-17 06:28:34', '2021-11-17 06:30:42'),
(175, 134, 'm6rji1QorWaKcyMZOtSOYBnXseLpvFmSp1X3ej3A', 1, 2, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2021-11-17 06:28:36', '2021-11-17 06:30:42'),
(176, 103, 'nzYarMDsj3MawiYkX2z90NAhTXZEfoTl7jJ5Rb2B', 1, 3, 110.00, 0.00, 110.00, NULL, NULL, NULL, '2021-11-17 06:40:02', '2021-11-17 06:42:43'),
(177, 100, 'nzYarMDsj3MawiYkX2z90NAhTXZEfoTl7jJ5Rb2B', 1, 1, 120.00, 0.00, 120.00, NULL, NULL, NULL, '2021-11-17 06:40:09', '2021-11-17 06:42:43'),
(178, 93, 'nzYarMDsj3MawiYkX2z90NAhTXZEfoTl7jJ5Rb2B', 1, 1, 80.00, 0.00, 80.00, NULL, NULL, NULL, '2021-11-17 06:40:22', '2021-11-17 06:42:43'),
(179, 133, 'uG7Fsonm8q2TVN9PPdn8IyT7091svwTToZw4mrzg', 0, 2, 65.00, 0.00, 65.00, NULL, NULL, NULL, '2021-11-17 07:17:59', '2021-11-17 07:18:05'),
(180, 125, 'eUdgQbPnUfDzKmUFMzyGTwGorciIDAn5HTiqFc9x', 0, 1, 40.00, 0.00, 40.00, NULL, NULL, NULL, '2021-11-17 08:04:26', '2021-11-17 08:04:26'),
(181, 126, 'ksVTPThFA2SpTfrYeYzYXfRyswWT2fjFdjyGZqXs', 0, 2, 14.00, 0.00, 14.00, NULL, NULL, NULL, '2021-11-17 08:09:32', '2021-11-17 08:09:40'),
(185, 115, '9XVYjIc6aPT4rq5eNqQQliwjF4lB2qgxEHJjVdku', 0, 3, 125.00, 0.00, 125.00, NULL, NULL, NULL, '2021-11-17 09:11:01', '2021-11-17 09:11:05'),
(186, 115, '9XVYjIc6aPT4rq5eNqQQliwjF4lB2qgxEHJjVdku', 0, 3, 125.00, 0.00, 125.00, NULL, NULL, NULL, '2021-11-17 09:11:01', '2021-11-17 09:11:05'),
(187, 115, '9XVYjIc6aPT4rq5eNqQQliwjF4lB2qgxEHJjVdku', 0, 3, 125.00, 0.00, 125.00, NULL, NULL, NULL, '2021-11-17 09:11:01', '2021-11-17 09:11:05'),
(191, 133, 'vGujEPdYNiVt6ylnTOBcuUCJjGPzRy9Y1XklZhRn', 0, 1, 65.00, 0.00, 65.00, NULL, NULL, NULL, '2021-11-17 10:36:51', '2021-11-17 10:36:51'),
(194, 133, 'dwsVEX7WUAbDQSraVK2YPo4khvS5vgYb7lXYcvEQ', 0, 1, 65.00, 0.00, 65.00, NULL, NULL, NULL, '2021-11-17 11:20:05', '2021-11-17 11:20:05'),
(195, 126, 'dwsVEX7WUAbDQSraVK2YPo4khvS5vgYb7lXYcvEQ', 0, 1, 14.00, 0.00, 14.00, NULL, NULL, NULL, '2021-11-17 11:20:07', '2021-11-17 11:20:07'),
(196, 125, 'dwsVEX7WUAbDQSraVK2YPo4khvS5vgYb7lXYcvEQ', 0, 1, 40.00, 0.00, 40.00, NULL, NULL, NULL, '2021-11-17 11:20:08', '2021-11-17 11:20:08'),
(197, 127, 'Xv6vLgyFBs3YDzYJqDJi8cijjrtFGdwxCKkqpW4D', 1, 1, 60.00, 0.00, 60.00, NULL, NULL, NULL, '2021-11-17 11:25:10', '2021-11-17 11:28:10'),
(198, 126, 'Xv6vLgyFBs3YDzYJqDJi8cijjrtFGdwxCKkqpW4D', 1, 1, 14.00, 0.00, 14.00, NULL, NULL, NULL, '2021-11-17 11:25:14', '2021-11-17 11:28:10'),
(199, 125, 'Xv6vLgyFBs3YDzYJqDJi8cijjrtFGdwxCKkqpW4D', 1, 1, 40.00, 0.00, 40.00, NULL, NULL, NULL, '2021-11-17 11:25:15', '2021-11-17 11:28:10'),
(200, 133, 'Xv6vLgyFBs3YDzYJqDJi8cijjrtFGdwxCKkqpW4D', 1, 1, 65.00, 0.00, 65.00, NULL, NULL, NULL, '2021-11-17 11:25:16', '2021-11-17 11:28:10'),
(202, 73, '1MHqNBlWYUeVXLsILWvsIlqX5mpmMsp8ZquvFzc0', 0, 3, 75.00, 0.00, 75.00, NULL, NULL, NULL, '2021-11-17 19:37:38', '2021-11-17 19:37:47'),
(203, 89, '1MHqNBlWYUeVXLsILWvsIlqX5mpmMsp8ZquvFzc0', 0, 1, 150.00, 0.00, 150.00, NULL, NULL, NULL, '2021-11-17 19:38:01', '2021-11-17 19:38:01'),
(211, 158, 'C8rKzD3UlIS1ED0KGwcfP58DxR1qunC3iXjhTkjU', 1, 1, 25.00, 0.00, 25.00, NULL, NULL, NULL, '2021-11-18 00:36:46', '2021-11-18 00:37:15'),
(212, 156, 'ND2emg1HCbMWgtFkG0plW4SP3CTteSxw36st1Vo4', 1, 1, 65.00, 10.00, 55.00, NULL, NULL, NULL, '2021-11-18 00:41:01', '2021-11-18 00:41:14'),
(213, 155, 'j80tvjlsj9F6UlDs92kiH9vY3OOWXnnRpXhtHlyG', 1, 1, 23.00, 0.00, 23.00, NULL, NULL, NULL, '2021-11-18 00:44:39', '2021-11-18 00:44:50'),
(214, 155, 'aWp0Y8ske8ixLJE62gfGbXf0Yv9AlIoXAGQMaGEv', 1, 1, 23.00, 0.00, 23.00, NULL, NULL, NULL, '2021-11-18 00:50:57', '2021-11-18 00:51:09'),
(215, 156, 'J91vuWOdHQtZUna96FahFfy9hnCXrNosCDVDCGfs', 1, 1, 65.00, 10.00, 55.00, NULL, NULL, NULL, '2021-11-18 00:54:42', '2021-11-18 00:55:00'),
(222, 160, 'RiVs3Whlzz7z27kRZvO4vq1esZV0WuKN4ba6pspZ', 1, 1, 69.00, 0.00, 69.00, NULL, NULL, NULL, '2021-11-18 03:01:18', '2021-11-18 03:03:10'),
(224, 158, 'RiVs3Whlzz7z27kRZvO4vq1esZV0WuKN4ba6pspZ', 1, 1, 25.00, 0.00, 25.00, NULL, NULL, NULL, '2021-11-18 03:02:27', '2021-11-18 03:03:10'),
(227, 97, 'rzwp7jH8QD1AXhqMoCRe0wGhb2zH90XHOjUli15w', 1, 1, 1050.00, 0.00, 1050.00, NULL, NULL, NULL, '2021-11-18 03:21:21', '2021-11-18 03:21:52'),
(229, 156, 'ovvqlUQmTMkFfKEm6wxlVjJMGJPQ4NOru5mkJym0', 1, 1, 65.00, 10.00, 55.00, NULL, NULL, NULL, '2021-11-18 03:38:17', '2021-11-18 03:38:29'),
(231, 155, 'tsTJwTvqsD1NnlqcXNTufIkJb12ksMP2v5QESj0d', 1, 1, 23.00, 0.00, 23.00, NULL, NULL, NULL, '2021-11-18 03:45:24', '2021-11-18 03:45:39'),
(232, 102, 'qx0E2HPvT6JsTciACLzdBUVQO2IqG490gg1dmLiw', 1, 1, 150.00, 0.00, 150.00, NULL, NULL, NULL, '2021-11-18 03:54:05', '2021-11-18 03:54:41'),
(233, 169, 'oI2mYbIwgwwqE1EnekVGPgCy3e272kiIgIhTruHp', 1, 5, 22.00, 0.00, 22.00, NULL, NULL, NULL, '2021-11-18 06:10:18', '2021-11-18 07:50:57'),
(234, 173, 'OEFbXvPHKsD1RwsbPhTUv6LP664EM0aW3FGqlufr', 1, 250, 35.00, 0.00, 35.00, NULL, NULL, NULL, '2021-11-18 09:26:38', '2021-11-18 09:29:17'),
(235, 172, 'OEFbXvPHKsD1RwsbPhTUv6LP664EM0aW3FGqlufr', 1, 1, 23.00, 0.00, 23.00, NULL, NULL, NULL, '2021-11-18 09:26:41', '2021-11-18 09:29:17'),
(236, 171, 'OEFbXvPHKsD1RwsbPhTUv6LP664EM0aW3FGqlufr', 1, 100, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-18 09:26:42', '2021-11-18 09:29:17'),
(237, 174, 'OEFbXvPHKsD1RwsbPhTUv6LP664EM0aW3FGqlufr', 1, 250, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-11-18 09:26:43', '2021-11-18 09:29:17'),
(239, 174, 'Dr1ggFfe2gmpKNoLWpG4gQiPjENgNrbz5lsEDzPw', 1, 250, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-11-18 23:28:50', '2021-11-18 23:29:55'),
(242, 174, 'JXQ27MnnaKKHMINRVtmsYuKP9G9lyrODRkl8FjlR', 1, 250, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-11-18 23:55:19', '2021-11-18 23:55:44'),
(243, 108, 's0s35HSc4M4h539Lo5Zg66t2xQuLqOLdtWjDGJZR', 0, 1, 40.00, 0.00, 40.00, NULL, NULL, NULL, '2021-11-19 02:12:59', '2021-11-19 02:12:59'),
(244, 158, 'zRQWWZtOgg6jr2nAvWWaerrlcbx82zGp2L59LxhY', 0, 1, 25.00, 0.00, 25.00, NULL, NULL, NULL, '2021-11-19 06:39:30', '2021-11-19 06:39:30'),
(246, 174, 'CkEaKP7T4nq7RVKJrj3gPwpcJz07RkZAddQfRdlO', 0, 250, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-11-20 06:00:14', '2021-11-20 06:00:14'),
(247, 159, 'LqvNrlQcZzBS0V9ADi0e2hIqIvGmFYzkvXEZAFf9', 0, -500, 60.00, 0.00, 60.00, NULL, NULL, NULL, '2021-11-20 09:29:29', '2021-11-20 09:29:29'),
(253, 168, 'RtrHbBRJ2AQJXPMTCHTLfsnPGEx3fypaRWsEGy9G', 0, 1, 22.00, 0.00, 22.00, NULL, NULL, NULL, '2021-11-20 12:53:38', '2021-11-20 12:53:38'),
(254, 209, 'AcphknAvLvquTvawXelocB6RqUIh2qOmLfrrtxaj', 0, 1, 240.00, 0.00, 240.00, NULL, NULL, NULL, '2021-11-20 15:14:22', '2021-11-20 15:14:22'),
(255, 174, 'pZ4WjOKkzyfvp8C5MC0TedPywnsgzIPAoFZSUQU1', 0, 1, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-11-21 12:00:08', '2021-11-21 12:00:08'),
(257, 173, 'uG7Fsonm8q2TVN9PPdn8IyT7091svwTToZw4mrzg', 0, 5, 35.00, 0.00, 35.00, NULL, NULL, NULL, '2021-11-21 14:58:53', '2021-11-21 14:58:59'),
(258, 174, '4aoi6Lv8P1eE7XhhAqS0cpwAKN8REhsgesoO9xvs', 0, 1, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-11-22 05:53:58', '2021-11-22 05:53:58'),
(259, 173, '4aoi6Lv8P1eE7XhhAqS0cpwAKN8REhsgesoO9xvs', 0, 1, 35.00, 0.00, 35.00, NULL, NULL, NULL, '2021-11-22 05:54:07', '2021-11-22 05:54:07'),
(260, 172, '4aoi6Lv8P1eE7XhhAqS0cpwAKN8REhsgesoO9xvs', 0, 1, 23.00, 0.00, 23.00, NULL, NULL, NULL, '2021-11-22 05:54:11', '2021-11-22 05:54:11'),
(261, 242, 'OaKX89Y4kc1U8IcdAf7nF5uriboLpTjjV2IfsRkv', 0, 1, 650.00, 0.00, 650.00, NULL, NULL, NULL, '2021-11-22 21:37:48', '2021-11-22 21:37:48'),
(265, 304, 'C5O0OEpo9nhpJtONTQrJd3tMUWaACtw882kM7bRv', 0, 3, 700.00, 0.00, 700.00, NULL, NULL, NULL, '2021-11-23 06:35:12', '2021-11-23 06:35:16'),
(266, 308, '0BV3W5PGbVu9AaKLbA1ojvtZxZNoYVETKZjdbecD', 0, 1, 220.00, 0.00, 220.00, NULL, NULL, NULL, '2021-11-24 00:40:35', '2021-11-24 00:40:35'),
(267, 380, '1F8QunJdTT7zX1QjeXZkllnhQA8jZYWF7Ir6WkyR', 0, 5, 60.00, 0.00, 60.00, NULL, NULL, NULL, '2021-11-25 00:17:30', '2021-11-25 00:17:30'),
(268, 91, 'WYb7Vr3ECkfIKmxJwxCyk3BrEq0D6yPwnMaQZSMd', 0, 1, 115.00, 0.00, 115.00, NULL, NULL, NULL, '2021-11-25 00:47:51', '2021-11-25 00:47:51'),
(269, 78, 'WYb7Vr3ECkfIKmxJwxCyk3BrEq0D6yPwnMaQZSMd', 0, 1, 254.00, 0.00, 254.00, NULL, NULL, NULL, '2021-11-25 00:47:53', '2021-11-25 00:47:53'),
(270, 380, 'FhocbSQtQWAY91ExIgnXFqZO4bbb8M2iZ0ntWjOK', 0, 5, 60.00, 0.00, 60.00, NULL, NULL, NULL, '2021-11-25 01:40:40', '2021-11-25 01:40:40'),
(271, 381, 'FhocbSQtQWAY91ExIgnXFqZO4bbb8M2iZ0ntWjOK', 0, 1, 150.00, 0.00, 150.00, NULL, NULL, NULL, '2021-11-25 01:40:41', '2021-11-25 01:40:41'),
(272, 73, 'AxL6hHU5tdZY72MfDIwPVQ4IwHFf6NIQEuOpCrz8', 0, 2, 75.00, 0.00, 75.00, NULL, NULL, NULL, '2021-11-25 02:46:34', '2021-11-25 02:46:37'),
(273, 74, 'AxL6hHU5tdZY72MfDIwPVQ4IwHFf6NIQEuOpCrz8', 0, 1, 80.00, 0.00, 80.00, NULL, NULL, NULL, '2021-11-25 02:46:40', '2021-11-25 02:46:40'),
(274, 76, 'AxL6hHU5tdZY72MfDIwPVQ4IwHFf6NIQEuOpCrz8', 0, 1, 5.00, 0.00, 5.00, NULL, NULL, NULL, '2021-11-25 02:46:42', '2021-11-25 02:46:42'),
(275, 174, 'ZySUkhdtdSj5EHtQBT2l4fvqMMqwOilGN0OtG5eb', 0, 1, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-11-25 02:59:15', '2021-11-25 02:59:15'),
(276, 304, 'ZySUkhdtdSj5EHtQBT2l4fvqMMqwOilGN0OtG5eb', 0, 1, 700.00, 0.00, 700.00, NULL, NULL, NULL, '2021-11-25 02:59:36', '2021-11-25 02:59:36'),
(277, 166, 'gXP8iMySwXUDL317qG3FthXEzCSliEfJCFfH2vKv', 1, 1, 25.00, 0.00, 25.00, NULL, NULL, NULL, '2021-11-25 11:42:08', '2021-11-25 11:43:00'),
(279, 172, 'GKgm92CGzodXlSbaA2jbXszNwvHAp3NfyNu9kBor', 0, 1, 23.00, 0.00, 23.00, NULL, NULL, NULL, '2021-11-26 11:46:08', '2021-11-26 11:46:08'),
(280, 171, 'GKgm92CGzodXlSbaA2jbXszNwvHAp3NfyNu9kBor', 0, 1, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-26 11:46:11', '2021-11-26 11:46:11'),
(281, 173, 'GKgm92CGzodXlSbaA2jbXszNwvHAp3NfyNu9kBor', 0, 1, 35.00, 0.00, 35.00, NULL, NULL, NULL, '2021-11-26 11:46:13', '2021-11-26 11:46:13'),
(282, 379, 'GKgm92CGzodXlSbaA2jbXszNwvHAp3NfyNu9kBor', 0, 1, 460.00, 0.00, 460.00, NULL, NULL, NULL, '2021-11-26 11:46:16', '2021-11-26 11:46:16'),
(283, 452, 'GKgm92CGzodXlSbaA2jbXszNwvHAp3NfyNu9kBor', 0, 1, 220.00, 0.00, 220.00, NULL, NULL, NULL, '2021-11-26 11:46:19', '2021-11-26 11:46:19'),
(284, 454, 'GKgm92CGzodXlSbaA2jbXszNwvHAp3NfyNu9kBor', 0, 1, 40.00, 0.00, 40.00, NULL, NULL, NULL, '2021-11-26 11:46:23', '2021-11-26 11:46:23'),
(286, 169, 'Pea9oNRmlZaPtIDqHxhKZ4el5g3RgPamxUBIvYlZ', 0, 20, 22.00, 0.00, 22.00, NULL, NULL, NULL, '2021-11-26 12:44:40', '2021-11-26 12:44:40'),
(290, 305, 'VS9L7eQzWj9hkljYLlFnlQhLA4HXfZJN2co62vRB', 0, 1, 680.00, 0.00, 680.00, NULL, NULL, NULL, '2021-11-28 03:01:10', '2021-11-28 03:01:10'),
(292, 167, 'ulbHt8ir6Mf16BJ7NoE1xTh2p048XaFFx1Uzn1Q6', 0, 1, 15.00, 0.00, 15.00, NULL, NULL, NULL, '2021-11-29 11:56:57', '2021-11-29 11:56:57'),
(293, 174, 'iIEbpekCCmT0jaQtrFykUiJPUjrCRV7JZYGBWujY', 0, 1, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-11-30 07:03:07', '2021-11-30 07:03:07'),
(294, 173, 'iIEbpekCCmT0jaQtrFykUiJPUjrCRV7JZYGBWujY', 0, 1, 35.00, 0.00, 35.00, NULL, NULL, NULL, '2021-11-30 07:03:09', '2021-11-30 07:03:09'),
(295, 172, 'iIEbpekCCmT0jaQtrFykUiJPUjrCRV7JZYGBWujY', 0, 1, 23.00, 0.00, 23.00, NULL, NULL, NULL, '2021-11-30 07:03:10', '2021-11-30 07:03:10'),
(296, 171, 'iIEbpekCCmT0jaQtrFykUiJPUjrCRV7JZYGBWujY', 0, 1, 30.00, 0.00, 30.00, NULL, NULL, NULL, '2021-11-30 07:03:11', '2021-11-30 07:03:11'),
(298, 173, 'fR1BngqiwUe91aJt9AFfGPKm71bFTyNWhAbnjcLD', 0, 1, 35.00, 0.00, 35.00, NULL, NULL, NULL, '2021-12-02 03:46:02', '2021-12-02 03:46:02'),
(299, 174, '4xPNEigUk1rPQL7qrsuT0p9gVwjjKeU5M6EKGXmt', 1, 2, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-12-02 04:08:46', '2021-12-02 04:54:03'),
(300, 173, '4xPNEigUk1rPQL7qrsuT0p9gVwjjKeU5M6EKGXmt', 1, 1, 35.00, 0.00, 35.00, NULL, NULL, NULL, '2021-12-02 04:53:32', '2021-12-02 04:54:03'),
(301, 172, '4xPNEigUk1rPQL7qrsuT0p9gVwjjKeU5M6EKGXmt', 1, 1, 23.00, 0.00, 23.00, NULL, NULL, NULL, '2021-12-02 04:53:33', '2021-12-02 04:54:03'),
(302, 467, '4xPNEigUk1rPQL7qrsuT0p9gVwjjKeU5M6EKGXmt', 1, 1, 110.00, 0.00, 110.00, NULL, NULL, NULL, '2021-12-02 04:53:35', '2021-12-02 04:54:03'),
(303, 468, '4xPNEigUk1rPQL7qrsuT0p9gVwjjKeU5M6EKGXmt', 1, 1, 130.00, 0.00, 130.00, NULL, NULL, NULL, '2021-12-02 04:53:36', '2021-12-02 04:54:03'),
(304, 174, 'eOEbf1TcTD0OZrWk2jeahKWfGBSmYgj7yFPr7ibg', 1, 1, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-12-02 05:12:44', '2021-12-02 05:13:39'),
(305, 525, 'IfzbAeI4ZSd83uCrn0M0u0sWbKRZ9MiQQGH3u8zX', 1, 3, 350.00, 0.00, 350.00, NULL, NULL, NULL, '2021-12-04 01:27:24', '2021-12-04 01:27:55'),
(308, 174, 'EkfyHju4EXiovtlJDwYQyHhUIh7U9DuRv8KwL6Jf', 0, 1, 50.00, 0.00, 50.00, NULL, NULL, NULL, '2021-12-04 09:11:23', '2021-12-04 09:11:23'),
(309, 172, 'EkfyHju4EXiovtlJDwYQyHhUIh7U9DuRv8KwL6Jf', 0, 1, 23.00, 0.00, 23.00, NULL, NULL, NULL, '2021-12-04 09:11:25', '2021-12-04 09:11:25'),
(316, 380, 'ydFrFxbJMpLj7mvmcR2zUTLjIVJ3gOhzqdtIMd03', 0, 5, 60.00, 0.00, 60.00, NULL, NULL, NULL, '2022-01-08 09:18:50', '2022-01-08 09:18:50'),
(317, 119, 'dW4DVypxl64QkJDManJeJ7m1evV2b4TBMnZb6BQe', 1, 3, 25.00, 0.00, 25.00, NULL, NULL, NULL, '2022-01-08 09:48:57', '2022-01-08 10:30:31'),
(318, 524, 'dW4DVypxl64QkJDManJeJ7m1evV2b4TBMnZb6BQe', 1, 1, 260.00, 0.00, 260.00, NULL, NULL, NULL, '2022-01-08 09:50:13', '2022-01-08 10:30:31'),
(319, 119, 'LzahuvlBOIq5WoPBbECmkD1ftxyIP96UlGxZmvuu', 0, 1, 25.00, 0.00, 25.00, NULL, NULL, NULL, '2022-01-08 23:37:14', '2022-01-08 23:37:14'),
(328, 97, 'E245fK8VtAVPA0dKnsABSsPlvDWJLG3eDfG3UjXo', 1, 1, 1050.00, 0.00, 1050.00, NULL, NULL, NULL, '2022-01-09 00:56:48', '2022-01-09 01:00:16'),
(329, 525, 'TcTMe6jL1PqLkAP1wUYtfO7vkJ0N0GJPA6RhSr8G', 1, 1, 350.00, 0.00, 350.00, NULL, NULL, NULL, '2022-01-09 01:44:33', '2022-01-09 01:45:19'),
(330, 587, 'aEjH6q3Svk0QvmnoYQl89qICQLahDK372VPPx72n', 0, 678, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-13 14:45:17', '2022-01-13 14:45:17'),
(331, 585, 'vEuJmwVsdrGqS1MuOPLWzMm7uYSTGVoZ1ysRbZAi', 1, 8, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-13 18:33:32', '2022-01-13 18:35:24'),
(332, 570, 'KH60JIGi25ZFRagkiwn31CeRtotHdzutEEjP25rz', 1, 5, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2022-01-13 19:25:18', '2022-01-13 19:27:52'),
(333, 585, 'v2zyhSaOF0z8l2Oiu1x9GXCWQv4LaBffsyokgzjl', 0, 8, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-13 19:44:24', '2022-01-13 19:44:24'),
(334, 564, 'v2zyhSaOF0z8l2Oiu1x9GXCWQv4LaBffsyokgzjl', 0, 8, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-13 19:44:48', '2022-01-13 19:44:48'),
(335, 566, 'pRoO2yJKiLiBGWAkvvJP6fPWjEs1dP7FxwERpjqL', 0, 141, 400.00, 0.00, 400.00, NULL, NULL, NULL, '2022-01-14 02:13:50', '2022-01-14 02:14:10'),
(336, 572, 'pRoO2yJKiLiBGWAkvvJP6fPWjEs1dP7FxwERpjqL', 0, 54, 210.00, 0.00, 210.00, NULL, NULL, NULL, '2022-01-14 02:18:30', '2022-01-14 02:18:30'),
(337, 564, 'rDWoqMTW7Wo6Bb2sQ9ipENZahZPkF0Jil5sNqyFS', 0, 8, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-14 02:21:01', '2022-01-14 02:21:01'),
(341, 585, 'V9MZPGkjnaVvLUecxi0b6zA0SSN9Fb0FKbDuHvlb', 0, 8, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-14 07:17:51', '2022-01-14 07:17:51'),
(342, 580, 'V9MZPGkjnaVvLUecxi0b6zA0SSN9Fb0FKbDuHvlb', 0, 6, 670.00, 0.00, 670.00, NULL, NULL, NULL, '2022-01-14 07:17:55', '2022-01-14 07:17:55'),
(343, 587, 'V9MZPGkjnaVvLUecxi0b6zA0SSN9Fb0FKbDuHvlb', 0, 678, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-14 07:17:59', '2022-01-14 07:17:59'),
(344, 588, 'V9MZPGkjnaVvLUecxi0b6zA0SSN9Fb0FKbDuHvlb', 0, 8, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2022-01-14 07:18:25', '2022-01-14 07:18:25'),
(345, 566, 'xhRPBuX4aQGjx1CXBU6s1Zt2TglfwWCg68Mcnn14', 0, 47, 400.00, 0.00, 400.00, NULL, NULL, NULL, '2022-01-14 10:14:46', '2022-01-14 10:14:46'),
(349, 565, 'zS7t4SIlYf5UQoA9EOGGMKn8vS9ekr9xwdxaUKO4', 0, 4, 400.00, 0.00, 400.00, NULL, NULL, NULL, '2022-01-15 03:32:33', '2022-01-15 03:32:33'),
(350, 566, 'Kn5oL5MsDAL3GtI5RrD3XXyZobrghZKxrSVz160T', 0, 47, 400.00, 0.00, 400.00, NULL, NULL, NULL, '2022-01-14 22:59:24', '2022-01-14 22:59:24'),
(351, 586, 'Kn5oL5MsDAL3GtI5RrD3XXyZobrghZKxrSVz160T', 0, 54, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2022-01-14 23:12:53', '2022-01-14 23:12:53'),
(352, 587, 'Kn5oL5MsDAL3GtI5RrD3XXyZobrghZKxrSVz160T', 0, 678, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-14 23:30:23', '2022-01-14 23:30:23'),
(353, 563, 'Kn5oL5MsDAL3GtI5RrD3XXyZobrghZKxrSVz160T', 0, 5, 250.00, 0.00, 250.00, NULL, NULL, NULL, '2022-01-14 23:31:03', '2022-01-14 23:31:03'),
(354, 588, 'Kn5oL5MsDAL3GtI5RrD3XXyZobrghZKxrSVz160T', 0, 8, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2022-01-14 23:31:05', '2022-01-14 23:31:05'),
(355, 588, 'p8jdqOxWbEqrrSuIMiMSgFz7OtoAdZtGUpLJtf2Q', 0, 8, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2022-01-17 10:36:07', '2022-01-17 10:36:07'),
(356, 565, 'p8jdqOxWbEqrrSuIMiMSgFz7OtoAdZtGUpLJtf2Q', 0, 4, 400.00, 0.00, 400.00, NULL, NULL, NULL, '2022-01-17 10:36:17', '2022-01-17 10:36:17'),
(357, 588, 'q2dGdQK0yoPzaCBOuIq8zmpreKyHSo5jG9AfzqMX', 0, 8, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2022-01-20 00:43:05', '2022-01-20 00:43:05'),
(358, 588, '6TfCf5t4FPLuanmy78CKQKQLNLHdsBOu36TUdXIY', 1, 8, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2022-01-20 01:06:43', '2022-01-20 01:08:25'),
(359, 566, '6TfCf5t4FPLuanmy78CKQKQLNLHdsBOu36TUdXIY', 1, 47, 400.00, 0.00, 400.00, NULL, NULL, NULL, '2022-01-20 01:06:46', '2022-01-20 01:08:25'),
(360, 587, '6TfCf5t4FPLuanmy78CKQKQLNLHdsBOu36TUdXIY', 1, 678, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-20 01:06:59', '2022-01-20 01:08:25'),
(363, 588, 'IQIsRdLGpkt2taomF8n14xOTwRUiDdr0IZe4e3Jy', 1, 8, 400.00, 100.00, 300.00, NULL, 'XL', 'Pink', '2022-01-22 00:09:45', '2022-01-22 00:14:28'),
(364, 588, '8HqUElnPlY7SBTTTo1iPmAMl4HCQdYyuFhhO7HyF', 1, 8, 400.00, 100.00, 300.00, NULL, 'XXXL', 'Black', '2022-01-22 00:18:55', '2022-01-22 00:19:08'),
(365, 562, 'ISfM35dfCtZQSBceBwJJOzvNvQWXk1Uim5JhEc0w', 1, 5, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2022-01-22 00:22:11', '2022-01-22 01:07:23'),
(366, 588, 'ISfM35dfCtZQSBceBwJJOzvNvQWXk1Uim5JhEc0w', 1, 8, 400.00, 100.00, 300.00, NULL, 'XL', 'White', '2022-01-22 00:22:26', '2022-01-22 01:07:23'),
(379, 588, 'EiLqKp63xiB3qdeEBbTQZ7r9zkCjQwfptxPephQP', 0, 1, 400.00, 100.00, 300.00, NULL, NULL, NULL, '2022-01-22 10:04:40', '2022-01-22 10:04:40'),
(380, 588, 'EiLqKp63xiB3qdeEBbTQZ7r9zkCjQwfptxPephQP', 0, 5, 400.00, 100.00, 300.00, NULL, 'XXXL', 'Black', '2022-01-22 10:04:58', '2022-01-22 10:05:06'),
(381, 563, '4blfEhxTtPHs2U4jD2UPqBJVXAKRwvS4fPDMwvv9', 0, 5, 250.00, 0.00, 250.00, NULL, NULL, NULL, '2022-01-23 22:46:24', '2022-01-23 22:46:24'),
(382, 584, 'WwCJTrB4ISDHTFf8FUEyJRrk48i4gjfF5rjwMSQC', 1, 4, 520.00, 0.00, 520.00, NULL, NULL, NULL, '2022-01-25 09:46:31', '2022-01-25 11:02:56'),
(383, 585, 'WwCJTrB4ISDHTFf8FUEyJRrk48i4gjfF5rjwMSQC', 1, 8, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-25 09:46:33', '2022-01-25 11:02:56'),
(384, 562, 'R4T8ydeL93TW5AbqDGSsmtMyvLT2NQj1Ia4WA2fR', 1, 5, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2022-01-25 11:03:12', '2022-01-25 11:03:31'),
(385, 563, 'R4T8ydeL93TW5AbqDGSsmtMyvLT2NQj1Ia4WA2fR', 1, 5, 250.00, 0.00, 250.00, NULL, NULL, NULL, '2022-01-25 11:03:13', '2022-01-25 11:03:31'),
(386, 562, 'Pxms2lyIBPdtTsB3DVGxZhjKoeMkp1BT9izJj4uB', 1, 5, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2022-01-25 11:03:59', '2022-01-25 11:04:07'),
(387, 563, 'Pxms2lyIBPdtTsB3DVGxZhjKoeMkp1BT9izJj4uB', 1, 5, 250.00, 0.00, 250.00, NULL, NULL, NULL, '2022-01-25 11:03:59', '2022-01-25 11:04:07'),
(388, 562, '2I7z8900ObM8gDwm3IU4hosfXjvI9r1RLX5VdX0c', 1, 5, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2022-01-25 11:04:47', '2022-01-25 11:05:13'),
(389, 564, '2I7z8900ObM8gDwm3IU4hosfXjvI9r1RLX5VdX0c', 1, 8, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-25 11:04:48', '2022-01-25 11:05:13'),
(390, 562, 'rCCHzHMY7ASPr8wHbIfuQgnJ9UJ3jhXXH36qeOPz', 1, 5, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2022-01-25 11:05:29', '2022-01-25 11:05:37'),
(391, 564, 'rCCHzHMY7ASPr8wHbIfuQgnJ9UJ3jhXXH36qeOPz', 1, 8, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-25 11:05:30', '2022-01-25 11:05:37'),
(392, 562, 'wMFRits8mMs1fTuhdumZjRIdDZTWMhyj899QCI1l', 1, 5, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2022-01-25 11:07:06', '2022-01-25 11:07:13'),
(393, 562, 'Id9yTdHDeJqdPeRRBoDRMJ6YK4i0o74RSgFliA4T', 1, 5, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2022-01-25 11:08:11', '2022-01-25 11:08:19'),
(394, 563, 'Id9yTdHDeJqdPeRRBoDRMJ6YK4i0o74RSgFliA4T', 1, 5, 250.00, 0.00, 250.00, NULL, NULL, NULL, '2022-01-25 11:08:11', '2022-01-25 11:08:19'),
(395, 562, 'qpVEDMAtY3WJt5qclRRdF5tS5JHdv7HKvVYdgjbb', 1, 5, 200.00, 0.00, 200.00, NULL, NULL, NULL, '2022-01-25 22:37:19', '2022-01-25 22:42:24'),
(396, 563, 'qpVEDMAtY3WJt5qclRRdF5tS5JHdv7HKvVYdgjbb', 1, 5, 250.00, 0.00, 250.00, NULL, NULL, NULL, '2022-01-25 22:37:20', '2022-01-25 22:42:24'),
(397, 586, 'QjEimXElLGojIfLbvp4F7Istnk0BrS23hryk5WRr', 1, 54, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2022-01-26 04:14:47', '2022-01-26 04:17:15'),
(398, 571, 'Wg5ambL9h0WCTestOScg9nrDcMxzlPKZXD0kOjbd', 0, 45, 250.00, 0.00, 250.00, NULL, NULL, NULL, '2022-01-26 06:51:55', '2022-01-26 06:51:55'),
(399, 591, 'bieP5kHF0MbtUsdDc6BjPpzbL5AEI4BEkO6aSb2q', 1, 1, 250.00, 5.00, 245.00, NULL, 'M', 'Pink', '2022-01-26 07:43:09', '2022-01-26 07:43:55'),
(400, 590, 'cj5M8ZDXKF0hqEK0K0QH2NkMFWtxEsyQwJhD6aUm', 0, 1, 200.00, 20.00, 180.00, NULL, 'S', 'Red', '2022-01-27 08:33:41', '2022-01-27 08:33:41'),
(401, 575, 'KJDm1Yym76qyFJcG15o7QH2n2gEwfhXCKrzX6P5x', 0, 54, 210.00, 0.00, 210.00, NULL, NULL, NULL, '2022-01-27 15:14:05', '2022-01-27 15:14:05'),
(402, 565, 'erlsUnLfviDPt8FcnWiojQflROArzhYIhL82sPvO', 0, 8, 400.00, 0.00, 400.00, NULL, NULL, NULL, '2022-01-30 07:42:38', '2022-01-30 07:45:17'),
(403, 564, 'erlsUnLfviDPt8FcnWiojQflROArzhYIhL82sPvO', 0, 8, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-01-30 07:45:19', '2022-01-30 07:45:19'),
(404, 584, 'erlsUnLfviDPt8FcnWiojQflROArzhYIhL82sPvO', 0, 4, 520.00, 0.00, 520.00, NULL, NULL, NULL, '2022-01-30 07:45:21', '2022-01-30 07:45:21'),
(405, 589, 'Xf0Iv1OEUN93wJkKMnqqxuhVIWQ6mlfoRhc8tbMA', 0, 8, 150.00, 0.00, 140.00, NULL, NULL, NULL, '2022-02-26 10:55:38', '2022-02-26 10:55:42'),
(406, 574, 'LcpxYXgE9Cio3n0kssDT1rIo2ItbqPNV7UhcvYnp', 0, 44, 230.00, 0.00, 230.00, NULL, NULL, NULL, '2022-02-27 03:35:12', '2022-02-27 03:35:12'),
(407, 563, 'LcpxYXgE9Cio3n0kssDT1rIo2ItbqPNV7UhcvYnp', 0, 14, 250.00, 40.00, 250.00, NULL, NULL, NULL, '2022-02-27 03:46:38', '2022-02-27 03:46:44'),
(408, 591, 'LcpxYXgE9Cio3n0kssDT1rIo2ItbqPNV7UhcvYnp', 0, 2, 250.00, 5.00, 245.00, NULL, 'L', 'White', '2022-02-27 03:47:28', '2022-02-27 03:47:28'),
(409, 588, 'LcpxYXgE9Cio3n0kssDT1rIo2ItbqPNV7UhcvYnp', 0, 1, 400.00, 100.00, 300.00, NULL, NULL, NULL, '2022-02-27 03:51:16', '2022-02-27 03:51:16'),
(410, 564, 'RCDNmbhFnwftHf2XpJkQRlToLzft5L8lZGdy9Mfl', 0, 8, 450.00, 100.00, 450.00, NULL, NULL, NULL, '2022-02-27 09:51:01', '2022-02-27 09:51:01'),
(411, 590, 'RCDNmbhFnwftHf2XpJkQRlToLzft5L8lZGdy9Mfl', 0, 1, 200.00, 20.00, 180.00, NULL, NULL, NULL, '2022-02-27 09:51:03', '2022-02-27 09:51:03'),
(412, 582, '6CFs61T3i00i63TDWIXeazKHnBQGDGA5SxTjA3ih', 1, 45, 520.00, 0.00, 520.00, NULL, 'XXXL', NULL, '2022-02-27 23:09:17', '2022-02-28 01:36:52'),
(413, 562, '6CFs61T3i00i63TDWIXeazKHnBQGDGA5SxTjA3ih', 1, 6, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-02-28 00:57:13', '2022-02-28 01:36:52'),
(414, 588, '6CFs61T3i00i63TDWIXeazKHnBQGDGA5SxTjA3ih', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'White', '2022-02-28 00:57:21', '2022-02-28 01:36:52'),
(415, 580, 'Vk7qCTh0mTa5xz6Y9BCSyP4KYDErSwmP6xG3Ul8f', 1, 7, 670.00, 0.00, 670.00, NULL, 'XL', NULL, '2022-02-28 01:41:44', '2022-02-28 01:43:38'),
(416, 562, 'Vk7qCTh0mTa5xz6Y9BCSyP4KYDErSwmP6xG3Ul8f', 1, 5, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-02-28 01:41:53', '2022-02-28 01:43:38'),
(417, 573, 'NSEUSmYU5UJhmGV5ulhvcMqmFbUibgqdA1BmZRdZ', 1, 45, 252.00, NULL, 252.00, NULL, NULL, NULL, '2022-02-28 01:44:51', '2022-02-28 01:45:27'),
(418, 586, 'r7PGndIaWFmT5FPU4WbkgTCkPmkxkHlo3ARCTrhF', 1, 54, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2022-02-28 01:46:41', '2022-02-28 01:47:37'),
(419, 588, 'NsVoUapXfY4oIJuX1MAEFbDM6icfdfzuhqVKeeYY', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'Black', '2022-02-28 01:50:08', '2022-02-28 01:50:18'),
(420, 563, 'c296jGk5cByJ6UiUzwdmBG1QYPRuS8A1VeEDdDyH', 1, 5, 250.00, 40.00, 250.00, NULL, NULL, NULL, '2022-02-28 01:52:58', '2022-02-28 01:53:05'),
(421, 588, 'uQDiATKHpJonRp9lD624jBJWtdcp0FpGrBPCQqwH', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'White', '2022-02-28 01:56:13', '2022-02-28 01:56:29'),
(422, 588, 'uQDiATKHpJonRp9lD624jBJWtdcp0FpGrBPCQqwH', 1, 3, 400.00, 100.00, 300.00, NULL, 'XXXL', 'White', '2022-02-28 01:56:17', '2022-02-28 01:56:29'),
(423, 588, 'uQDiATKHpJonRp9lD624jBJWtdcp0FpGrBPCQqwH', 1, 2, 400.00, 100.00, 300.00, NULL, 'XL', 'Pink', '2022-02-28 01:56:20', '2022-02-28 01:56:29'),
(424, 588, '0G8m739g1uqoBPQzBal2MbKRP6TmCG2Om8N0hnIB', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'White', '2022-02-28 02:02:18', '2022-02-28 02:02:37'),
(425, 588, '0G8m739g1uqoBPQzBal2MbKRP6TmCG2Om8N0hnIB', 1, 2, 400.00, 100.00, 300.00, NULL, 'XL', 'Pink', '2022-02-28 02:02:25', '2022-02-28 02:02:37'),
(426, 562, 'zY17mbW4ih71ogDNZrOXcEtTiGDdLFEpB7BdWFdi', 1, 1, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-02-28 02:14:04', '2022-02-28 02:14:12'),
(427, 562, 'GlxcI7UFbkxHtvFJ96qQYpZ5DqriHJsGeDStJBCC', 1, 2, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-02-28 02:19:11', '2022-02-28 02:19:24'),
(428, 588, 'EYaIBXkHk5GhCVMoh2I1xpvwYnE58GLLrCKy3tFI', 1, 2, 400.00, 100.00, 300.00, NULL, 'XL', 'White', '2022-02-28 02:19:47', '2022-02-28 02:20:08'),
(429, 588, 'EYaIBXkHk5GhCVMoh2I1xpvwYnE58GLLrCKy3tFI', 1, 2, 400.00, 100.00, 300.00, NULL, 'XL', 'Green', '2022-02-28 02:19:50', '2022-02-28 02:20:08'),
(430, 588, 'EYaIBXkHk5GhCVMoh2I1xpvwYnE58GLLrCKy3tFI', 1, 3, 400.00, 100.00, 300.00, NULL, 'XXXL', 'Black', '2022-02-28 02:19:52', '2022-02-28 02:20:08'),
(431, 588, 'EYaIBXkHk5GhCVMoh2I1xpvwYnE58GLLrCKy3tFI', 1, 1, 400.00, 100.00, 300.00, NULL, 'M', 'White', '2022-02-28 02:20:00', '2022-02-28 02:20:08'),
(432, 588, '8mcVvPjnW5Yrdpq9gvzbJoOJp18lM084xeybm56g', 1, 1, 400.00, 100.00, 300.00, NULL, NULL, NULL, '2022-03-06 01:12:29', '2022-03-06 01:18:46'),
(433, 588, '8mcVvPjnW5Yrdpq9gvzbJoOJp18lM084xeybm56g', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'Pink', '2022-03-06 01:15:06', '2022-03-06 01:18:46'),
(434, 588, 'r5RdiG9IK87w6KRtgkzllJJWF3esFJ95OQa8VMEA', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'Black', '2022-03-06 01:22:52', '2022-03-06 01:23:17'),
(435, 588, 'r5RdiG9IK87w6KRtgkzllJJWF3esFJ95OQa8VMEA', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'White', '2022-03-06 01:22:54', '2022-03-06 01:23:17'),
(436, 588, 'r5RdiG9IK87w6KRtgkzllJJWF3esFJ95OQa8VMEA', 1, 1, 400.00, 100.00, 300.00, NULL, 'XXXL', 'Green', '2022-03-06 01:22:56', '2022-03-06 01:23:17'),
(437, 588, 'r5RdiG9IK87w6KRtgkzllJJWF3esFJ95OQa8VMEA', 1, 1, 400.00, 100.00, 300.00, NULL, 'M', 'Black', '2022-03-06 01:22:58', '2022-03-06 01:23:17'),
(440, 588, 'mLIpIppcsPRki5YCkzw0NekLMSe8HmBBHTGlls9L', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'White', '2022-03-06 01:27:41', '2022-03-06 01:28:46'),
(441, 588, 'mLIpIppcsPRki5YCkzw0NekLMSe8HmBBHTGlls9L', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'Pink', '2022-03-06 01:27:42', '2022-03-06 01:28:46'),
(442, 588, 'dFm7ZNJYqb7W5aLrPVF9Sw5YywkKrzAZl7M1y0a5', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'White', '2022-03-06 01:30:29', '2022-03-06 01:30:43'),
(443, 588, 'dFm7ZNJYqb7W5aLrPVF9Sw5YywkKrzAZl7M1y0a5', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'Pink', '2022-03-06 01:30:30', '2022-03-06 01:30:43'),
(444, 588, 'dFm7ZNJYqb7W5aLrPVF9Sw5YywkKrzAZl7M1y0a5', 1, 1, 400.00, 100.00, 300.00, 100, 'XXXL', 'Pink', '2022-03-06 01:30:31', '2022-03-06 01:30:43'),
(445, 588, 'ZGMXYYaq4GI9Ct1oLBpYIFBzU8f4jr6wnqOnr58m', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'Black', '2022-03-06 01:33:56', '2022-03-06 01:34:09'),
(446, 588, 'ZGMXYYaq4GI9Ct1oLBpYIFBzU8f4jr6wnqOnr58m', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'White', '2022-03-06 01:33:58', '2022-03-06 01:34:09'),
(447, 588, '892BnAOVSHd8YsxSQCyP1PY5T6lKUMEjh4VK36tg', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'White', '2022-03-06 01:35:19', '2022-03-06 01:35:33'),
(448, 588, '892BnAOVSHd8YsxSQCyP1PY5T6lKUMEjh4VK36tg', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'Pink', '2022-03-06 01:35:21', '2022-03-06 01:35:33'),
(449, 588, 'zv59ud4SWTnxSc2fGKJZ6smkkYUM0XJr7JIlgNXy', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'White', '2022-03-06 01:39:29', '2022-03-06 01:39:40'),
(450, 588, 'zv59ud4SWTnxSc2fGKJZ6smkkYUM0XJr7JIlgNXy', 1, 1, 400.00, 100.00, 300.00, 100, 'M', 'Pink', '2022-03-06 01:39:30', '2022-03-06 01:39:40'),
(451, 588, 'zv59ud4SWTnxSc2fGKJZ6smkkYUM0XJr7JIlgNXy', 1, 1, 400.00, 100.00, 300.00, 100, 'XXXL', 'Pink', '2022-03-06 01:39:31', '2022-03-06 01:39:40'),
(452, 588, 'iei8XqrNTiEjmv6IDfH4SnH26MWSdDkTzcb82Dji', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'White', '2022-03-06 01:44:15', '2022-03-06 01:44:32'),
(453, 588, 'iei8XqrNTiEjmv6IDfH4SnH26MWSdDkTzcb82Dji', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'Pink', '2022-03-06 01:44:17', '2022-03-06 01:44:32'),
(454, 588, 'q0iV8ulxTu1ANyvckt9xEab9l1Oi4BJmEnYRm0be', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'White', '2022-03-06 01:45:28', '2022-03-06 01:45:48'),
(455, 562, 'q0iV8ulxTu1ANyvckt9xEab9l1Oi4BJmEnYRm0be', 1, 2, 200.00, 50.00, 200.00, 50, NULL, NULL, '2022-03-06 01:45:32', '2022-03-06 01:45:48'),
(456, 588, 'cH95PN3HnvcgtX8awP7CpICphweHn6f0e40WUUid', 1, 1, 400.00, 100.00, 300.00, 100, 'XL', 'White', '2022-03-06 01:54:46', '2022-03-06 01:55:00'),
(457, 588, 'cH95PN3HnvcgtX8awP7CpICphweHn6f0e40WUUid', 1, 1, 400.00, 100.00, 300.00, 100, 'XXXL', 'White', '2022-03-06 01:54:48', '2022-03-06 01:55:00'),
(458, 580, 'q2MAKQdlERlnezC2mrucVf3STC2LNR6o8378bYkv', 1, 6, 670.00, 0.00, 670.00, 200, 'XL', NULL, '2022-03-06 02:51:40', '2022-03-06 02:51:50'),
(459, 580, '9CDegv2NIlJdQyzAwNBcvNHsiF0fFDuQxSpefrjK', 1, 6, 670.00, 0.00, 670.00, 200, 'XL', NULL, '2022-03-06 03:00:21', '2022-03-06 03:00:29'),
(460, 588, 'dHlIqUShDhT0HZTuHLALbOrsUkulZOpsDMWLy2t2', 1, 2, 400.00, 100.00, 300.00, 100, 'XXXL', 'Black', '2022-03-06 03:23:07', '2022-03-06 03:30:58'),
(461, 588, 'dHlIqUShDhT0HZTuHLALbOrsUkulZOpsDMWLy2t2', 1, 2, 400.00, 100.00, 300.00, 100, 'XL', 'Black', '2022-03-06 03:23:09', '2022-03-06 03:30:58'),
(462, 588, 'dHlIqUShDhT0HZTuHLALbOrsUkulZOpsDMWLy2t2', 1, 2, 400.00, 100.00, 300.00, 100, 'XL', 'White', '2022-03-06 03:23:10', '2022-03-06 03:30:58'),
(463, 563, 'dHlIqUShDhT0HZTuHLALbOrsUkulZOpsDMWLy2t2', 1, 5, 250.00, 40.00, 250.00, 100, NULL, NULL, '2022-03-06 03:23:14', '2022-03-06 03:30:58'),
(464, 562, 'dHlIqUShDhT0HZTuHLALbOrsUkulZOpsDMWLy2t2', 1, 2, 200.00, 50.00, 200.00, 100, NULL, NULL, '2022-03-06 03:23:19', '2022-03-06 03:30:58'),
(465, 588, 'PuZOF2hBOG47gTh25p5jdYerwFpaLvFM5kC2L8PP', 1, 2, 400.00, 100.00, 300.00, NULL, 'XXXL', 'Black', '2022-03-06 03:35:57', '2022-03-06 03:40:29'),
(466, 563, 'PuZOF2hBOG47gTh25p5jdYerwFpaLvFM5kC2L8PP', 1, 5, 250.00, 40.00, 250.00, NULL, NULL, NULL, '2022-03-06 03:36:04', '2022-03-06 03:40:29'),
(467, 588, '2KTK547KzQCTvZN2H12IdYTLdWOBMZ4NulXyrXFU', 1, 1, 400.00, 100.00, 300.00, NULL, 'XXXL', 'White', '2022-03-06 03:43:01', '2022-03-06 03:49:01'),
(468, 588, '2KTK547KzQCTvZN2H12IdYTLdWOBMZ4NulXyrXFU', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'White', '2022-03-06 03:43:03', '2022-03-06 03:49:01'),
(469, 588, '2KTK547KzQCTvZN2H12IdYTLdWOBMZ4NulXyrXFU', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'Green', '2022-03-06 03:43:04', '2022-03-06 03:49:01'),
(470, 580, 'mDjrQ7ffhUMgkcbh8nS0KcO6zvysVoLI8gyYgmwM', 1, 6, 670.00, 0.00, 670.00, NULL, NULL, NULL, '2022-03-06 03:57:36', '2022-03-06 03:57:42'),
(471, 562, 'sr6WVDwAXHlpGWlZGsbipMPyicYKpjL9LpRvcCLI', 1, 1, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 04:00:58', '2022-03-06 04:01:07'),
(472, 562, 'qj5nebp8z7T0xU6nLsw7CWAQOlqCBHsoN7me5mbQ', 1, 2, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 04:03:38', '2022-03-06 04:03:48'),
(473, 562, 'jl3TqYFQc3NsYYvVXFLNY50jvpUlREZVIDdOly5j', 1, 2, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 04:05:10', '2022-03-06 04:05:17'),
(474, 562, 'eXixtzuq8gDFu20cM0EigGMj9ICsh7sgUgMrhsQ5', 1, 2, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 04:06:27', '2022-03-06 04:06:36'),
(475, 562, '6vSoTtNYe2znC7Cxayg23k7emZIZepWAgeSipaap', 1, 2, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 04:07:31', '2022-03-06 04:07:38'),
(476, 562, 'CI6VS74tlMT8GW3dlReZg0K3heyzJWsw3t93FNxB', 1, 2, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 04:09:39', '2022-03-06 04:09:45'),
(477, 562, 'yP3sHAo37RQs5yJbuHwpL8iILcvUBRaTwLgICcKM', 1, 2, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 04:10:10', '2022-03-06 04:10:17'),
(478, 563, 'r9a0AcZePABuRk9CpArm1VPV2a30PeJO5dNjHWQR', 0, 5, 250.00, 40.00, 250.00, NULL, NULL, NULL, '2022-03-06 08:42:44', '2022-03-06 08:42:44'),
(479, 562, 'ERzodpU6GnObNfHu6ewEsFJxDvKJj0jtFPR8tgCq', 1, 7, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 08:48:21', '2022-03-06 08:50:36'),
(480, 562, 'XFoGZWbB9HeKlmSVUErvzTWMa8TLQ0vpPpXrJFm5', 1, 5, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 08:51:06', '2022-03-06 08:56:52'),
(481, 580, 'zxDZmwyTJzbnTNAXEXBMWxjl81iQnR2RMokXowIW', 1, 6, 670.00, 0.00, 670.00, NULL, NULL, NULL, '2022-03-06 08:57:03', '2022-03-06 08:57:13'),
(482, 562, 'nhgaVlVs4BOs0hgrtqZ5fNgLJJT0MUJEYWBdY2O8', 1, 1, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 08:57:23', '2022-03-06 08:59:03'),
(483, 563, 'nhgaVlVs4BOs0hgrtqZ5fNgLJJT0MUJEYWBdY2O8', 1, 5, 250.00, 40.00, 250.00, NULL, NULL, NULL, '2022-03-06 08:57:44', '2022-03-06 08:59:03'),
(484, 562, '4evfaZZ5K7Bdyeqeh7OA5jOS5dWXLimcWPsKl5et', 1, 4, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 08:59:33', '2022-03-06 08:59:42'),
(485, 562, 'oH8Z2Z4SxRqPVrQTPc3Im3ezZ8OzWncmN8faHwgg', 1, 19, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 08:59:58', '2022-03-06 09:00:27'),
(486, 588, 'oH8Z2Z4SxRqPVrQTPc3Im3ezZ8OzWncmN8faHwgg', 1, 100, 400.00, 100.00, 300.00, NULL, 'XL', 'White', '2022-03-06 09:00:19', '2022-03-06 09:00:27'),
(487, 562, 'AFeYTKy857IEDtas4UV1bHbfX0oCbimx2rTMtlr1', 1, 1000, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 09:00:47', '2022-03-06 09:00:58'),
(488, 562, 'kG3YnXI3FPFFGEmNSLd73gY7LQOt1rUpCY3a93vT', 1, 1, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 09:01:36', '2022-03-06 09:29:47'),
(489, 562, 'Rh2xzeGSsTogMfzoJtdwGShCGxYiuUC9Q9Yy740B', 0, 1, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 09:33:24', '2022-03-06 09:33:24'),
(490, 563, 'FukImFUIo7JPXpRAch76990nPyCBAu1OKPwpZXB4', 1, 5, 250.00, 40.00, 250.00, NULL, NULL, NULL, '2022-03-06 10:04:53', '2022-03-06 10:09:36');
INSERT INTO `shopping_carts` (`id`, `product_id`, `session_id`, `status`, `quantity`, `sale_price`, `discount_price`, `current_price`, `reward_points`, `size`, `color`, `created_at`, `updated_at`) VALUES
(491, 562, 'FukImFUIo7JPXpRAch76990nPyCBAu1OKPwpZXB4', 1, 1, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-06 10:05:35', '2022-03-06 10:09:36'),
(492, 580, 'n1nygkFTU9JfPjD69mzYB9A6yWJ3ESG3sOV8wD4s', 1, 60, 670.00, 0.00, 670.00, NULL, NULL, NULL, '2022-03-06 10:11:08', '2022-03-06 10:11:21'),
(493, 581, '54pTgePb4AWV1Wcc0qP9hrTvNXERRaI3ILERFawp', 0, 85, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2022-03-06 10:26:40', '2022-03-06 10:26:40'),
(494, 587, 'J7jNVPMI8v34OgmhGGQasN97z6OGCCXZ5nZnonie', 1, 678, 450.00, 0.00, 450.00, NULL, NULL, NULL, '2022-03-06 22:07:40', '2022-03-06 23:21:37'),
(495, 580, 'J7jNVPMI8v34OgmhGGQasN97z6OGCCXZ5nZnonie', 1, 26, 670.00, 0.00, 670.00, NULL, NULL, NULL, '2022-03-06 23:07:46', '2022-03-06 23:21:37'),
(496, 580, 'a8JvqUsSrB4T7NzX3QS7W6tsH6osBimRZ1E8KZVH', 1, 6, 670.00, 0.00, 670.00, NULL, NULL, NULL, '2022-03-06 23:34:42', '2022-03-07 00:18:42'),
(497, 580, 'uMusDHhERPRNj7R2py0l8B0GNAR8IYBq4zm9BDxV', 1, 6, 670.00, 0.00, 670.00, NULL, NULL, NULL, '2022-03-07 00:21:59', '2022-03-07 01:17:48'),
(498, 580, '0T7kZ5CBWLSXUMAm4dhtvAXYiCJtknvKa0VXfcde', 1, 6, 670.00, 0.00, 670.00, NULL, NULL, NULL, '2022-03-07 01:23:32', '2022-03-07 01:27:49'),
(499, 580, 'uHLIg2SZAxGGupk6TzKlYFNfoGIF1e4c2h2bgjcV', 1, 6, 670.00, 0.00, 670.00, NULL, NULL, NULL, '2022-03-07 01:28:57', '2022-03-07 01:37:20'),
(500, 580, 'TfJncNH1LVrFFSetMiu7R2mqe6zKsvUKS4T6BMvB', 1, 6, 670.00, 0.00, 670.00, NULL, NULL, NULL, '2022-03-07 01:39:15', '2022-03-07 01:39:40'),
(501, 562, 'VphMVNZHjdnvUKJ9M7qUmmkEpuUqi4I26bXvCoCT', 1, 4, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-07 01:40:12', '2022-03-07 01:48:25'),
(502, 562, '5IdfjWVrbcIOTnNZvb7RuoLEDnj1IP86OATIp7tW', 1, 10, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-07 01:48:51', '2022-03-07 01:51:54'),
(503, 562, 'C7DP7hLwbhIUbugeSxXroZ7O56OVT0nwWHDZqPTc', 0, 4, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-07 01:54:21', '2022-03-07 01:54:21'),
(504, 586, 'eZJHMbDmfnpnF4EYSdK7rxnPOMGZTCmUVhXDjdox', 0, 54, 500.00, 0.00, 500.00, NULL, NULL, NULL, '2022-03-28 02:58:46', '2022-03-28 02:58:46'),
(505, 578, 'pGBa2uqw4kI1hFR29pu0y2F0iWwdLbL0II9Qn3lW', 1, 4, 260.00, 0.00, 260.00, NULL, NULL, NULL, '2022-03-28 00:31:07', '2022-03-28 00:33:30'),
(506, 562, 'MHNHL7pnP9F3jbpiropRdz3lKzDr1S3srTqpvN8W', 1, 1, 200.00, 50.00, 200.00, NULL, NULL, NULL, '2022-03-28 00:51:40', '2022-03-28 00:51:47'),
(507, 582, '97OKgU0xiPjRdujKktslaCcBnPxZaHQBsdaQcYjp', 0, 45, 520.00, 0.00, 520.00, NULL, 'L', NULL, '2022-03-28 00:58:08', '2022-03-28 00:58:08'),
(508, 588, '97OKgU0xiPjRdujKktslaCcBnPxZaHQBsdaQcYjp', 0, 2, 400.00, 100.00, 300.00, NULL, NULL, NULL, '2022-03-28 01:43:31', '2022-03-28 01:43:31'),
(509, 573, 'MJT2fjqqMnIvRCtgXchmt9q6QVhWqJ9koJUCikQF', 0, 45, 252.00, NULL, 252.00, NULL, NULL, NULL, '2022-03-28 23:05:14', '2022-03-28 23:05:14'),
(510, 588, 'kyZalGLHrFF7ypBDC7g3YTGNEmzjEoF4WQ4Tby6S', 1, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'White', '2022-04-13 03:07:06', '2022-04-13 03:17:45'),
(511, 563, 'Jpde00zpR1vhIekRUZlwAPPRXfRnRxPm5WRpOAvH', 1, 5, 250.00, 40.00, 250.00, NULL, NULL, NULL, '2022-04-13 04:25:01', '2022-04-13 04:25:20'),
(512, 588, 'VbOqboTxZgoVQcUdENuCrTt1q56OmFXfyRhwJw1g', 0, 1, 400.00, 100.00, 300.00, NULL, 'XL', 'Pink', '2022-04-16 03:34:46', '2022-04-16 03:34:46'),
(524, 591, 'PQwOwz8q9MrfC41RLju3UwFy3EitB7oqoGxCYB5e', 0, 1, 3650.00, 365.00, 3285.00, NULL, 'XXXL', NULL, '2022-04-20 06:42:38', '2022-04-20 06:42:38'),
(526, 591, 'PQwOwz8q9MrfC41RLju3UwFy3EitB7oqoGxCYB5e', 0, 1, 3650.00, 365.00, 3285.00, NULL, 'M', NULL, '2022-04-20 06:43:21', '2022-04-20 06:43:21'),
(528, 593, 'ntngrGuuqONufJQYoufVWdR88Z0d9O04Z944NfP1', 0, 2, 2250.00, 0.00, 2250.00, NULL, 'XXXL', 'Red', '2022-04-20 10:12:53', '2022-04-20 10:12:53'),
(529, 589, 'GElmttNgcFasUHygGK01rSPBuQdPdU3oDBGYvNtO', 1, 1, 2950.00, 0.00, 2950.00, NULL, 'M', 'Red', '2022-04-24 23:25:44', '2022-04-24 23:27:01'),
(530, 591, 'XMdTnEZv3fsYw6Y73P8OpgX7CKxhts9MUj4ikdAr', 0, 1, 3650.00, 365.00, 3285.00, NULL, NULL, NULL, '2022-04-25 00:30:15', '2022-04-25 00:30:15'),
(531, 589, 'XMdTnEZv3fsYw6Y73P8OpgX7CKxhts9MUj4ikdAr', 0, 1, 2950.00, 0.00, 2950.00, NULL, NULL, NULL, '2022-04-25 00:30:32', '2022-04-25 00:30:32'),
(535, 589, 'PuKxqA5E0G4lb0U6yXsvh6qkmFHfOW3K95ajFAz6', 0, 1, 2950.00, 0.00, 2950.00, NULL, NULL, 'Black', '2022-04-25 03:42:25', '2022-04-25 03:42:25'),
(536, 589, 'PuKxqA5E0G4lb0U6yXsvh6qkmFHfOW3K95ajFAz6', 0, 1, 2950.00, 0.00, 2950.00, NULL, NULL, 'Red', '2022-04-25 03:42:30', '2022-04-25 03:42:30'),
(537, 589, 'PuKxqA5E0G4lb0U6yXsvh6qkmFHfOW3K95ajFAz6', 0, 1, 2950.00, 0.00, 2950.00, NULL, NULL, 'White', '2022-04-25 03:42:34', '2022-04-25 03:42:34'),
(538, 589, 'PuKxqA5E0G4lb0U6yXsvh6qkmFHfOW3K95ajFAz6', 0, 1, 2950.00, 0.00, 2950.00, NULL, 'L', 'White', '2022-04-25 03:44:20', '2022-04-25 03:44:20'),
(539, 588, 'icND7w3KkXeO8TGUfkCFMb0awlyb8ryPDx4isPH5', 0, 1, 400.00, 100.00, 300.00, NULL, 'XXXL', 'Black', '2022-04-25 04:08:20', '2022-04-25 04:08:20'),
(540, 589, 'icND7w3KkXeO8TGUfkCFMb0awlyb8ryPDx4isPH5', 0, 1, 2950.00, 0.00, 2950.00, NULL, 'L', 'White', '2022-04-25 04:21:08', '2022-04-25 04:21:08'),
(544, 589, 'h67cRMCmFRE9kc1uKzVanRB4jidS7SFKVKtqBusw', 0, 1, 2950.00, 0.00, 2950.00, NULL, 'L', NULL, '2022-04-25 09:08:19', '2022-04-25 09:08:19'),
(548, 589, 'a0SfNi94hoFuqbgR1ZRs45Tc5nqSG9QbobjQO4Qp', 0, 1, 2950.00, 0.00, 2950.00, NULL, 'L', 'Red', '2022-04-25 10:51:42', '2022-04-25 10:51:42'),
(549, 592, 'a0SfNi94hoFuqbgR1ZRs45Tc5nqSG9QbobjQO4Qp', 0, 1, 2450.00, 0.00, 2450.00, NULL, 'XXXL', NULL, '2022-04-25 10:51:56', '2022-04-25 10:51:56'),
(550, 593, 'a0SfNi94hoFuqbgR1ZRs45Tc5nqSG9QbobjQO4Qp', 0, 1, 2250.00, 0.00, 2250.00, NULL, 'XXXL', 'White', '2022-04-25 10:52:10', '2022-04-25 10:52:10'),
(551, 589, 'a0SfNi94hoFuqbgR1ZRs45Tc5nqSG9QbobjQO4Qp', 0, 1, 2950.00, 0.00, 2950.00, NULL, 'L', 'White', '2022-04-25 10:59:04', '2022-04-25 10:59:04'),
(552, 593, 'bhmeWgLh3iQmxtnaDkti6GoDTFAzcvdfSlvGkaw0', 0, 1, 2250.00, 0.00, 2250.00, NULL, 'M', 'Red', '2022-06-23 06:05:45', '2022-06-23 06:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `site_reviews`
--

CREATE TABLE `site_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_reviews`
--

INSERT INTO `site_reviews` (`id`, `name`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mayuri Shukla', 'Superb Experience! Awesome Collection.! Excellent Customer Service.! Best Showroom. Staff support and customer service of both the showrooms are really good. Thank You', 1, '2022-03-28 02:47:28', '2022-03-28 02:47:28'),
(2, 'Mayuri Shukla', 'Superb Experience! Awesome Collection.! Excellent Customer Service.! Best Showroom. Staff support and customer service of both the showrooms are really good. Thank You', 1, '2022-03-28 02:47:40', '2022-03-28 02:47:40'),
(3, 'Didarul Islam AKand', 'Superb Experience! Awesome Collection.! Excellent Customer Service.! Best Showroom. Staff support and customer service of both the showrooms are really good. Thank You', 1, '2022-03-28 02:47:45', '2022-03-28 02:47:45'),
(4, 'Fuad Hossen', 'Superb Experience! Awesome Collection.! Excellent Customer Service.! Best Showroom. Staff support and customer service of both the showrooms are really good. Thank You', 1, '2022-03-28 02:47:49', '2022-03-28 02:47:49'),
(5, 'Nipon', 'Superb Experience! Awesome Collection.! Excellent Customer Service.! Best Showroom. Staff support and customer service of both the showrooms are really good. Thank You', 1, '2022-03-28 02:47:57', '2022-03-28 02:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `sl`, `url`, `image`, `place`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(87, 3, '', '87.webp', 'Header', 0, 2, '2022-01-26 06:50:44', '2022-04-25 03:53:09'),
(88, 2, '', '88.jpg', 'Header', 0, 2, '2022-04-20 04:53:41', '2022-04-25 03:53:20'),
(89, 2, 'http://localhost:8080/office/textmart/exchange-policy', '89.webp', 'Footer', 0, 2, '2022-04-25 03:54:07', '2022-04-25 03:54:07'),
(91, 4, NULL, '91.jpg', 'Footer', 0, 2, '2022-04-25 09:15:49', '2022-04-25 09:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_e_o_s`
--

CREATE TABLE `s_e_o_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_des` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `robots` text COLLATE utf8mb4_unicode_ci,
  `canonical` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `meta_image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms_use`
--

CREATE TABLE `terms_use` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_use`
--

INSERT INTO `terms_use` (`id`, `description`, `image`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Term &amp; Use', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

CREATE TABLE `thanas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `thana_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `district_id`, `thana_name`, `created_at`, `updated_at`) VALUES
(795, 157, 'Sea Beach', '2021-10-28 12:17:48', '2021-10-28 12:17:48'),
(796, 157, 'Chorpara', '2021-10-28 12:17:56', '2021-10-28 12:17:56'),
(797, 157, 'Jele Para', '2021-10-28 12:18:03', '2021-10-28 12:18:03'),
(798, 157, 'Alpha', '2021-10-28 12:18:09', '2021-10-28 12:18:09'),
(799, 157, 'C-Anchorage', '2021-10-28 12:18:15', '2021-10-28 12:18:15'),
(800, 157, 'B-Anchorage', '2021-10-28 12:18:21', '2021-10-28 12:18:21'),
(801, 157, 'karnaphuli', '2021-10-28 12:18:26', '2021-10-28 12:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(11, 124, 578, '2022-03-28 00:30:01', '2022-03-28 00:30:01'),
(12, 124, 577, '2022-03-28 00:30:03', '2022-03-28 00:30:03'),
(13, 124, 586, '2022-03-28 00:31:00', '2022-03-28 00:31:00'),
(14, 124, 581, '2022-03-28 00:31:01', '2022-03-28 00:31:01'),
(15, 124, 573, '2022-03-28 00:31:03', '2022-03-28 00:31:03'),
(16, 124, 574, '2022-03-28 00:56:21', '2022-03-28 00:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `zone_name`, `created_at`, `updated_at`) VALUES
(1, 'Inside Dhaka', '2022-01-25 10:48:00', '2022-01-25 10:48:00'),
(2, 'Outside Dhaka', '2022-01-25 10:48:07', '2022-01-25 10:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `zone_districts`
--

CREATE TABLE `zone_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminmainmenu`
--
ALTER TABLE `adminmainmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminsubmenu`
--
ALTER TABLE `adminsubmenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminsubmenu_mainmenuid_foreign` (`mainmenuId`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_infos`
--
ALTER TABLE `career_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cod_us`
--
ALTER TABLE `cod_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_policy`
--
ALTER TABLE `cookie_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createadmin`
--
ALTER TABLE `createadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_order_infos`
--
ALTER TABLE `current_order_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `current_order_infos_district_id_foreign` (`district_id`),
  ADD KEY `current_order_infos_thana_id_foreign` (`thana_id`);

--
-- Indexes for table `customer_messages`
--
ALTER TABLE `customer_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_infos`
--
ALTER TABLE `delivery_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_banner`
--
ALTER TABLE `discount_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_requests`
--
ALTER TABLE `exchange_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `explore_banners`
--
ALTER TABLE `explore_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_balance_sheet`
--
ALTER TABLE `invoice_balance_sheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_transaction`
--
ALTER TABLE `invoice_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_control`
--
ALTER TABLE `offer_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_setups`
--
ALTER TABLE `offer_setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_payment_details`
--
ALTER TABLE `online_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_system_control`
--
ALTER TABLE `payment_system_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productstocks`
--
ALTER TABLE `productstocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color_infos`
--
ALTER TABLE `product_color_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_company`
--
ALTER TABLE `product_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_item`
--
ALTER TABLE `product_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_measurement`
--
ALTER TABLE `product_measurement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_measurement_subunit`
--
ALTER TABLE `product_measurement_subunit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_productinfo`
--
ALTER TABLE `product_productinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review_images`
--
ALTER TABLE `product_review_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size_infos`
--
ALTER TABLE `product_size_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasing_policy`
--
ALTER TABLE `purchasing_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_policy`
--
ALTER TABLE `return_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_policy`
--
ALTER TABLE `seller_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_zone`
--
ALTER TABLE `seller_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_reviews`
--
ALTER TABLE `site_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_use`
--
ALTER TABLE `terms_use`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanas`
--
ALTER TABLE `thanas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `createadmin`
--
ALTER TABLE `createadmin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `current_order_infos`
--
ALTER TABLE `current_order_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_messages`
--
ALTER TABLE `customer_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `delivery_infos`
--
ALTER TABLE `delivery_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `discount_banner`
--
ALTER TABLE `discount_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchange_requests`
--
ALTER TABLE `exchange_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `explore_banners`
--
ALTER TABLE `explore_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `invoice_balance_sheet`
--
ALTER TABLE `invoice_balance_sheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `invoice_transaction`
--
ALTER TABLE `invoice_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_control`
--
ALTER TABLE `offer_control`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_setups`
--
ALTER TABLE `offer_setups`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_payment_details`
--
ALTER TABLE `online_payment_details`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_system_control`
--
ALTER TABLE `payment_system_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productstocks`
--
ALTER TABLE `productstocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_color_infos`
--
ALTER TABLE `product_color_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_company`
--
ALTER TABLE `product_company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `product_item`
--
ALTER TABLE `product_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `product_measurement`
--
ALTER TABLE `product_measurement`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_measurement_subunit`
--
ALTER TABLE `product_measurement_subunit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_productinfo`
--
ALTER TABLE `product_productinfo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_review_images`
--
ALTER TABLE `product_review_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `product_size_infos`
--
ALTER TABLE `product_size_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchasing_policy`
--
ALTER TABLE `purchasing_policy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_policy`
--
ALTER TABLE `return_policy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_policy`
--
ALTER TABLE `seller_policy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_zone`
--
ALTER TABLE `seller_zone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `site_reviews`
--
ALTER TABLE `site_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms_use`
--
ALTER TABLE `terms_use`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thanas`
--
ALTER TABLE `thanas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=802;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
