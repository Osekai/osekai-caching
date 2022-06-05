DROP TABLE IF EXISTS `GlobalCache`;
CREATE TABLE `GlobalCache` (
  `Title` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Expiration` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Data` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
