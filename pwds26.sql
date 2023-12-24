-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2023 at 05:48 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwds26`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `image`, `status`) VALUES
(1, 'Mr.Admin', 'admin@gmail.com', '$2y$10$lHr0o4/Sax0KVs/gw0Lh/utxvrMgBTtzNeBVEXtkVezIVeBiKKFAa', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(9, 'যুক্তরাষ্ট্র', 'যুক্তরাষ্ট্র'),
(10, 'bangladesh', 'bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int NOT NULL,
  `category_id` bigint NOT NULL,
  `admin_id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `category_id`, `admin_id`, `title`, `slug`, `description`, `image`, `status`, `created_at`) VALUES
(13, 9, 1, 'কলোরাডোর প্রাইমারিতে ট্রাম্পকে অযোগ্য ঘোষণা', 'কলোরাডোর-প্রাইমারিতে-ট্রাম্পকে-অযোগ্য-ঘোষণা', '<div id=\"aefe5d06-a0b8-4200-bf72-50683bfdcbc5\" style=\"color: rgb(0, 0, 0); font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 18px;\"><div class=\"storyCard eyOoS\" style=\"--borderColor: var(--primaryColor); color: var(--black); font-size: var(--fs-13); margin: var(--space2_4) auto 0; max-width: 622px;\"><div class=\"   \r\n                  story-element\" style=\"margin-bottom: var(--space1_6);\"><div class=\"story-element story-element-text\" style=\"margin: 0px auto; max-width: 622px; padding: 0px;\"><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">যুক্তরাষ্ট্রের কলোরাডোর সুপ্রিম কোর্ট এক আদেশে বলেছেন, আগামী বছর অঙ্গরাজ্যটিতে অনুষ্ঠেয় মার্কিন প্রেসিডেন্ট নির্বাচনের প্রাইমারিতে ডোনাল্ড ট্রাম্প অংশ নিতে পারবেন না। </p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">গতকাল মঙ্গলবার কলোরাডো সুপ্রিম কোর্টের সাত বিচারপতির বেঞ্চের সংখ্যাগরিষ্ঠ মতের (৪-৩) ভিত্তিতে দেওয়া এ রুলে বলা হয়, সাবেক মার্কিন প্রেসিডেন্ট ট্রাম্প যোগ্য প্রার্থী নন। </p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">যুগান্তকারী এ সিদ্ধান্ত দেওয়ার ক্ষেত্রে কলোরাডো সুপ্রিম কোর্ট মার্কিন সংবিধানে থাকা বিদ্রোহসংক্রান্ত একটি ধারার কথা উল্লেখ করেছেন। এটি মার্কিন সংবিধানের চতুর্দশ সংশোধনীর ৩ নম্বর ধারা। </p></div></div><div class=\"   \r\n                  story-element\" style=\"margin-bottom: var(--space1_6);\"><div class=\"story-element story-element-text story-element-text-also-read\" style=\"margin: 0px auto; max-width: 622px; padding: 0px;\"><span class=\"also-read lDfA5\"><div class=\"also-read-text\" style=\"color: var(--scorpion); font-size: var(--fs-16); font-weight: var(--bold); margin-bottom: var(--space0_8);\">আরও পড়ুন</div><a target=\"_self\" aria-label=\"world/usa/iay8n7je1l\" class=\"card-with-image-zoom _-2jpv\" href=\"https://www.prothomalo.com/world/usa/iay8n7je1l\" style=\"color: inherit; align-items: flex-start; border: 1px solid var(--border-color); display: flex; justify-content: space-between; margin-bottom: var(--space1_6); padding: var(--space1_2) var(--space1_6) var(--space2_4);\"><h2 style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; transition: color var(--trans-duration);\">২০২৪ সালের নির্বাচনে শেষবার লড়বেন ট্রাম্প</h2><div></div></a></span></div></div></div><div><div class=\"print-adslot adsBox _4Pk8L _0Zwdj\" style=\"padding: var(--space2_0) 0; margin: auto;\"><div data-lang=\"বিজ্ঞাপন\" class=\"dfp-ad-unit Tlph-\" style=\"position: relative; margin: auto; background-color: var(--ad-bg-color); height: 250px; width: 300px; z-index: var(--default);\"><div class=\"adunitContainer\"><div class=\" adBox\" id=\"News_InArticle_300x250-bb1df7f3-99fb-4f4d-9053-de997122cefe-0-0\" data-google-query-id=\"COzGvuWmnYMDFVSVZgIdFMUCGw\" style=\"text-align: center;\"><div id=\"google_ads_iframe_85406138/News_InArticle_300x250_0__container__\" style=\"border: 0pt none;\"><iframe id=\"google_ads_iframe_85406138/News_InArticle_300x250_0\" name=\"google_ads_iframe_85406138/News_InArticle_300x250_0\" title=\"3rd party ad content\" width=\"300\" height=\"250\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" role=\"region\" aria-label=\"Advertisement\" tabindex=\"0\" allow=\"attribution-reporting\" data-google-container-id=\"8\" data-load-complete=\"true\" style=\"border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div></div></div></div></div><div id=\"38742328-bf23-4323-948e-fae4549ab701\" style=\"color: rgb(0, 0, 0); font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 18px;\"><div class=\"storyCard eyOoS\" style=\"--borderColor: var(--primaryColor); color: var(--black); font-size: var(--fs-13); margin: var(--space2_4) auto 0; max-width: 622px;\"><div class=\"   \r\n                  story-element\" style=\"margin-bottom: var(--space1_6);\"><div class=\"story-element story-element-text\" style=\"margin: 0px auto; max-width: 622px; padding: 0px;\"><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">যুক্তরাষ্ট্রের ইতিহাসে এই প্রথম কোনো প্রেসিডেন্ট পদপ্রার্থীকে নির্বাচনে অযোগ্য ঘোষণা করতে ধারাটি ব্যবহার করা হলো।</p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">প্রেসিডেন্ট নির্বাচন থেকে ট্রাম্পকে দূরে রাখতে আগে বিভিন্ন অঙ্গরাজ্যে বেশ কয়টি আইনগত পদক্ষেপ নেওয়া হয়েছিল। কিন্তু সবই ব্যর্থ হয়।</p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">কলোরাডো সুপ্রিম কোর্টের আদেশ এ অঙ্গরাজ্যের বাইরে প্রযোজ্য হবে না।</p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">আগামী ৫ মার্চ কলোরাডো অঙ্গরাজ্যে রিপাবলিকান পার্টির প্রাইমারি হবে। এতে অঙ্গরাজ্যের রিপাবলিকান ভোটাররা প্রেসিডেন্ট পদে মনোনয়নের জন্য তাঁদের পছন্দের প্রার্থী বেছে নেবেন। অঙ্গরাজ্যের এ প্রাইমারির ক্ষেত্রে কলোরাডো সুপ্রিম কোর্টের আদেশটি প্রযোজ্য হবে। সে ক্ষেত্রে আগামী বছরের নভেম্বরে অনুষ্ঠেয় মার্কিন প্রেসিডেন্ট নির্বাচনে কলোরাডো সুপ্রিম কোর্টের এ আদেশের প্রভাব পড়তে পারে।</p></div></div><div class=\"   \r\n                  story-element\" style=\"margin-bottom: var(--space1_6);\"><div class=\"story-element story-element-text story-element-text-also-read\" style=\"margin: 0px auto; max-width: 622px; padding: 0px;\"><span class=\"also-read lDfA5\"><div class=\"also-read-text\" style=\"color: var(--scorpion); font-size: var(--fs-16); font-weight: var(--bold); margin-bottom: var(--space0_8);\">আরও পড়ুন</div><a target=\"_self\" aria-label=\"world/usa/yc1a1or8jt\" class=\"card-with-image-zoom _-2jpv\" href=\"https://www.prothomalo.com/world/usa/yc1a1or8jt\" style=\"color: inherit; align-items: flex-start; border: 1px solid var(--border-color); display: flex; justify-content: space-between; margin-bottom: var(--space1_6); padding: var(--space1_2) var(--space1_6) var(--space2_4);\"><h2 style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; transition: color var(--trans-duration);\">ট্রাম্প কি প্রেসিডেন্ট নির্বাচন করতে পারবেন</h2><div></div></a></span></div></div></div><div><div class=\"print-adslot adsBox n5kiG\"><div data-lang=\"বিজ্ঞাপন\" class=\"dfp-ad-unit \" style=\"margin: auto; background-color: initial;\"><div class=\"adunitContainer\"><div class=\"AV63da4154806c125548059f08\" style=\"width: 640px; margin: 0px auto; max-width: 640px;\"><div id=\"aniBox\" style=\"overflow: hidden; transition: height 1s ease 0s; opacity: 0; width: 320px; height: 1px;\"><div id=\"aniplayer_AV63da4154806c125548059f08-1703050840833\" style=\"bottom: 115px; left: 0px; transform-origin: left bottom; z-index: 10000001; position: fixed; visibility: hidden;\"><div id=\"aniplayer_AV63da4154806c125548059f08-1703050840833gui\"><div id=\"av-caption\" style=\"line-height: 18px; position: relative; text-align: center; width: 320px;\"><div id=\"av-close-btn-overlay\" class=\"av-pos-Default\" style=\"display: inline-block; position: relative; vertical-align: top; z-index: 9999999; float: right;\"><div id=\"av-close-btn\" style=\"background-color: rgba(0, 0, 0, 0.4); background-image: url(&quot;data:image/svg+xml;charset=utf-8,%3Csvg xmlns=%27http://www.w3.org/2000/svg%27 xml:space=%27preserve%27 width=%2723%27 height=%2723%27 viewBox=%270 0 22.677 22.677%27%3E%3Cpath fill=%27%23fff%27 fill-rule=%27evenodd%27 d=%27m19.346 5.421-2.09-2.089-5.918 5.918L5.42 3.332 3.332 5.421l5.918 5.917-5.918 5.919 2.088 2.088 5.918-5.918 5.918 5.918 2.09-2.088-5.918-5.919z%27 clip-rule=%27evenodd%27/%3E%3C/svg%3E&quot;); background-position: 50% center; background-repeat: no-repeat; background-size: 60%; border: none; height: 18px; left: 0px; position: static; top: 0px; transition: all 0.15s ease-in-out 0s; width: 18px; z-index: 9999999;\"></div></div><span id=\"av-label\" style=\"color: rgb(187, 187, 187); display: inline-block; font-family: Helvetica, Arial, fallback, sans-serif; font-size: 9px; line-height: 10px; margin: 0px; padding: 4px; text-transform: uppercase; vertical-align: top; z-index: 83;\"></span></div><div id=\"av-container\" class=\" av-desktop hide-controls\" style=\"height: 180px; margin: 0px; overflow: hidden; pointer-events: auto; position: relative; text-align: initial; width: 320px;\"><div id=\"av-inner\" style=\"position: absolute; height: 180px; left: 0px; top: 0px; width: 320px;\"><div id=\"slot\" style=\"position: absolute; box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 0px 1px inset; height: 180px; width: 320px;\"><div id=\"imgpreloader\" style=\"position: static;\"></div><div id=\"preloader\" style=\"position: absolute; inset: 0px; height: 0px; margin: auto; outline: none; width: 0px;\"><svg class=\"avicon\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\" viewBox=\"0 0 30 30\" xml:space=\"preserve\"><g><path d=\"M23.3,14.9c0-0.4-0.3-0.9-0.8-1.2l-10-6.4c-1.1-0.7-2-0.1-2,1.3v7.5C15.8,13.7,23.1,14.9,23.3,14.9z M23.3,15 c-7.9,0.6-11.4,3.5-12.8,5.7v0.8c0,1.4,0.9,2,2,1.3l10-6.4C23.1,16,23.4,15.5,23.3,15z\"></path></g></svg><svg class=\"avcircle\" width=\"70\" height=\"70\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\"><circle cx=\"35\" cy=\"35\" r=\"32\"></circle></svg><svg class=\"avcircle active\" width=\"70\" height=\"70\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\"><circle cx=\"35\" cy=\"35\" r=\"32\"></circle></svg></div><div id=\"videoslot\" class=\"loaded\" style=\"position: absolute; inset: 90px 0px 0px; object-fit: fill; opacity: 1; transform: translateY(-50%); width: 320px; animation: 0.5s ease 0s 1 normal none running fade-in; background-color: rgb(0, 0, 0); height: 180px;\"></div></div><div id=\"gui\" style=\"position: static;\"><div id=\"buttons\" style=\"position: absolute; display: flex; opacity: 0; bottom: 0px; justify-content: space-between; left: 0px; padding: 0px 13px 11px; right: 0px; transition: all 0.15s ease-in-out 0s;\"><div id=\"left\" style=\"position: static; height: 24px;\"></div><div id=\"right\" style=\"position: static; height: 24px; right: 13px;\"></div></div><div id=\"aniview-credit\" style=\"left: 5px; top: 2px; right: 2px; position: absolute; color: rgb(255, 255, 255); font-family: Helvetica, Arial, fallback, sans-serif; font-size: 11px; height: 24px; line-height: 24px; cursor: pointer; display: inline;\"><span style=\"background-image: url(&quot;https://assets.prothomalo.com/prothomalo/assets/default-9cdca736f114c54b34fe.svg&quot;); background-repeat: no-repeat; background-size: cover; display: inline-block; height: 24px; vertical-align: top; width: 24px;\"></span></div><div id=\"ad-icon\" style=\"position: static;\"></div></div></div></div></div><div id=\"anibid\"></div></div></div></div><div class=\" adBox\" id=\"mcanvas1x1-bb1df7f3-99fb-4f4d-9053-de997122cefe-0-0\" data-google-query-id=\"CKOQv-WmnYMDFZKKZgIdIS0Avg\" style=\"text-align: center;\"><div id=\"google_ads_iframe_85406138/mCanvas_1x1_0__container__\" style=\"border: 0pt none;\"><iframe id=\"google_ads_iframe_85406138/mCanvas_1x1_0\" name=\"google_ads_iframe_85406138/mCanvas_1x1_0\" title=\"3rd party ad content\" width=\"1\" height=\"1\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" role=\"region\" aria-label=\"Advertisement\" tabindex=\"0\" allow=\"attribution-reporting\" data-google-container-id=\"9\" data-load-complete=\"true\" style=\"border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div></div></div></div></div><div id=\"029ce20b-2a84-47b6-9b46-b66e9b96e903\" style=\"color: rgb(0, 0, 0); font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 18px;\"><div class=\"storyCard eyOoS\" style=\"--borderColor: var(--primaryColor); color: var(--black); font-size: var(--fs-13); margin: var(--space2_4) auto 0; max-width: 622px;\"><div class=\"   \r\n                  story-element\" style=\"margin-bottom: var(--space1_6);\"><div class=\"story-element story-element-text\" style=\"margin: 0px auto; max-width: 622px; padding: 0px;\"><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">আদেশে কলোরাডোর সর্বোচ্চ আদালত বলেন, তাঁরা হালকাভাবে এই সিদ্ধান্তে পৌঁছাননি। তাঁরা তাঁদের সামনে থাকা প্রশ্নগুলোর মাত্রা ও গুরুত্ব সম্পর্কে সচেতন। তাঁরা একইভাবে আইন প্রয়োগের ক্ষেত্রে তাঁদের গৌরবময় দায়িত্ব সম্পর্কে সচেতন।</p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">এর আগে কলোরাডোর একটি নিম্ন আদালতের বিচারক এক রুলে বলেছিলেন, মার্কিন সংবিধানের চতুর্দশ সংশোধনীর বিদ্রোহসংক্রান্ত এ ধারা প্রেসিডেন্টদের ক্ষেত্রে প্রযোজ্য হবে না। তবে অঙ্গরাজ্যটির সুপ্রিম কোর্ট এখন তা প্রয়োগ করলেন।</p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">অবশ্য কলোরাডোর একই বিচারিক আদালতের পর্যবেক্ষণ ছিল, ২০২১ সালের ৬ জানুয়ারি ক্যাপিটল ভবনে দাঙ্গার দিন ট্রাম্প একটি বিদ্রোহে অংশ নিয়েছিলেন।</p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">২০২১ সালের ৬ জানুয়ারি মার্কিন কংগ্রেস যখন প্রেসিডেন্ট নির্বাচনে জো বাইডেনের বিজয় সত্যায়ন করছিল, তখন ট্রাম্পের সমর্থকেরা ক্যাপিটল ভবনে (কংগ্রেস ভবন) হামলা চালিয়েছিলেন।</p></div></div><div class=\"   \r\n                  story-element\" style=\"margin-bottom: var(--space1_6);\"><div class=\"story-element story-element-text story-element-text-also-read\" style=\"margin: 0px auto; max-width: 622px; padding: 0px;\"><span class=\"also-read lDfA5\"><div class=\"also-read-text\" style=\"color: var(--scorpion); font-size: var(--fs-16); font-weight: var(--bold); margin-bottom: var(--space0_8);\">আরও পড়ুন</div><a target=\"_self\" aria-label=\"world/usa/qsouf8q86f\" class=\"card-with-image-zoom _-2jpv\" href=\"https://www.prothomalo.com/world/usa/qsouf8q86f\" style=\"color: inherit; align-items: flex-start; border: 1px solid var(--border-color); display: flex; justify-content: space-between; margin-bottom: var(--space1_6); padding: var(--space1_2) var(--space1_6) var(--space2_4);\"><h2 style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; transition: color var(--trans-duration);\">নির্বাচনের আগেই শুরু হবে ডোনাল্ড ট্রাম্পের বিচার</h2><div></div></a></span></div></div></div></div><div id=\"10f61bac-b48f-4e9a-8c34-f6d416e41ebf\" style=\"color: rgb(0, 0, 0); font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 18px;\"><div class=\"storyCard eyOoS\" style=\"--borderColor: var(--primaryColor); color: var(--black); font-size: var(--fs-13); margin: var(--space2_4) auto 0; max-width: 622px;\"><div class=\"   \r\n                  story-element\" style=\"margin-bottom: var(--space1_6);\"><div class=\"story-element story-element-text\" style=\"margin: 0px auto; max-width: 622px; padding: 0px;\"><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">কলোরাডো সুপ্রিম কোর্টের সিদ্ধান্তটি অন্তত আগামী বছরের ৪ জানুয়ারি পর্যন্ত কার্যকর হবে না। কলোরাডোয় প্রাইমারির ব্যালট ছাপানোর জন্য নির্ধারিত সময়সীমার আগের দিন ৪ জানুয়ারি।</p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">কলোরাডো সুপ্রিম কোর্টের সিদ্ধান্ত ঘোষণার পর ট্রাম্পের প্রচার দলের মুখপাত্র স্টিভেন চেউং একটি বিবৃতি দিয়েছেন। বিবৃতিতে তিনি এ সিদ্ধান্তকে ‘পুরোপুরি ত্রুটিপূর্ণ’ বলে অভিহিত করেছেন। বিচারপতিদের সমালোচনা করে তিনি বলেছেন, তাঁরা সবাই ডেমোক্রেটিক গভর্নর কর্তৃক নিযুক্ত।</p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces;\">স্টিভেন চেউং জানিয়েছেন, কলোরাডো সুপ্রিম কোর্টের এ সিদ্ধান্তের বিরুদ্ধে ট্রাম্পের আইনি দল মার্কিন সুপ্রিম কোর্টে দ্রুত আপিল করবে।</p></div></div><div class=\"   \r\n                  story-element\" style=\"margin-bottom: var(--space1_6);\"><div class=\"story-element story-element-text story-element-text-also-read\" style=\"margin: 0px auto; max-width: 622px; padding: 0px;\"><span class=\"also-read lDfA5\"><div class=\"also-read-text\" style=\"color: var(--scorpion); font-size: var(--fs-16); font-weight: var(--bold); margin-bottom: var(--space0_8);\">আরও পড়ুন</div></span></div></div></div></div>', 'upload/post658289f19c4cd1703053809.webp', 1, '2023-12-20 00:30:09'),
(14, 9, 1, '‘বিরোধী দল খোঁজার’ নির্বাচন হচ্ছে: সাখাওয়াত হোসেন', '‘বিরোধী-দল-খোঁজার’-নির্বাচন-হচ্ছে:-সাখাওয়াত-হোসেন', '<p style=\"font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces; color: rgb(18, 18, 18);\">দ্বাদশ জাতীয় সংসদ নির্বাচনকে ‘বিরোধী দল খোঁজার’ প্রক্রিয়া বলে মন্তব্য করেছেন সাবেক নির্বাচন কমিশনার ব্রিগেডিয়ার জেনারেল (অব.) এম সাখাওয়াত হোসেন। তিনি বলেন, ‘সিট (আসন) ভিক্ষা করার রাজনীতি চলছে। ২৬ দল নির্বাচনে অংশ নিচ্ছে, তাদের ১৩টি দলের নামও কেউ বলতে পারবে না। আসন ভাগাভাগির পর সরকারি দলের ২৪০ আসন নিশ্চিত।’</p><p style=\"font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces; color: rgb(18, 18, 18);\">আজ বুধবার রাজধানীর একটি হোটেলে আয়োজিত ‘ক্রান্তিকালে বাংলাদেশ: নির্বাচন, অর্থনীতি এবং বহিঃসম্পর্ক’ শীর্ষক আলোচনা অনুষ্ঠানে সাখাওয়াত হোসেন এসব কথা বলেন।</p><p style=\"font-family: Shurjo, SolaimanLipi, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; white-space-collapse: break-spaces; color: rgb(18, 18, 18);\">অনুষ্ঠানের আয়োজন করে সেন্টার ফর গভর্ন্যান্স স্টাডিজ (সিজিএস)। অনুষ্ঠানে আলোচক হিসেবে অংশ</p>', 'upload/post6582b0079f9f21703063559.jpg', 1, '2023-12-20 09:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `name`, `slug`) VALUES
(9, 'যুক্তরাষ্ট্র', 'যুক্তরাষ্ট্র'),
(10, 'bangladesh', 'bangladesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id_index` (`category_id`),
  ADD KEY `adminidindex` (`admin_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_tag_post_id_tag_id_index` (`post_id`,`tag_id`),
  ADD KEY `post_tag_post_id_index` (`post_id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`),
  ADD KEY `tagindex` (`tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
