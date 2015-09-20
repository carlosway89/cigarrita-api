-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-09-2015 a las 14:34:29
-- Versión del servidor: 5.5.44-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cigarritaworker_v2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attributes`
--

CREATE TABLE IF NOT EXISTS `attributes` (
  `key` varchar(100) DEFAULT NULL,
  `value` text,
  `idattributes` int(11) NOT NULL AUTO_INCREMENT,
  `idpost` int(11) DEFAULT NULL,
  PRIMARY KEY (`idattributes`),
  KEY `fk_attributes_has_post_idx` (`idpost`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AuthAssignment`
--

CREATE TABLE IF NOT EXISTS `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  `iduser` int(11) NOT NULL,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AuthItem`
--

CREATE TABLE IF NOT EXISTS `AuthItem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AuthItemChild`
--

CREATE TABLE IF NOT EXISTS `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `block`
--

CREATE TABLE IF NOT EXISTS `block` (
  `idblock` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(10) NOT NULL,
  `header` text,
  `subheader` text,
  `is_deleted` tinyint(1) DEFAULT '0',
  `state` tinyint(1) DEFAULT '1',
  `language` varchar(10) DEFAULT NULL,
  `source` text,
  PRIMARY KEY (`idblock`),
  KEY `fk_block_category1_idx` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `block_has_post`
--

CREATE TABLE IF NOT EXISTS `block_has_post` (
  `block_idblock` int(11) NOT NULL,
  `post_idpost` int(11) NOT NULL,
  `id_block_has_post` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_block_has_post`,`block_idblock`,`post_idpost`),
  KEY `fk_block_has_post_post1_idx` (`post_idpost`),
  KEY `fk_block_has_post_block1_idx` (`block_idblock`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category` varchar(10) NOT NULL,
  `tag` varchar(100) NOT NULL,
  PRIMARY KEY (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `idconfig` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `language` varchar(5) NOT NULL,
  `analytic_id` varchar(100) NOT NULL,
  `keywords` text NOT NULL,
  `is_installed` tinyint(1) NOT NULL,
  `id_facebook` varchar(200) NOT NULL,
  `id_facebook_page` varchar(300) NOT NULL,
  PRIMARY KEY (`idconfig`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form`
--

CREATE TABLE IF NOT EXISTS `form` (
  `idform` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(400) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `country_name` varchar(45) DEFAULT NULL,
  `browser` varchar(300) DEFAULT NULL,
  `state` varchar(45) DEFAULT 'new',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`idform`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `idlanguage` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `flag` varchar(45) DEFAULT NULL,
  `estado` int(3) NOT NULL DEFAULT '1',
  `min` varchar(3) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`idlanguage`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `idlog` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(600) NOT NULL,
  `user` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=411 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `idmenu` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `state` tinyint(1) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `language` varchar(10) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `source` text,
  PRIMARY KEY (`idmenu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `idpage` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `state` tinyint(1) DEFAULT '1',
  `source` text,
  PRIMARY KEY (`idpage`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_has_block`
--

CREATE TABLE IF NOT EXISTS `page_has_block` (
  `page_idpage` int(11) NOT NULL,
  `block_idblock` int(11) NOT NULL,
  `id_page_has_block` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_page_has_block`,`page_idpage`,`block_idblock`),
  KEY `fk_page_has_block_block1_idx` (`block_idblock`),
  KEY `fk_page_has_block_page_idx` (`page_idpage`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `idpost` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(10) DEFAULT NULL,
  `header` text,
  `subheader` text,
  `source` text,
  `language` varchar(10) DEFAULT NULL,
  `state` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idpost`),
  KEY `fk_post_category1_idx` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `full_name` text NOT NULL,
  `email` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `fk_attributes_has_post` FOREIGN KEY (`idpost`) REFERENCES `post` (`idpost`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `AuthAssignment`
--
ALTER TABLE `AuthAssignment`
  ADD CONSTRAINT `fk_AuthAssignment_1` FOREIGN KEY (`itemname`) REFERENCES `AuthItem` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `AuthItemChild`
--
ALTER TABLE `AuthItemChild`
  ADD CONSTRAINT `fk_AuthItemChild_1` FOREIGN KEY (`parent`) REFERENCES `AuthItem` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AuthItemChild_2` FOREIGN KEY (`child`) REFERENCES `AuthItem` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `block`
--
ALTER TABLE `block`
  ADD CONSTRAINT `fk_block_category1` FOREIGN KEY (`category`) REFERENCES `category` (`category`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `block_has_post`
--
ALTER TABLE `block_has_post`
  ADD CONSTRAINT `fk_block_has_post_block1` FOREIGN KEY (`block_idblock`) REFERENCES `block` (`idblock`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_block_has_post_post1` FOREIGN KEY (`post_idpost`) REFERENCES `post` (`idpost`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `page_has_block`
--
ALTER TABLE `page_has_block`
  ADD CONSTRAINT `fk_page_has_block_block1` FOREIGN KEY (`block_idblock`) REFERENCES `block` (`idblock`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_page_has_block_page` FOREIGN KEY (`page_idpage`) REFERENCES `page` (`idpage`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_post_category1` FOREIGN KEY (`category`) REFERENCES `category` (`category`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
