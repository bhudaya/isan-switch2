-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.10-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             7.0.0.4343
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_isanremitt.t_remittance
DROP TABLE IF EXISTS `t_remittance`;
CREATE TABLE IF NOT EXISTS `t_remittance` (
  `trxid` varchar(20) NOT NULL,
  `data` text,
  `status` char(1) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `last_user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`trxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table db_isanremitt.t_remittance: ~141 rows (approximately)
DELETE FROM `t_remittance`;
/*!40000 ALTER TABLE `t_remittance` DISABLE KEYS */;
INSERT INTO `t_remittance` (`trxid`, `data`, `status`, `last_update`, `last_user`) VALUES
	('201602250517215620', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 05:17:21', 'admin'),
	('201602250520135008', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 05:20:13', 'admin'),
	('201602250521369996', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 05:21:36', 'admin'),
	('201602250847541135', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 08:47:54', 'admin'),
	('201602250849464409', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 08:49:46', 'admin'),
	('201602250851204163', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 08:51:20', 'admin'),
	('201602250933171143', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:33:17', 'admin'),
	('201602250934419901', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:34:41', 'admin'),
	('201602250937291227', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:37:29', 'admin'),
	('201602250937354970', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:37:35', 'admin'),
	('201602250938145363', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:38:14', 'admin'),
	('201602250948591281', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:48:59', 'admin'),
	('201602250950332945', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:50:33', 'admin'),
	('201602250950422280', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:50:42', 'admin'),
	('201602250950468393', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:50:46', 'admin'),
	('201602250951121578', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:51:12', 'admin'),
	('201602250953163409', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:53:16', 'admin'),
	('201602250954361804', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 09:54:36', 'admin'),
	('201602251002562310', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 10:02:56', 'admin'),
	('201602251003552224', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 10:03:55', 'admin'),
	('201602251005355161', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 10:05:35', 'admin'),
	('201602251005435726', 'username=bhudaya%40yahoo.com&product_code=123456', '0', '2016-02-25 10:05:43', 'admin'),
	('201602251006576188', 'username=bhudaya%40yahoo.comxxx&product_code=123456', '0', '2016-02-25 10:06:57', 'admin'),
	('201602251007304187', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:07:30', 'admin'),
	('201602251013124433', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:13:12', 'admin'),
	('201602251017085188', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:17:08', 'admin'),
	('201602251017115329', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:17:11', 'admin'),
	('201602251017125630', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:17:12', 'admin'),
	('201602251017133150', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:17:13', 'admin'),
	('201602251017142271', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:17:14', 'admin'),
	('201602251017151772', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:17:15', 'admin'),
	('201602251033268287', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:33:26', 'admin'),
	('201602251034583720', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:34:58', 'admin'),
	('201602251035285767', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:35:28', 'admin'),
	('201602251037112946', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:37:11', 'admin'),
	('201602251038511133', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:38:51', 'admin'),
	('201602251038528464', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:38:52', 'admin'),
	('201602251038537844', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:38:53', 'admin'),
	('201602251039596972', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:39:59', 'admin'),
	('201602251040010653', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:40:01', 'admin'),
	('201602251040122669', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:40:12', 'admin'),
	('201602251041074741', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:41:07', 'admin'),
	('201602251042095136', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-25 10:42:09', 'admin'),
	('201602260336500469', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:36:50', 'admin'),
	('201602260344125642', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:44:12', 'admin'),
	('201602260344185256', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:44:18', 'admin'),
	('201602260344493503', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:44:49', 'admin'),
	('201602260344514225', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:44:51', 'admin'),
	('201602260344522295', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:44:52', 'admin'),
	('201602260344530496', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:44:53', 'admin'),
	('201602260346154553', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:46:15', 'admin'),
	('201602260346179864', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:46:17', 'admin'),
	('201602260347486606', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:47:48', 'admin'),
	('201602260347497117', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:47:49', 'admin'),
	('201602260348220855', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:48:22', 'admin'),
	('201602260348234476', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:48:23', 'admin'),
	('201602260348413486', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:48:41', 'admin'),
	('201602260349188238', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:49:18', 'admin'),
	('201602260349199388', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:49:19', 'admin'),
	('201602260352239513', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:52:23', 'admin'),
	('201602260352249674', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:52:24', 'admin'),
	('201602260352270115', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:52:27', 'admin'),
	('201602260352281346', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:52:28', 'admin'),
	('201602260357466538', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:57:46', 'admin'),
	('201602260358208098', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:58:20', 'admin'),
	('201602260358219568', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:58:21', 'admin'),
	('201602260358230449', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:58:23', 'admin'),
	('201602260358251900', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:58:25', 'admin'),
	('201602260358260011', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:58:26', 'admin'),
	('201602260358280272', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:58:28', 'admin'),
	('201602260358288722', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:58:28', 'admin'),
	('201602260358345265', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:58:34', 'admin'),
	('201602260358356806', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 03:58:35', 'admin'),
	('201602260407166904', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 04:07:16', 'admin'),
	('201602260444032606', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 04:44:03', 'admin'),
	('201602260444072078', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 04:44:07', 'admin'),
	('201602260444150593', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 04:44:15', 'admin'),
	('201602260636469405', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:36:46', 'admin'),
	('201602260638082351', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:38:08', 'admin'),
	('201602260652580070', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:52:58', 'admin'),
	('201602260653049464', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:53:04', 'admin'),
	('201602260653061865', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:53:06', 'admin'),
	('201602260653072315', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:53:07', 'admin'),
	('201602260654488784', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:54:48', 'admin'),
	('201602260657217621', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:57:21', 'admin'),
	('201602260657251623', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:57:25', 'admin'),
	('201602260657261334', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:57:26', 'admin'),
	('201602260658081868', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:58:08', 'admin'),
	('201602260658099639', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:58:09', 'admin'),
	('201602260658109099', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:58:10', 'admin'),
	('201602260658118150', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:58:11', 'admin'),
	('201602260658127140', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:58:12', 'admin'),
	('201602260658136651', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:58:13', 'admin'),
	('201602260658147331', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 06:58:14', 'admin'),
	('201602260701507955', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 07:01:50', 'admin'),
	('201602260701518926', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 07:01:51', 'admin'),
	('201602260701527426', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 07:01:52', 'admin'),
	('201602260701535207', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 07:01:53', 'admin'),
	('201602260701544097', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 07:01:54', 'admin'),
	('201602260701553498', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 07:01:55', 'admin'),
	('201602260704195810', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 07:04:19', 'admin'),
	('201602260707398595', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-26 07:07:39', 'admin'),
	('201602270304199523', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:04:19', 'admin'),
	('201602270306045683', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:06:04', 'admin'),
	('201602270306072225', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:06:07', 'admin'),
	('201602270306082525', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:06:08', 'admin'),
	('201602270306093946', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:06:09', 'admin'),
	('201602270306102147', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:06:10', 'admin'),
	('201602270306418365', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:06:41', 'admin'),
	('201602270312164564', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:12:16', 'admin'),
	('201602270312179595', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:12:17', 'admin'),
	('201602270312190376', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:12:19', 'admin'),
	('201602270312201946', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:12:20', 'admin'),
	('201602270313308487', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:13:30', 'admin'),
	('201602270341197081', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:41:19', 'admin'),
	('201602270341219803', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:41:21', 'admin'),
	('201602270341244194', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:41:24', 'admin'),
	('201602270342345724', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:42:34', 'admin'),
	('201602270342361625', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:42:36', 'admin'),
	('201602270342566957', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:42:56', 'admin'),
	('201602270342597018', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:42:59', 'admin'),
	('201602270343532099', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:43:53', 'admin'),
	('201602270343546540', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:43:54', 'admin'),
	('201602270345421381', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:45:42', 'admin'),
	('201602270346005282', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:46:00', 'admin'),
	('201602270346018353', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:46:01', 'admin'),
	('201602270351236907', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 03:51:23', 'admin'),
	('201602270405475511', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 04:05:47', 'admin'),
	('201602270415383839', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 04:15:38', 'admin'),
	('201602270415396839', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 04:15:39', 'admin'),
	('201602270415406930', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 04:15:40', 'admin'),
	('201602270415584430', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 04:15:58', 'admin'),
	('201602270742426087', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-27 07:42:42', 'admin'),
	('201602290446240330', 'username=bhudaya%40yahoo.comxxx&product_code=12345678', '0', '2016-02-29 04:46:24', 'admin'),
	('201602290456191430', 'username=bhudaya%40yahoo.comxxx&product_code=12345678&merchant_code=010101', '0', '2016-02-29 04:56:19', 'admin'),
	('201602290458227471', 'username=bhudaya%40yahoo.comxxx&product_code=12345678&merchant_code=010101', '0', '2016-02-29 04:58:22', 'admin'),
	('201602291251541651', 'username=bhudaya%40yahoo.comxxx&product_code=12345678&merchant_code=010101', '0', '2016-02-29 12:51:54', 'admin'),
	('201602291251542432', 'username=bhudaya%40yahoo.comxxx&product_code=12345678&merchant_code=010101', '0', '2016-02-29 12:51:54', 'admin'),
	('201602291253147028', 'username=bhudaya%40yahoo.comxxx&product_code=12345678&merchant_code=010101', '0', '2016-02-29 12:53:14', 'admin'),
	('201602291257240830', 'username=bhudaya%40yahoo.comxxx&product_code=12345678&merchant_code=010101', '0', '2016-02-29 12:57:24', 'admin'),
	('201603010042001721', 'username=bhudaya%40yahoo.comxxx&product_code=12345678&merchant_code=010101', '0', '2016-03-01 00:42:00', 'admin');
/*!40000 ALTER TABLE `t_remittance` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;