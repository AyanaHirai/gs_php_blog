-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 20 日 03:27
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_blog`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_content_table`
--

CREATE TABLE `gs_content_table` (
  `id` int(12) NOT NULL,
  `title` varchar(64) NOT NULL COMMENT '記事のタイトル',
  `content` varchar(256) NOT NULL COMMENT '記事の内容',
  `img` varchar(256) DEFAULT NULL COMMENT '画像のPATH',
  `date` datetime NOT NULL COMMENT '登録日',
  `update_time` datetime DEFAULT NULL COMMENT '更新日（NULL許容）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='記事のテーブル';

--
-- テーブルのデータのダンプ `gs_content_table`
--

INSERT INTO `gs_content_table` (`id`, `title`, `content`, `img`, `date`, `update_time`) VALUES
(39, 'number suger', '日持ち◎、嵩張らない', '20230114102927_number_suger_029-720x430.jpg', '2023-01-14 18:29:27', '2023-01-17 22:13:21'),
(41, 'おかし', 'チューリップ', '20230117141630_main.jpg', '2023-01-17 22:16:30', '2023-01-17 22:43:11'),
(42, 'kkoko', 'okok', '20230117144504_210227ginzaamakunai3.jpg', '2023-01-17 22:45:04', NULL),
(44, 'vvv', 'nnn', '20230117144741_Oggi_1712_232-4.jpg', '2023-01-17 22:47:41', '2023-01-17 22:58:45'),
(45, 'iio', 'eed', '20230117144851_055F-186.jpg', '2023-01-17 22:48:51', NULL),
(46, 'ミルフィーユ', '焼き菓子', '20230118145310_201219remotetemiyage1.jpg', '2023-01-18 22:53:10', NULL),
(47, 'asdiu', 'jsdofhdou', '20230118145627_img_06.jpg', '2023-01-18 22:56:27', NULL),
(48, 'kkokkkk', 'kkkkkjkjk', '20230118145845_block1_main_image.jpg', '2023-01-18 22:58:45', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', '$2y$10$amJsJbnjco8Gyz9bytkawOgWcKDu2PC/hf6daAkGYFZ35nmoq1ETu', 1, 0),
(2, 'テスト2一般', 'test2', '$2y$10$Jrod7Xts/VPa0ThZhT33AedMO7D2rHLA.qqDLqYGvimBqsP5Xliia', 0, 0),
(3, 'テスト３', 'test3', '$2y$10$hT8NciYWQ3.lO0QLfz1UHOySxqHYFVN3f3p2tTLQKiIgw0kBvO6g.', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_content_table`
--
ALTER TABLE `gs_content_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_content_table`
--
ALTER TABLE `gs_content_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- テーブルの AUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
