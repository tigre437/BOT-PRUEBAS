-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para test_1
CREATE DATABASE IF NOT EXISTS `test_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `test_1`;

-- Volcando estructura para tabla test_1.palabras
CREATE TABLE IF NOT EXISTS `palabras` (
  `id_server` bigint(30) DEFAULT NULL,
  `palabra` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla test_1.palabras: ~0 rows (aproximadamente)

-- Volcando estructura para tabla test_1.prefix
CREATE TABLE IF NOT EXISTS `prefix` (
  `server_id` bigint(30) DEFAULT NULL,
  `server_prefix` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla test_1.prefix: ~0 rows (aproximadamente)

-- Volcando estructura para tabla test_1.registro
CREATE TABLE IF NOT EXISTS `registro` (
  `id_user` bigint(30) DEFAULT NULL,
  `fecha_entrada` varchar(50) DEFAULT NULL,
  `fecha_salida` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla test_1.registro: ~2 rows (aproximadamente)
INSERT INTO `registro` (`id_user`, `fecha_entrada`, `fecha_salida`) VALUES
	(474332573703864330, '2023-01-02 22:26:02', '2023-01-02 22:32:51'),
	(432423432131321312, '2023-01-02 22:26:02', '2023-01-02 22:32:51');

-- Volcando estructura para tabla test_1.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `idmsg` bigint(30) DEFAULT NULL,
  `idrole` bigint(30) DEFAULT NULL,
  `emogi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla test_1.roles: ~0 rows (aproximadamente)
INSERT INTO `roles` (`idmsg`, `idrole`, `emogi`) VALUES
	(1059555236760535090, 768724700804677653, '✅');

-- Volcando estructura para tabla test_1.ticket
CREATE TABLE IF NOT EXISTS `ticket` (
  `id_ticket` bigint(30) DEFAULT NULL,
  `id_autor` bigint(30) DEFAULT NULL,
  `id_server` bigint(30) DEFAULT NULL,
  `id_panel` bigint(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla test_1.ticket: ~6 rows (aproximadamente)
INSERT INTO `ticket` (`id_ticket`, `id_autor`, `id_server`, `id_panel`) VALUES
	(1059267346528739398, 474332573703864330, 701517166327103508, 1059267309392380034),
	(1059267655674105966, 474332573703864330, 701517166327103508, 1059267309392380034),
	(1059267831834869811, 474332573703864330, 701517166327103508, 1059267309392380034),
	(1059268169430208693, 474332573703864330, 701517166327103508, 1059267309392380034),
	(1068084455299874907, 474332573703864330, 345463885425541121, 1068084412220198922),
	(1068089762314989578, 474332573703864330, 345463885425541121, 1068084412220198922);

-- Volcando estructura para tabla test_1.ticket_config
CREATE TABLE IF NOT EXISTS `ticket_config` (
  `id_server` bigint(30) DEFAULT NULL,
  `id_panel` bigint(30) DEFAULT NULL,
  `id_category_open` bigint(30) DEFAULT NULL,
  `id_category_close` bigint(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla test_1.ticket_config: ~0 rows (aproximadamente)
INSERT INTO `ticket_config` (`id_server`, `id_panel`, `id_category_open`, `id_category_close`) VALUES
	(701517166327103508, 1059267309392380034, 933703880800354384, 930838228796309554),
	(345463885425541121, 1068084412220198922, 1068083988893286490, 1068083988893286490);

-- Volcando estructura para tabla test_1.ticket_config_2
CREATE TABLE IF NOT EXISTS `ticket_config_2` (
  `id_panel` bigint(30) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `id` bigint(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla test_1.ticket_config_2: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
