DROP DATABASE IF EXISTS `ticket`;

CREATE DATABASE  `ticket` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `ticket`;
-- MySQL dump 10.13  Distrib 5.6.10, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ticket
-- ------------------------------------------------------
-- Server version	5.6.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cas_tkc_mexcontabilidadetickets`
--

DROP TABLE IF EXISTS `cas_tkc_mexcontabilidadetickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_tkc_mexcontabilidadetickets` (
  `tkc_n_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `tkc_c_ipmaquina` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `tkc_n_hasta50` int(11) DEFAULT '0',
  `tkc_n_hasta51` int(11) DEFAULT '0',
  `tkc_n_hasta100` int(11) DEFAULT '0',
  `tkc_n_hasta250` int(11) DEFAULT '0',
  `tkc_n_hasta500` int(11) DEFAULT '0',
  `tkc_n_hasta1000` int(11) DEFAULT '0',
  `tkc_d_datafechamento` datetime DEFAULT NULL,
  `tkc_n_codmodelo` int(11) DEFAULT NULL,
  PRIMARY KEY (`tkc_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_tkc_mexcontabilidadetickets`
--

LOCK TABLES `cas_tkc_mexcontabilidadetickets` WRITE;
/*!40000 ALTER TABLE `cas_tkc_mexcontabilidadetickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_tkc_mexcontabilidadetickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_rfa_rentabilfab`
--

DROP TABLE IF EXISTS `cas_rfa_rentabilfab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_rfa_rentabilfab` (
  `rfa_n_cierre` int(11) NOT NULL,
  `rfa_n_codfabricante` int(11) NOT NULL,
  `rfa_n_rentabilidade` bigint(20) DEFAULT '0',
  PRIMARY KEY (`rfa_n_cierre`,`rfa_n_codfabricante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_rfa_rentabilfab`
--

LOCK TABLES `cas_rfa_rentabilfab` WRITE;
/*!40000 ALTER TABLE `cas_rfa_rentabilfab` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_rfa_rentabilfab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_crd_mexcierrescard`
--

DROP TABLE IF EXISTS `card_crd_mexcierrescard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_crd_mexcierrescard` (
  `crd_n_iniciocaixa` int(11) DEFAULT NULL,
  `crd_n_reforcocaixa` int(11) DEFAULT NULL,
  `crd_n_retiradacaixa` int(11) DEFAULT NULL,
  `crd_n_entradacartaocaixa` int(11) DEFAULT NULL,
  `crd_n_entradacartaomaq` int(11) DEFAULT NULL,
  `crd_n_entradadinheiromaq` int(11) DEFAULT NULL,
  `crd_n_entradacaixamovel` int(11) DEFAULT NULL,
  `crd_n_saidascartao` int(11) DEFAULT NULL,
  `crd_n_pagamentomanual` int(11) DEFAULT NULL,
  `crd_n_saidascaixamovel` int(11) DEFAULT NULL,
  `crd_n_deducao1` int(11) DEFAULT NULL,
  `crd_n_deducao2` int(11) DEFAULT NULL,
  `crd_n_premiospagos` int(11) DEFAULT NULL,
  `crd_n_deducaoentrada` int(11) DEFAULT NULL,
  `crd_n_creditossemretorno` int(11) DEFAULT NULL,
  `crd_n_creditosvencidos` int(11) DEFAULT NULL,
  `crd_d_fecha` datetime NOT NULL,
  `crd_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `crd_n_cierresofice` int(11) DEFAULT '0',
  `crd_n_codigo` int(11) NOT NULL,
  `crd_d_abertura` datetime DEFAULT NULL,
  `crd_n_taxacartao` decimal(12,2) NOT NULL DEFAULT '0.00',
  `crd_n_clicodigo` int(11) DEFAULT NULL,
  `crd_n_saldocreditos` int(11) DEFAULT '0',
  `crd_n_creditocortesia` int(11) DEFAULT '0',
  `crd_n_creditopromocao` int(11) DEFAULT '0',
  `crd_n_cancelcreditobank` int(11) DEFAULT '0',
  `crd_n_canceldebito` int(11) DEFAULT '0',
  `crd_n_cancelpromocao` int(11) DEFAULT '0',
  `crd_n_cancelcortesia` int(11) DEFAULT '0',
  `crd_n_cancelmaquinabank` int(11) DEFAULT '0',
  `crd_n_cancelmaquinacredito` int(11) DEFAULT '0',
  `crd_n_cancelmaquinaplay` int(11) DEFAULT '0',
  `crd_n_codigoconsolidado` int(11) DEFAULT '0',
  `crd_n_pagomanualcredito` int(11) DEFAULT NULL,
  `crd_n_pagomanualbank` int(11) DEFAULT NULL,
  PRIMARY KEY (`crd_d_fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_crd_mexcierrescard`
--

LOCK TABLES `card_crd_mexcierrescard` WRITE;
/*!40000 ALTER TABLE `card_crd_mexcierrescard` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_crd_mexcierrescard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_tpr_mexticketspremios`
--

DROP TABLE IF EXISTS `cas_tpr_mexticketspremios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_tpr_mexticketspremios` (
  `tpr_c_code` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `tpr_n_premio` decimal(12,2) DEFAULT '0.00',
  `tpr_n_imposto` decimal(12,2) DEFAULT '0.00',
  `tpr_d_fechacierre` datetime DEFAULT NULL,
  `tpr_n_saldoatual` decimal(12,2) DEFAULT NULL,
  `tpr_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `tpr_n_codigo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`tpr_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_tpr_mexticketspremios`
--

LOCK TABLES `cas_tpr_mexticketspremios` WRITE;
/*!40000 ALTER TABLE `cas_tpr_mexticketspremios` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_tpr_mexticketspremios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_pfb_posfabricantes`
--

DROP TABLE IF EXISTS `cas_pfb_posfabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_pfb_posfabricantes` (
  `pfb_c_descricao` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `pfb_b_status` tinyint(1) DEFAULT '1',
  `pfb_d_datainclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pfb_n_codigo` int(11) NOT NULL,
  PRIMARY KEY (`pfb_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_pfb_posfabricantes`
--

LOCK TABLES `cas_pfb_posfabricantes` WRITE;
/*!40000 ALTER TABLE `cas_pfb_posfabricantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_pfb_posfabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_est_estatisticatot`
--

DROP TABLE IF EXISTS `cas_est_estatisticatot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_est_estatisticatot` (
  `est_d_data` datetime NOT NULL,
  `est_c_ip` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `est_n_modelo` int(11) NOT NULL,
  `est_n_numjogadas` bigint(20) NOT NULL DEFAULT '0',
  `est_n_cartoesjogados` bigint(20) NOT NULL DEFAULT '0',
  `est_n_jogadaspremiadas` bigint(20) NOT NULL DEFAULT '0',
  `est_n_premio1` int(4) NOT NULL DEFAULT '0',
  `est_n_premio2` int(4) NOT NULL DEFAULT '0',
  `est_n_premio3` int(4) NOT NULL DEFAULT '0',
  `est_n_premio4` int(4) NOT NULL DEFAULT '0',
  `est_n_premio5` int(4) NOT NULL DEFAULT '0',
  `est_n_premio6` int(4) NOT NULL DEFAULT '0',
  `est_n_premio7` int(4) NOT NULL DEFAULT '0',
  `est_n_premio8` int(4) NOT NULL DEFAULT '0',
  `est_n_premio9` int(4) NOT NULL DEFAULT '0',
  `est_n_premio10` int(4) NOT NULL DEFAULT '0',
  `est_n_premio11` int(4) NOT NULL DEFAULT '0',
  `est_n_premio12` int(4) NOT NULL DEFAULT '0',
  `est_n_premio13` int(4) NOT NULL DEFAULT '0',
  `est_n_premio14` int(4) NOT NULL DEFAULT '0',
  `est_n_premio15` int(4) NOT NULL DEFAULT '0',
  `est_n_premio16` int(4) NOT NULL DEFAULT '0',
  `est_n_premio17` int(4) NOT NULL DEFAULT '0',
  `est_n_premio18` int(4) NOT NULL DEFAULT '0',
  `est_n_premio19` int(4) NOT NULL DEFAULT '0',
  `est_n_premio20` int(4) NOT NULL DEFAULT '0',
  `est_n_premio21` int(4) NOT NULL DEFAULT '0',
  `est_n_premio22` int(4) NOT NULL DEFAULT '0',
  `est_n_premio23` int(4) NOT NULL DEFAULT '0',
  `est_n_premio24` int(4) NOT NULL DEFAULT '0',
  `est_n_porcentage` decimal(4,2) NOT NULL DEFAULT '0.00',
  `est_n_creditosextra` decimal(8,2) NOT NULL DEFAULT '0.00',
  `est_n_comprabolaextra` bigint(20) NOT NULL DEFAULT '0',
  `est_n_partida` int(11) DEFAULT NULL,
  `est_n_creditoextratot` bigint(20) DEFAULT '0',
  `est_n_comprabolaextratot` bigint(20) DEFAULT '0',
  PRIMARY KEY (`est_d_data`,`est_c_ip`,`est_n_modelo`),
  KEY `idx_estatisticatot_fecha` (`est_d_data`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_est_estatisticatot`
--

LOCK TABLES `cas_est_estatisticatot` WRITE;
/*!40000 ALTER TABLE `cas_est_estatisticatot` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_est_estatisticatot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_ctf_cartoesfidelidade`
--

DROP TABLE IF EXISTS `card_ctf_cartoesfidelidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_ctf_cartoesfidelidade` (
  `ctf_c_contaid` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `ctf_c_numerocartao` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ctf_c_dv` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `ctf_c_cpf` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ctf_n_credito` int(11) DEFAULT '0',
  `ctf_n_situacao` int(11) DEFAULT NULL,
  `ctf_n_tipoconta` int(11) DEFAULT NULL,
  `ctf_c_password` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `ctf_c_lastfrombankerid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `ctf_n_lasttipooperacao` int(11) DEFAULT NULL,
  `ctf_n_taxacartao` int(11) DEFAULT '0',
  `ctf_n_passtry` int(11) DEFAULT '0',
  `ctf_n_creditosjogados` int(11) DEFAULT '0',
  `ctf_n_pontos` int(11) DEFAULT '0',
  `ctf_n_pontosusados` int(11) DEFAULT '0',
  `ctf_d_iniciouso` datetime DEFAULT NULL,
  `ctf_c_digitado` varchar(6) COLLATE latin1_general_ci DEFAULT NULL,
  `ctf_n_situacaobloqueio` int(11) DEFAULT '0',
  `ctf_n_saldolimite` decimal(12,2) DEFAULT '0.00',
  `ctf_b_disponivel` tinyint(1) DEFAULT '1',
  `ctf_b_primeirocredito` tinyint(1) DEFAULT NULL,
  `ctf_n_valorcredmaquina` decimal(12,2) DEFAULT '0.00',
  `ctf_n_valorcredoper` decimal(12,2) DEFAULT '0.00',
  `ctf_n_valordinmaquina` decimal(12,2) DEFAULT '0.00',
  `ctf_n_valorentcaixa` decimal(12,2) DEFAULT '0.00',
  `ctf_n_saldocierre` decimal(12,2) DEFAULT '0.00',
  `ctf_n_valorentcaixamovel` decimal(12,2) DEFAULT '0.00',
  `ctf_n_entrada` int(11) DEFAULT '0',
  `ctf_n_saldocredito` decimal(12,2) DEFAULT '0.00',
  `ctf_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `ctf_n_bloqueado` int(11) DEFAULT '0',
  `ctf_n_saldopromocao` decimal(12,2) DEFAULT NULL,
  `card_ctf_cartoesfidelidadecol` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`ctf_c_numerocartao`,`ctf_c_contaid`),
  KEY `IX_card_ctf_cartoesfidelidade_maquina` (`ctf_c_maquina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_ctf_cartoesfidelidade`
--

LOCK TABLES `card_ctf_cartoesfidelidade` WRITE;
/*!40000 ALTER TABLE `card_ctf_cartoesfidelidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_ctf_cartoesfidelidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_top_tipooperacao`
--

DROP TABLE IF EXISTS `cas_top_tipooperacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_top_tipooperacao` (
  `top_n_codigo` int(11) NOT NULL,
  `top_c_descricao` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `top_n_idioma` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`top_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_top_tipooperacao`
--

LOCK TABLES `cas_top_tipooperacao` WRITE;
/*!40000 ALTER TABLE `cas_top_tipooperacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_top_tipooperacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_stp_systemtype`
--

DROP TABLE IF EXISTS `cas_stp_systemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_stp_systemtype` (
  `stp_n_codigo` int(11) NOT NULL,
  `stp_c_systemtype` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `stp_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `stp_b_vacuum` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `stp_n_apostamin` decimal(4,2) DEFAULT '0.00',
  `stp_n_codcasa` int(11) DEFAULT NULL,
  `stp_b_dinheiromaquina` tinyint(1) DEFAULT '0',
  `stp_b_minimojogadores` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`stp_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_stp_systemtype`
--

LOCK TABLES `cas_stp_systemtype` WRITE;
/*!40000 ALTER TABLE `cas_stp_systemtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_stp_systemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_clt_cartoeslote`
--

DROP TABLE IF EXISTS `card_clt_cartoeslote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_clt_cartoeslote` (
  `clt_c_codcasa` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `clt_d_geracao` datetime DEFAULT NULL,
  `clt_n_numerocartoes` int(11) DEFAULT NULL,
  `clt_c_codlote` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`clt_c_codcasa`,`clt_c_codlote`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_clt_cartoeslote`
--

LOCK TABLES `card_clt_cartoeslote` WRITE;
/*!40000 ALTER TABLE `card_clt_cartoeslote` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_clt_cartoeslote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_dbv_dbversao`
--

DROP TABLE IF EXISTS `cas_dbv_dbversao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_dbv_dbversao` (
  `dbv_c_versao` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `dbv_d_dataatualizacao` datetime DEFAULT NULL,
  PRIMARY KEY (`dbv_c_versao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_dbv_dbversao`
--

LOCK TABLES `cas_dbv_dbversao` WRITE;
/*!40000 ALTER TABLE `cas_dbv_dbversao` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_dbv_dbversao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_prt_debitarcartao`
--

DROP TABLE IF EXISTS `card_prt_debitarcartao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_prt_debitarcartao` (
  `prt_n_codigo` int(11) NOT NULL,
  `prt_b_numcartao` tinyint(1) DEFAULT '0',
  `prt_b_nomecliente` tinyint(1) DEFAULT '0',
  `prt_b_cpfcliente` tinyint(1) DEFAULT '0',
  `prt_b_entradadinmaq` tinyint(1) DEFAULT '0',
  `prt_b_entradadincartao` tinyint(1) DEFAULT '0',
  `prt_b_entradacartaocaixa` tinyint(1) DEFAULT '0',
  `prt_b_aposta` tinyint(1) DEFAULT '0',
  `prt_b_saldo` tinyint(1) DEFAULT '0',
  `prt_b_premio` tinyint(1) DEFAULT '0',
  `prt_b_deducao` tinyint(1) DEFAULT '0',
  `prt_b_saldoliquido` tinyint(1) DEFAULT '0',
  `prt_b_valordebito` tinyint(1) DEFAULT '0',
  `prt_b_saldoatual` tinyint(1) DEFAULT '0',
  `prt_b_numcartaoimp` tinyint(1) DEFAULT '0',
  `prt_b_nomeclienteimp` tinyint(1) DEFAULT '0',
  `prt_b_cpfclienteimp` tinyint(1) DEFAULT '0',
  `prt_b_entradadinmaqimp` tinyint(1) DEFAULT '0',
  `prt_b_entradadincartaoimp` tinyint(1) DEFAULT '0',
  `prt_b_entradacartaocaixaimp` tinyint(1) DEFAULT '0',
  `prt_b_apostaimp` tinyint(1) DEFAULT '0',
  `prt_b_saldoimp` tinyint(1) DEFAULT '0',
  `prt_b_premioimp` tinyint(1) DEFAULT '0',
  `prt_b_deducaoimp` tinyint(1) DEFAULT '0',
  `prt_b_saldoliquidoimp` tinyint(1) DEFAULT '0',
  `prt_b_valordebitoimp` tinyint(1) DEFAULT '0',
  `prt_b_saldoatualimp` tinyint(1) DEFAULT '0',
  `prt_b_entradacartaomovel` tinyint(1) DEFAULT '0',
  `prt_b_entradacartaomovelimp` tinyint(1) DEFAULT '0',
  `prt_b_saldocredito` tinyint(1) DEFAULT '0',
  `prt_b_saldocreditoimp` tinyint(1) DEFAULT '0',
  `prt_b_saldopontos` tinyint(1) DEFAULT '0',
  `prt_b_saldopontosimp` tinyint(1) DEFAULT '0',
  `prt_b_saldopromocao` tinyint(1) DEFAULT NULL,
  `prt_b_saldopromocaoimp` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_prt_debitarcartao`
--

LOCK TABLES `card_prt_debitarcartao` WRITE;
/*!40000 ALTER TABLE `card_prt_debitarcartao` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_prt_debitarcartao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_ctr_controlejogadores`
--

DROP TABLE IF EXISTS `cas_ctr_controlejogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_ctr_controlejogadores` (
  `ctr_n_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ctr_c_ip` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ctr_n_status` tinyint(3) unsigned NOT NULL,
  `ctr_d_data` datetime NOT NULL,
  PRIMARY KEY (`ctr_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_ctr_controlejogadores`
--

LOCK TABLES `cas_ctr_controlejogadores` WRITE;
/*!40000 ALTER TABLE `cas_ctr_controlejogadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_ctr_controlejogadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_ctd_cartoesdisponiveis`
--

DROP TABLE IF EXISTS `card_ctd_cartoesdisponiveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_ctd_cartoesdisponiveis` (
  `ctd_c_numerocartao` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ctd_c_codcasa` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `ctd_ck_inicializacao` tinyint(1) DEFAULT '0',
  `ctd_c_codlote` varchar(20) COLLATE latin1_general_ci DEFAULT '20',
  PRIMARY KEY (`ctd_c_numerocartao`),
  KEY `FK_card_ctd_cartoesdisponiveis_card_clt_cartoeslote` (`ctd_c_codcasa`,`ctd_c_codlote`),
  CONSTRAINT `FK_card_ctd_cartoesdisponiveis_card_clt_cartoeslote` FOREIGN KEY (`ctd_c_codcasa`, `ctd_c_codlote`) REFERENCES `card_clt_cartoeslote` (`clt_c_codcasa`, `clt_c_codlote`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_ctd_cartoesdisponiveis`
--

LOCK TABLES `card_ctd_cartoesdisponiveis` WRITE;
/*!40000 ALTER TABLE `card_ctd_cartoesdisponiveis` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_ctd_cartoesdisponiveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_dpr_dataspromo`
--

DROP TABLE IF EXISTS `cas_dpr_dataspromo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_dpr_dataspromo` (
  `dpr_d_data` date NOT NULL,
  PRIMARY KEY (`dpr_d_data`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_dpr_dataspromo`
--

LOCK TABLES `cas_dpr_dataspromo` WRITE;
/*!40000 ALTER TABLE `cas_dpr_dataspromo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_dpr_dataspromo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_prt_cierrediacartao`
--

DROP TABLE IF EXISTS `card_prt_cierrediacartao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_prt_cierrediacartao` (
  `prt_n_codigo` int(11) NOT NULL,
  `prt_n_idioma` int(11) NOT NULL,
  `prt_c_descricao` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`prt_n_codigo`,`prt_n_idioma`),
  CONSTRAINT `FK__card_prt___prt_n__22AA2996` FOREIGN KEY (`prt_n_codigo`) REFERENCES `card_opf_operacaofechamento` (`opf_n_codigoprt`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_prt_cierrediacartao`
--

LOCK TABLES `card_prt_cierrediacartao` WRITE;
/*!40000 ALTER TABLE `card_prt_cierrediacartao` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_prt_cierrediacartao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_pos_pos`
--

DROP TABLE IF EXISTS `cas_pos_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_pos_pos` (
  `pos_n_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pos_c_identificacao` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `pos_d_datainclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pos_b_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`pos_n_codigo`),
  UNIQUE KEY `UQ__cas_pos___AB5C1B2C25518C17` (`pos_c_identificacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_pos_pos`
--

LOCK TABLES `cas_pos_pos` WRITE;
/*!40000 ALTER TABLE `cas_pos_pos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_pos_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_prt_cierreticket`
--

DROP TABLE IF EXISTS `cas_prt_cierreticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_prt_cierreticket` (
  `prt_n_codigo` int(11) NOT NULL,
  `prt_b_numconta` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entdintick` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entdinmaq` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entickcx` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_totent` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_saldo` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_deducao` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_pagnet` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_premio` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_numcontaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entdintickimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entdinmaqimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entickcximp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_totentimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_saldoimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_deducaoimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_pagnetimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_premioimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_aposta` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_apostaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_prt_cierreticket`
--

LOCK TABLES `cas_prt_cierreticket` WRITE;
/*!40000 ALTER TABLE `cas_prt_cierreticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_prt_cierreticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_prt_mexparametros`
--

DROP TABLE IF EXISTS `cas_prt_mexparametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_prt_mexparametros` (
  `prt_n_codigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador interno de registro',
  `prt_n_valor` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'Valor máximo em dinheiro que o tícket pode ter no momento da carga ou recarga. Valor atual + valor da carga não pode ser maior que esse parâmetro.',
  `prt_n_dias` int(11) NOT NULL COMMENT 'Validade do ticket. Número de dias à partir da data de venda do tícket em que ele é válido.',
  `prt_n_status` int(11) NOT NULL DEFAULT '1' COMMENT '0 - inativo, 1 - ativo. Somente um registro tem o status 1.',
  `prt_d_datavigencia` date NOT NULL COMMENT 'Data de início da vigência dessas configurações.',
  `prt_b_impcompaddcred` tinyint(1) DEFAULT '1' COMMENT '0 - não imprime o comprovante de carga/recarga, 1 - imprime o comprovante de carga/recarga.',
  `prt_b_enviaremailcierredia` tinyint(1) DEFAULT '0' COMMENT '0 - não enviar e-mail no fechamento do dia, 1 - enviar e-mail.',
  `prt_b_operarnumerosinteiros` tinyint(1) DEFAULT '0' COMMENT '0 - trabalha com centavos automaticamente, 1 - trabalha com inteiros, o usuário tem de digitar virgula para os centavos.',
  `prt_b_reutilizarticket` tinyint(1) DEFAULT '0' COMMENT '- não está sendo utilizado.',
  `prt_b_emailcontfechamento` tinyint(1) DEFAULT '0' COMMENT '0 - não incluir os dados da contabilidade no e-mail do fechamento do dia, 1 - incluir.',
  `prt_b_contabilparcial` tinyint(1) DEFAULT '0' COMMENT '0 - considerar os contadores parciais da máquina para o arquivo de contabilidade do e-mail, 1 - não considera os contadores parciais da máquina, mas inclui os parciais somente daquele fechamento.',
  `prt_b_cupomb` tinyint(1) DEFAULT '0' COMMENT '0 - não trabalha com cupomb, 1 - trabalha com cupomb - Só para Televisa.',
  `prt_n_diascontabil` int(11) NOT NULL DEFAULT '90' COMMENT 'Número de dias para quardar os dados contábeis.',
  `prt_b_enviapdfcontabil` tinyint(1) DEFAULT '0' COMMENT '0 - não enviar o arquivo contábil em PDF no e-mail. Enviar em PDF.',
  `prt_b_enviaxmlcontabil` tinyint(1) DEFAULT '0' COMMENT '0 - não enviar o arquivo contábel em XML no e-mail. 1 - Enviar em XML.',
  `prt_b_enviarxmlpagmanual` tinyint(1) DEFAULT '0' COMMENT '0 - não enviar o arquivo de pagamento manual em XML. 1 - Enviar em XML.',
  `prt_b_enviarpdfpagmanual` tinyint(1) DEFAULT '0' COMMENT '0 - Não enviar os dados do pagamento manual em PDF. 1 - Enviar em PDF.',
  `prt_b_enviarpagmanualfechamento` tinyint(1) DEFAULT '0' COMMENT '0 - não enviar os dados do pagamento manual no e-mail. 1 - Enviar os dados do fechamento',
  `prt_b_permitirsaldonegativo` tinyint(1) DEFAULT '0' COMMENT '0 - Não permitir saldo negativo no caixa. 1 - Permitir saldo negativo no caixa.',
  `prt_b_calcularvendas` tinyint(1) DEFAULT '0' COMMENT '0 - Calcular as vendas, 1 - não calcular as vendas. Somente para o BigBola do méxico.',
  `prt_b_fecharticketpromocao` tinyint(1) DEFAULT '0' COMMENT '0 - Não fechar o ticket promoção. Qualquer valor do tícket deve ser consumido na casa, 1 - fechar o tícket promoção, o cliente pode sacar em dinheiro o valor do ticket.',
  `prt_b_enviarcontmod` tinyint(1) DEFAULT '0' COMMENT '0 - não enviar arquivo de contabilidade por modalidade, 1 - enviar arquivo de contabilidade por modalidade.',
  `prt_b_enviarcontfab` tinyint(1) DEFAULT '0' COMMENT '0 - não enviar arquivo de contabilidade por fabricante, 1 - enviar arquivo de contabilidade por fabricante.',
  `prt_b_fechamentoconsolidado` tinyint(1) DEFAULT NULL,
  `prt_b_arcade` tinyint(1) DEFAULT NULL,
  `prt_n_valepremio` decimal(12,2) DEFAULT NULL,
  `prt_n_tipointensidadecartao` int(2) DEFAULT NULL,
  `prt_n_numeromaximojogadores` tinyint(3) unsigned DEFAULT NULL,
  `prt_b_horas` tinyint(1) DEFAULT '1',
  `prt_t_horaabertura` time DEFAULT NULL,
  `prt_t_horafechamento` time DEFAULT NULL,
  `prt_b_encerraautomatico` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`prt_n_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_prt_mexparametros`
--

LOCK TABLES `cas_prt_mexparametros` WRITE;
/*!40000 ALTER TABLE `cas_prt_mexparametros` DISABLE KEYS */;
INSERT INTO `cas_prt_mexparametros` VALUES (1,100000.00,30,1,'2013-04-05',0,0,1,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,30,0,'00:00:00','00:00:00',0);
/*!40000 ALTER TABLE `cas_prt_mexparametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_amo_associamodalidadesemail`
--

DROP TABLE IF EXISTS `cas_amo_associamodalidadesemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_amo_associamodalidadesemail` (
  `amo_n_codmodalidade` int(11) NOT NULL,
  `amo_n_codemail` int(11) NOT NULL,
  PRIMARY KEY (`amo_n_codmodalidade`,`amo_n_codemail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_amo_associamodalidadesemail`
--

LOCK TABLES `cas_amo_associamodalidadesemail` WRITE;
/*!40000 ALTER TABLE `cas_amo_associamodalidadesemail` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_amo_associamodalidadesemail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_imp_meximpostos`
--

DROP TABLE IF EXISTS `cas_imp_meximpostos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_imp_meximpostos` (
  `imp_n_codigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'código interno do imposto',
  `imp_n_tipo` int(11) DEFAULT NULL COMMENT '1 - Imposto sobre Vendas, 2 - Imposto Estadual, 3 - Imposto Federal',
  `imp_c_nome` varchar(50) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'nome do Imposto',
  `imp_n_valor` decimal(4,2) DEFAULT NULL COMMENT 'Aliquota em percentual com duas casas decimais',
  `imp_n_status` int(11) DEFAULT '1' COMMENT '0 - Inativo, 1 - Ativo',
  `imp_d_datavigencia` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de início da vigência desse imposto.',
  PRIMARY KEY (`imp_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_imp_meximpostos`
--

LOCK TABLES `cas_imp_meximpostos` WRITE;
/*!40000 ALTER TABLE `cas_imp_meximpostos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_imp_meximpostos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_scc_controlecard`
--

DROP TABLE IF EXISTS `card_scc_controlecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_scc_controlecard` (
  `scc_c_code` varchar(19) COLLATE latin1_general_ci NOT NULL,
  `scc_c_ip` varbinary(15) NOT NULL,
  PRIMARY KEY (`scc_c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_scc_controlecard`
--

LOCK TABLES `card_scc_controlecard` WRITE;
/*!40000 ALTER TABLE `card_scc_controlecard` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_scc_controlecard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_ema_email`
--

DROP TABLE IF EXISTS `cas_ema_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_ema_email` (
  `ema_n_codigo` int(11) NOT NULL,
  `ema_c_email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`ema_c_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_ema_email`
--

LOCK TABLES `cas_ema_email` WRITE;
/*!40000 ALTER TABLE `cas_ema_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_ema_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debuginfotable`
--

DROP TABLE IF EXISTS `debuginfotable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debuginfotable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variableName` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `varValue` int(11) DEFAULT NULL,
  `timeOccurred` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debuginfotable`
--

LOCK TABLES `debuginfotable` WRITE;
/*!40000 ALTER TABLE `debuginfotable` DISABLE KEYS */;
/*!40000 ALTER TABLE `debuginfotable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_mvi_mexmovimientos`
--

DROP TABLE IF EXISTS `cas_mvi_mexmovimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_mvi_mexmovimientos` (
  `mvi_c_code` varchar(8) COLLATE latin1_general_ci NOT NULL COMMENT 'Número do tícket associado ao movimento. 00000000 ou 99999999 - Quando não é ticket. ',
  `mvi_n_tipomov` int(11) NOT NULL,
  `mvi_n_valor` decimal(12,2) NOT NULL COMMENT 'Valor do movimento',
  `mvi_d_fecha` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `mvi_c_maquina` varchar(16) COLLATE latin1_general_ci NOT NULL COMMENT 'Mac Address do terminal que gerou a operação (caixa) ou o mac adress do terminal caixa que gerou o ticket.',
  `mvi_n_cierresofice` int(11) DEFAULT NULL COMMENT 'Não tá sendo usado.',
  `mvi_c_ip` varchar(50) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Ip da máquina de jogo que gerou a operação.',
  `mvi_c_transacao` varchar(21) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Número que identifica a transação quando existe cupomb.',
  `mvi_c_pos` varchar(16) COLLATE latin1_general_ci DEFAULT '0' COMMENT 'Número de série do POS que gerou a transação.',
  `mvi_c_numerocartao` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `mvi_c_contaid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `mvi_n_modelo` int(11) DEFAULT NULL,
  `mvi_n_secao` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mvi_n_tipomov`,`mvi_d_fecha`,`mvi_c_maquina`),
  KEY `FK_cas_mvi_mexmovimientos_secao` (`mvi_n_secao`),
  CONSTRAINT `FK_cas_mvi_mexmovimientos_secao` FOREIGN KEY (`mvi_n_secao`) REFERENCES `cas_sec_secao` (`sec_n_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_mvi_mexmovimientos`
--

LOCK TABLES `cas_mvi_mexmovimientos` WRITE;
/*!40000 ALTER TABLE `cas_mvi_mexmovimientos` DISABLE KEYS */;
INSERT INTO `cas_mvi_mexmovimientos` VALUES ('5880118',1,5000.00,'2013-04-18 00:00:00.000000','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880120',1,5000.00,'2013-04-18 16:53:20.000000','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880121',1,5000.00,'2013-04-18 16:56:05.000000','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880122',1,5000.00,'2013-04-18 17:02:58.000000','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880333',1,5000.00,'2013-04-22 00:00:00.000000','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880333',1,300.00,'2013-04-22 10:24:30.675825','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880666',1,300.00,'2013-04-25 15:28:04.537044','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880667',1,5000.00,'2013-04-26 00:00:00.000000','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880667',1,300.00,'2013-04-26 09:37:40.315128','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880668',1,300.00,'2013-04-26 10:05:49.667591','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880669',1,200.00,'2013-04-26 10:14:37.657068','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880669',1,400.00,'2013-04-26 10:15:33.012864','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880669',1,250.00,'2013-04-26 10:15:47.445671','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880670',1,200.50,'2013-04-26 10:31:17.786556','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880670',1,200.50,'2013-04-26 10:34:27.682168','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880670',1,250.00,'2013-04-26 10:36:46.169351','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880670',1,250.30,'2013-04-26 10:58:47.432490','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('1637232',1,50.01,'2013-04-30 12:42:58.664269','FF00FF00FF00',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5614383',1,50.01,'2013-04-30 12:43:47.584890','FF00FF00FF00',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('99999998',1,200.32,'2013-05-02 16:21:26.050776','F04DA2E5208C',NULL,NULL,'','0',NULL,NULL,NULL,NULL),('5880118',3,50.00,'2013-04-19 00:00:00.000000','F04DA2E5208C',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),('5880118',3,50.00,'2013-04-19 16:28:24.000000','F04DA2E5208C',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),('5880118',3,50.00,'2013-04-19 16:43:56.000000','F04DA2E5208C',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),('5880118',3,50.00,'2013-04-22 08:53:05.568562','F04DA2E5208C',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),('5880118',3,50.00,'2013-04-22 09:06:50.123074','F04DA2E5208C',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),('5880122',3,50.00,'2013-04-22 09:11:02.445630','F04DA2E5208C',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),('5880122',3,50.00,'2013-04-22 09:14:22.136898','F04DA2E5208C',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),('5880333',3,5000.00,'2013-04-22 11:32:54.920704','F04DA2E5208C',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),('5880670',3,700.80,'2013-04-26 11:11:19.261260','F04DA2E5208C',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cas_mvi_mexmovimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_pgt_mexpgtomanuais`
--

DROP TABLE IF EXISTS `cas_pgt_mexpgtomanuais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_pgt_mexpgtomanuais` (
  `pgt_n_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pgt_c_entityid` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `pgt_c_oficeid` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `pgt_d_horario` datetime NOT NULL,
  `pgt_c_maquina` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pgt_b_active` tinyint(1) NOT NULL,
  `pgt_n_entrada` int(11) NOT NULL,
  `pgt_n_saida` int(11) NOT NULL,
  PRIMARY KEY (`pgt_n_codigo`,`pgt_c_entityid`,`pgt_c_oficeid`,`pgt_d_horario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_pgt_mexpgtomanuais`
--

LOCK TABLES `cas_pgt_mexpgtomanuais` WRITE;
/*!40000 ALTER TABLE `cas_pgt_mexpgtomanuais` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_pgt_mexpgtomanuais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_hem_hist_eventos_maq`
--

DROP TABLE IF EXISTS `cas_hem_hist_eventos_maq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_hem_hist_eventos_maq` (
  `hem_c_ip` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `hem_n_modelo` int(11) NOT NULL,
  `hem_c_historico` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `hem_d_data` datetime NOT NULL,
  `hem_c_cpunumber` varchar(17) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hem_c_cpunumber`,`hem_d_data`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_hem_hist_eventos_maq`
--

LOCK TABLES `cas_hem_hist_eventos_maq` WRITE;
/*!40000 ALTER TABLE `cas_hem_hist_eventos_maq` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_hem_hist_eventos_maq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_log`
--

DROP TABLE IF EXISTS `error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_log` (
  `int_ErrorLogID` int(11) NOT NULL AUTO_INCREMENT,
  `dtm_ErrorTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sysn_UserName` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `int_ErrorNumber` int(11) NOT NULL,
  `vch_ErrorProcedure` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `int_ErrorLine` int(11) DEFAULT NULL,
  `vch_ErrorMessage` varchar(500) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`int_ErrorLogID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_log`
--

LOCK TABLES `error_log` WRITE;
/*!40000 ALTER TABLE `error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_tpc_tipocartao`
--

DROP TABLE IF EXISTS `card_tpc_tipocartao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_tpc_tipocartao` (
  `tpc_n_idioma` int(11) NOT NULL,
  `tpc_n_codtipocartao` int(11) NOT NULL,
  `tpc_c_descricao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tpc_b_opercartao` tinyint(1) NOT NULL,
  PRIMARY KEY (`tpc_n_idioma`,`tpc_n_codtipocartao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_tpc_tipocartao`
--

LOCK TABLES `card_tpc_tipocartao` WRITE;
/*!40000 ALTER TABLE `card_tpc_tipocartao` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_tpc_tipocartao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_sec_secao`
--

DROP TABLE IF EXISTS `cas_sec_secao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_sec_secao` (
  `sec_n_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sec_c_ip` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `sec_n_modelo` int(11) NOT NULL,
  `sec_d_data` datetime NOT NULL,
  `sec_c_numerocartao` varchar(19) COLLATE latin1_general_ci NOT NULL,
  `sec_b_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`sec_n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_sec_secao`
--

LOCK TABLES `cas_sec_secao` WRITE;
/*!40000 ALTER TABLE `cas_sec_secao` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_sec_secao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_mdl_mexmodelos`
--

DROP TABLE IF EXISTS `cas_mdl_mexmodelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_mdl_mexmodelos` (
  `mdl_n_codigo` int(11) NOT NULL,
  `mdl_c_descricao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `mdl_n_codmodalidade` int(11) NOT NULL DEFAULT '-1',
  `mdl_n_codfabricante` int(11) NOT NULL DEFAULT '1',
  `mdl_d_datainclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mdl_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_mdl_mexmodelos`
--

LOCK TABLES `cas_mdl_mexmodelos` WRITE;
/*!40000 ALTER TABLE `cas_mdl_mexmodelos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_mdl_mexmodelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_prt_cierredia`
--

DROP TABLE IF EXISTS `cas_prt_cierredia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_prt_cierredia` (
  `prt_n_codigo` int(11) NOT NULL,
  `prt_b_entradacaixa` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_reforcocaixa` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_retiradacaixa` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradaticketcaixa` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradaticketmaquina` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradadinheiromaquina` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradatotal` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_salidashoy` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_salidasant` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_pagamentosmanuais` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_salidastot` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_saldo` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_premiospagos` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_deduccian1` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_deduccian2` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_saldocaixa` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_deduccianentrada` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_cortesias1` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_sinretornarhoy` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_sinretornarant` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_caducadossinret` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradacaixaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_reforcocaixaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_retiradacaixaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradaticketcaixaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradaticketmaquinaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradadinheiromaquinaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradatotalimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_salidashoyimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_salidasantimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_pagamentosmanuaisimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_salidastotimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_saldoimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_premiospagosimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_deduccian1imp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_deduccian2imp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_saldocaixaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_deduccianentradaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_cortesias1imp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_sinretornarhoyimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_sinretornarantimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_caducadossinretimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradascaixamovel` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_saidascaixamovel` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_promocoes` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_saidaspromocoes` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_diferencapromocoes` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_entradascaixamovelimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_saidascaixamovelimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_promocoesimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_saidaspromocoesimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_diferencapromocoesimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_resultadoparcial` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_resultadoparcialimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_rentabcaixa` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True',
  `prt_b_rentabcaixaimp` tinyint(1) DEFAULT '0' COMMENT '0-False, 1-True'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_prt_cierredia`
--

LOCK TABLES `cas_prt_cierredia` WRITE;
/*!40000 ALTER TABLE `cas_prt_cierredia` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_prt_cierredia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_amn_associaipmaquina`
--

DROP TABLE IF EXISTS `cas_amn_associaipmaquina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_amn_associaipmaquina` (
  `amn_c_ip` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `amn_n_modelo` int(11) NOT NULL,
  `amn_c_codigo` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`amn_c_ip`,`amn_c_codigo`),
  KEY `FK_cas_amn_associaipmaquina_cas_mdl_mexmodelos` (`amn_n_modelo`),
  CONSTRAINT `FK_cas_amn_associaipmaquina_cas_mdl_mexmodelos` FOREIGN KEY (`amn_n_modelo`) REFERENCES `cas_mdl_mexmodelos` (`mdl_n_codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_amn_associaipmaquina`
--

LOCK TABLES `cas_amn_associaipmaquina` WRITE;
/*!40000 ALTER TABLE `cas_amn_associaipmaquina` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_amn_associaipmaquina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_tpm_tipopromocoes`
--

DROP TABLE IF EXISTS `card_tpm_tipopromocoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_tpm_tipopromocoes` (
  `tpm_n_codigo` int(11) NOT NULL,
  `tpm_c_descricao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tpm_n_idioma` int(11) NOT NULL,
  PRIMARY KEY (`tpm_n_codigo`,`tpm_n_idioma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_tpm_tipopromocoes`
--

LOCK TABLES `card_tpm_tipopromocoes` WRITE;
/*!40000 ALTER TABLE `card_tpm_tipopromocoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_tpm_tipopromocoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_tra_transacao`
--

DROP TABLE IF EXISTS `cas_tra_transacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_tra_transacao` (
  `tra_n_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tra_n_secao` bigint(20) NOT NULL,
  `tra_n_operacao` int(11) NOT NULL,
  `tra_n_saldopontos` int(11) NOT NULL,
  `tra_n_saldocreditos` decimal(12,2) NOT NULL,
  `tra_n_saldobank` decimal(12,2) NOT NULL,
  `tra_n_dinheiroinserido` decimal(12,2) NOT NULL,
  `tra_b_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`tra_n_id`),
  KEY `FK_cas_tra_transacao_secao` (`tra_n_secao`),
  CONSTRAINT `FK_cas_tra_transacao_secao` FOREIGN KEY (`tra_n_secao`) REFERENCES `cas_sec_secao` (`sec_n_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_tra_transacao`
--

LOCK TABLES `cas_tra_transacao` WRITE;
/*!40000 ALTER TABLE `cas_tra_transacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_tra_transacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_cdc_mexcontabilidadecartoes`
--

DROP TABLE IF EXISTS `card_cdc_mexcontabilidadecartoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_cdc_mexcontabilidadecartoes` (
  `cdc_n_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cdc_c_ipmaquina` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cdc_n_hasta50` int(11) DEFAULT '0',
  `cdc_n_hasta51` int(11) DEFAULT '0',
  `cdc_n_hasta100` int(11) DEFAULT '0',
  `cdc_n_hasta250` int(11) DEFAULT '0',
  `cdc_n_hasta500` int(11) DEFAULT '0',
  `cdc_n_hasta1000` int(11) DEFAULT '0',
  `cdc_d_datafechamento` datetime DEFAULT NULL,
  `cdc_n_codmodelo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cdc_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_cdc_mexcontabilidadecartoes`
--

LOCK TABLES `card_cdc_mexcontabilidadecartoes` WRITE;
/*!40000 ALTER TABLE `card_cdc_mexcontabilidadecartoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_cdc_mexcontabilidadecartoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_mci_mexcierres`
--

DROP TABLE IF EXISTS `cas_mci_mexcierres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_mci_mexcierres` (
  `mci_n_interes` int(11) DEFAULT NULL,
  `mci_n_interesfederal` int(11) DEFAULT NULL,
  `mci_n_interesestatal` int(11) DEFAULT NULL,
  `mci_n_entrada` bigint(20) DEFAULT NULL,
  `mci_n_salida` bigint(20) DEFAULT NULL,
  `mci_n_salidasant` bigint(20) DEFAULT NULL,
  `mci_n_premiospagos` bigint(20) DEFAULT NULL,
  `mci_n_entradasmaquinas` bigint(20) DEFAULT NULL,
  `mci_n_retenidohoy` bigint(20) DEFAULT NULL,
  `mci_n_retenido60dias` bigint(20) DEFAULT NULL,
  `mci_n_retenidoborrados` bigint(20) DEFAULT NULL,
  `mci_n_cortesiadinero` bigint(20) DEFAULT NULL,
  `mci_n_cortesiabebidas` bigint(20) DEFAULT NULL,
  `mci_n_cortesiaaverias` bigint(20) DEFAULT NULL,
  `mci_d_fecha` datetime NOT NULL,
  `mci_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `mci_n_cierresofice` int(11) DEFAULT '0',
  `mci_n_entradasticket` bigint(20) NOT NULL,
  `mci_n_entradasdinheiro` decimal(12,2) NOT NULL,
  `mci_n_entradasticketcaixa` decimal(12,2) NOT NULL,
  `mci_n_salidaspgtomanual` bigint(20) NOT NULL,
  `mci_n_entradacaixa` decimal(12,2) DEFAULT NULL,
  `mci_n_reforcocaixa` decimal(12,2) DEFAULT NULL,
  `mci_n_retiradacaixa` decimal(12,2) DEFAULT NULL,
  `mci_n_clicodigo` int(11) DEFAULT NULL,
  `mci_n_codigo` int(11) NOT NULL,
  `mci_n_entradaspos` bigint(20) DEFAULT '0',
  `mci_n_saidaspos` bigint(20) DEFAULT '0',
  `mci_n_promocoes` bigint(20) DEFAULT '0',
  `mci_n_saidaspromocoes` bigint(20) DEFAULT '0',
  `mci_n_diferencapromocoes` bigint(20) DEFAULT '0',
  `mci_n_retirosefectivo` bigint(20) DEFAULT '0',
  `mci_n_retiroscupomb` bigint(20) DEFAULT '0',
  `mci_d_abertura` datetime DEFAULT NULL,
  `mci_n_cancelamento` bigint(20) DEFAULT '0',
  `mci_n_saldopromodia` decimal(12,2) DEFAULT '0.00',
  `mci_n_saldosaidapromo` decimal(12,2) DEFAULT '0.00',
  `mci_n_retidodevolucaoant` decimal(12,2) DEFAULT '0.00',
  `mci_n_codigoconsolidado` int(11) DEFAULT '0',
  PRIMARY KEY (`mci_d_fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_mci_mexcierres`
--

LOCK TABLES `cas_mci_mexcierres` WRITE;
/*!40000 ALTER TABLE `cas_mci_mexcierres` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_mci_mexcierres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_cfp_configpromocoes`
--

DROP TABLE IF EXISTS `card_cfp_configpromocoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_cfp_configpromocoes` (
  `cfp_n_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cfp_n_codtipopromocao` int(11) NOT NULL,
  `cfp_c_descricao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `cfp_d_datainicio` datetime NOT NULL,
  `cfp_d_datafim` datetime NOT NULL,
  `cfp_n_valorinicio` decimal(12,2) NOT NULL,
  `cfp_n_valorfim` decimal(12,2) NOT NULL,
  `cfp_n_valorpromocao` decimal(12,2) NOT NULL,
  `cfp_b_cobrarpercentualdep` tinyint(1) DEFAULT '0',
  `cfp_b_cobrancaunica` tinyint(1) DEFAULT '0',
  `cfp_b_cobrancaunicadia` tinyint(1) DEFAULT '0',
  `cfp_n_percentual` decimal(18,0) DEFAULT '0',
  PRIMARY KEY (`cfp_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_cfp_configpromocoes`
--

LOCK TABLES `card_cfp_configpromocoes` WRITE;
/*!40000 ALTER TABLE `card_cfp_configpromocoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_cfp_configpromocoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_moe_moedas`
--

DROP TABLE IF EXISTS `cas_moe_moedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_moe_moedas` (
  `moe_n_codmoeda` int(11) NOT NULL,
  `moe_c_descricao` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `moe_c_sigla` varchar(3) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_moe_moedas`
--

LOCK TABLES `cas_moe_moedas` WRITE;
/*!40000 ALTER TABLE `cas_moe_moedas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_moe_moedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_lot_locaiscotacoes`
--

DROP TABLE IF EXISTS `cas_lot_locaiscotacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_lot_locaiscotacoes` (
  `lot_n_codmoeda` int(11) NOT NULL,
  `lot_d_datacotacao` datetime NOT NULL,
  `lot_n_valor` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`lot_n_codmoeda`,`lot_d_datacotacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_lot_locaiscotacoes`
--

LOCK TABLES `cas_lot_locaiscotacoes` WRITE;
/*!40000 ALTER TABLE `cas_lot_locaiscotacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_lot_locaiscotacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_mvh_movimentoshist`
--

DROP TABLE IF EXISTS `cas_mvh_movimentoshist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_mvh_movimentoshist` (
  `mvh_c_code` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `mvh_n_tipomov` int(11) DEFAULT NULL,
  `mvh_n_valor` decimal(12,2) NOT NULL,
  `mvh_d_fecha` datetime NOT NULL,
  `mvh_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `mvh_n_cierresofice` int(11) DEFAULT '0',
  `mvh_c_ip` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `mvh_c_pos` varchar(16) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `mvh_c_transacao` varchar(21) COLLATE latin1_general_ci DEFAULT '0',
  `mvh_c_numerocartao` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `mvh_c_contaid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `mvh_n_modelo` int(11) DEFAULT NULL,
  `mvh_n_secao` bigint(20) DEFAULT NULL,
  KEY `idx_movimentoshist_fecha` (`mvh_d_fecha`),
  KEY `FK_cas_mvh_movimentoshist_secao` (`mvh_n_secao`),
  CONSTRAINT `FK_cas_mvh_movimentoshist_secao` FOREIGN KEY (`mvh_n_secao`) REFERENCES `cas_sec_secao` (`sec_n_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_mvh_movimentoshist`
--

LOCK TABLES `cas_mvh_movimentoshist` WRITE;
/*!40000 ALTER TABLE `cas_mvh_movimentoshist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_mvh_movimentoshist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_jog_jogadas`
--

DROP TABLE IF EXISTS `cas_jog_jogadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_jog_jogadas` (
  `jog_n_secao` bigint(20) NOT NULL,
  `jog_n_saldopontos` decimal(12,2) NOT NULL,
  `jog_n_saldocreditos` int(11) NOT NULL,
  `jog_n_saldobank` decimal(12,2) NOT NULL,
  `jog_n_valorjogado` decimal(12,2) NOT NULL,
  `jog_n_valorganhado` decimal(12,2) NOT NULL,
  `jog_d_data` datetime NOT NULL,
  KEY `FK_cas_jog_jogadas_secao` (`jog_n_secao`),
  CONSTRAINT `FK_cas_jog_jogadas_secao` FOREIGN KEY (`jog_n_secao`) REFERENCES `cas_sec_secao` (`sec_n_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_jog_jogadas`
--

LOCK TABLES `cas_jog_jogadas` WRITE;
/*!40000 ALTER TABLE `cas_jog_jogadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_jog_jogadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_cex_cartoescreditosexpirados`
--

DROP TABLE IF EXISTS `card_cex_cartoescreditosexpirados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_cex_cartoescreditosexpirados` (
  `cex_c_numerocartao` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `cex_d_dataexpirada` datetime NOT NULL,
  `cex_n_credito` int(11) DEFAULT NULL,
  `cex_c_contaid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `cex_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`cex_c_numerocartao`,`cex_d_dataexpirada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_cex_cartoescreditosexpirados`
--

LOCK TABLES `card_cex_cartoescreditosexpirados` WRITE;
/*!40000 ALTER TABLE `card_cex_cartoescreditosexpirados` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_cex_cartoescreditosexpirados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_cbi_contabilhetes`
--

DROP TABLE IF EXISTS `cas_cbi_contabilhetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_cbi_contabilhetes` (
  `cbi_d_data` datetime NOT NULL,
  `cbi_c_ip` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `cbi_n_modelo` int(11) NOT NULL,
  `cbi_n_pbilhete1` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_pbilhete2` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_pbilhete3` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_pbilhete4` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_pbilhete5` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_pbilhete6` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_pbilhete7` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_totalbilhete1` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_totalbilhete2` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_totalbilhete3` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_totalbilhete4` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_totalbilhete5` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_totalbilhete6` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_totalbilhete7` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_bilhete1` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_bilhete2` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_bilhete3` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_bilhete4` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_bilhete5` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_bilhete6` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_bilhete7` bigint(20) NOT NULL DEFAULT '0',
  `cbi_n_atual` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cbi_d_data`,`cbi_c_ip`,`cbi_n_modelo`),
  KEY `idx_contabilhetes_atual` (`cbi_n_atual`),
  KEY `idx_contabilhetes_fecha` (`cbi_d_data`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_cbi_contabilhetes`
--

LOCK TABLES `cas_cbi_contabilhetes` WRITE;
/*!40000 ALTER TABLE `cas_cbi_contabilhetes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_cbi_contabilhetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_hpt_historicopontos`
--

DROP TABLE IF EXISTS `cas_hpt_historicopontos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_hpt_historicopontos` (
  `hpt_c_cpf` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `hpt_c_ip` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `hpt_d_data` datetime NOT NULL,
  `hpt_n_saldoant` int(4) DEFAULT '0',
  `hpt_n_saldoatu` int(4) DEFAULT '0',
  `hpt_n_saldocredito` decimal(12,2) DEFAULT '0.00',
  `cas_hpt_historicopontoscol` varchar(45) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_hpt_historicopontos`
--

LOCK TABLES `cas_hpt_historicopontos` WRITE;
/*!40000 ALTER TABLE `cas_hpt_historicopontos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_hpt_historicopontos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_msg_mensagenserro`
--

DROP TABLE IF EXISTS `cas_msg_mensagenserro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_msg_mensagenserro` (
  `msg_n_codigo` int(11) NOT NULL,
  `msg_n_idioma` int(11) NOT NULL,
  `msg_c_descricao` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `msg_c_observacao` longtext COLLATE latin1_general_ci,
  `msg_t_rpub` datetime DEFAULT NULL,
  `msg_a_rsub` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_msg_mensagenserro`
--

LOCK TABLES `cas_msg_mensagenserro` WRITE;
/*!40000 ALTER TABLE `cas_msg_mensagenserro` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_msg_mensagenserro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_dno_notas_paises`
--

DROP TABLE IF EXISTS `cas_dno_notas_paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_dno_notas_paises` (
  `dno_n_pais_id` int(11) NOT NULL,
  `dno_c_nota1` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `dno_c_nota2` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `dno_c_nota3` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `dno_c_nota4` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `dno_c_nota5` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `dno_c_nota6` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `dno_c_nota7` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`dno_n_pais_id`),
  CONSTRAINT `FK_cas_dno_notas_paises_paises` FOREIGN KEY (`dno_n_pais_id`) REFERENCES `cas_pai_paises` (`pai_n_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_dno_notas_paises`
--

LOCK TABLES `cas_dno_notas_paises` WRITE;
/*!40000 ALTER TABLE `cas_dno_notas_paises` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_dno_notas_paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_cpr_mexcartoespremios`
--

DROP TABLE IF EXISTS `card_cpr_mexcartoespremios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_cpr_mexcartoespremios` (
  `cpr_n_premio` int(11) DEFAULT NULL,
  `cpr_n_imposto` int(11) DEFAULT NULL,
  `cpr_d_fechacierre` datetime DEFAULT NULL,
  `cpr_n_saldoatual` int(11) DEFAULT NULL,
  `cpr_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `cpr_c_numerocartao` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `cpr_c_transacao` varchar(18) COLLATE latin1_general_ci DEFAULT NULL,
  `cpr_n_codcierre` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_cpr_mexcartoespremios`
--

LOCK TABLES `card_cpr_mexcartoespremios` WRITE;
/*!40000 ALTER TABLE `card_cpr_mexcartoespremios` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_cpr_mexcartoespremios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_opf_operacaofechamento`
--

DROP TABLE IF EXISTS `card_opf_operacaofechamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_opf_operacaofechamento` (
  `opf_n_codigoprt` int(11) NOT NULL,
  `opf_b_tela` tinyint(1) DEFAULT NULL,
  `opf_b_impressao` tinyint(1) DEFAULT NULL,
  `opf_b_gerencial` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`opf_n_codigoprt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_opf_operacaofechamento`
--

LOCK TABLES `card_opf_operacaofechamento` WRITE;
/*!40000 ALTER TABLE `card_opf_operacaofechamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_opf_operacaofechamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_opc_operacaocartao`
--

DROP TABLE IF EXISTS `card_opc_operacaocartao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_opc_operacaocartao` (
  `opc_n_codoperacao` int(11) NOT NULL,
  `opc_c_numerocartao` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`opc_c_numerocartao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_opc_operacaocartao`
--

LOCK TABLES `card_opc_operacaocartao` WRITE;
/*!40000 ALTER TABLE `card_opc_operacaocartao` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_opc_operacaocartao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_pai_paises`
--

DROP TABLE IF EXISTS `cas_pai_paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_pai_paises` (
  `pai_n_codigo` int(11) NOT NULL,
  `pai_n_nome` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`pai_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_pai_paises`
--

LOCK TABLES `cas_pai_paises` WRITE;
/*!40000 ALTER TABLE `cas_pai_paises` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_pai_paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_hpg_historicopromocoes`
--

DROP TABLE IF EXISTS `card_hpg_historicopromocoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_hpg_historicopromocoes` (
  `hpg_d_data` datetime NOT NULL,
  `hpg_n_codigocliente` int(11) NOT NULL,
  `hpg_n_valorpromocao` int(11) NOT NULL,
  `hpg_n_codigopromocao` int(11) NOT NULL,
  `hpg_b_impressao` tinyint(1) DEFAULT '1',
  `hpg_c_transacao` varchar(18) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`hpg_d_data`,`hpg_n_codigocliente`),
  KEY `FK_card_hpg_historicopromocoes_card_cfp_configpromocoes` (`hpg_n_codigopromocao`),
  KEY `FK_card_hpg_historicopromocoes_cas_cli_clientes` (`hpg_n_codigocliente`),
  CONSTRAINT `FK_card_hpg_historicopromocoes_card_cfp_configpromocoes` FOREIGN KEY (`hpg_n_codigopromocao`) REFERENCES `card_cfp_configpromocoes` (`cfp_n_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_card_hpg_historicopromocoes_cas_cli_clientes` FOREIGN KEY (`hpg_n_codigocliente`) REFERENCES `cas_cli_clientes` (`cli_n_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_hpg_historicopromocoes`
--

LOCK TABLES `card_hpg_historicopromocoes` WRITE;
/*!40000 ALTER TABLE `card_hpg_historicopromocoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_hpg_historicopromocoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_cta_controlacesso`
--

DROP TABLE IF EXISTS `cas_cta_controlacesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_cta_controlacesso` (
  `cta_n_codigo` int(11) NOT NULL COMMENT 'Identificador do Registro.',
  `cta_n_codidioma` int(11) NOT NULL COMMENT 'Código do Idioma. 0-Português, 1-Espanhol, 2-Inglês, 3-Norueguês',
  `cta_n_codperfil` int(11) NOT NULL,
  `cta_n_systemtype` int(11) NOT NULL,
  `cta_c_comando` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `cta_c_descricao` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `cta_n_nivel` int(11) NOT NULL,
  `cta_n_codnivel1` int(11) DEFAULT NULL COMMENT 'Id do primeiro nível do menu do qual esse item é submenu.',
  `cta_n_codnivel2` int(11) DEFAULT NULL COMMENT 'Id do primeiro nível do menu do qual esse item é submenu.',
  `cta_n_codnivel3` int(11) DEFAULT NULL COMMENT 'Id do primeiro nível do menu do qual esse item é submenu.',
  `cta_n_tipo` int(11) NOT NULL,
  PRIMARY KEY (`cta_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_cta_controlacesso`
--

LOCK TABLES `cas_cta_controlacesso` WRITE;
/*!40000 ALTER TABLE `cas_cta_controlacesso` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_cta_controlacesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_fco_fechamentoconsolidado`
--

DROP TABLE IF EXISTS `cas_fco_fechamentoconsolidado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_fco_fechamentoconsolidado` (
  `fco_n_codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `fco_d_data` datetime DEFAULT NULL,
  `fco_n_clicodigo` int(11) NOT NULL,
  PRIMARY KEY (`fco_n_codigo`),
  KEY `FK_cas_fco_fechamentoconsolidado_cas_fco_fechamentoconsolidado` (`fco_n_clicodigo`),
  CONSTRAINT `FK_cas_fco_fechamentoconsolidado_cas_fco_fechamentoconsolidado` FOREIGN KEY (`fco_n_clicodigo`) REFERENCES `cas_cli_clientes` (`cli_n_codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_fco_fechamentoconsolidado`
--

LOCK TABLES `cas_fco_fechamentoconsolidado` WRITE;
/*!40000 ALTER TABLE `cas_fco_fechamentoconsolidado` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_fco_fechamentoconsolidado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_ope_operacoes`
--

DROP TABLE IF EXISTS `cas_ope_operacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_ope_operacoes` (
  `ope_n_codigo` int(11) DEFAULT NULL,
  `ope_c_descricao` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `ope_n_idioma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_ope_operacoes`
--

LOCK TABLES `cas_ope_operacoes` WRITE;
/*!40000 ALTER TABLE `cas_ope_operacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_ope_operacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_mcl_mexcontrolelogin`
--

DROP TABLE IF EXISTS `cas_mcl_mexcontrolelogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_mcl_mexcontrolelogin` (
  `mcl_n_codigo` int(11) NOT NULL,
  `mcl_c_maquina` varchar(16) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_mcl_mexcontrolelogin`
--

LOCK TABLES `cas_mcl_mexcontrolelogin` WRITE;
/*!40000 ALTER TABLE `cas_mcl_mexcontrolelogin` DISABLE KEYS */;
INSERT INTO `cas_mcl_mexcontrolelogin` VALUES (0,'0xff00ff00');
/*!40000 ALTER TABLE `cas_mcl_mexcontrolelogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_tip_tipopessoa`
--

DROP TABLE IF EXISTS `cas_tip_tipopessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_tip_tipopessoa` (
  `tip_n_codigo` int(11) NOT NULL,
  `tip_c_identificacao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tip_n_codigoidentificacao` int(11) NOT NULL,
  `tip_n_indvalidacpf` smallint(6) DEFAULT NULL,
  `tip_n_indnomeusuario` smallint(6) DEFAULT NULL,
  `tip_n_indapelidousuario` smallint(6) DEFAULT NULL,
  `tip_n_inddatanascimento` smallint(6) DEFAULT NULL,
  `tip_n_indnumerorg` smallint(6) DEFAULT NULL,
  `tip_n_indsexo` smallint(6) DEFAULT NULL,
  `tip_n_indestadocivil` smallint(6) DEFAULT NULL,
  `tip_n_indprofissao` smallint(6) DEFAULT NULL,
  `tip_n_indrenda` smallint(6) DEFAULT NULL,
  `tip_n_indbanco` smallint(6) DEFAULT NULL,
  `tip_n_indcadastrodesde` smallint(6) DEFAULT NULL,
  `tip_n_indemail` smallint(6) DEFAULT NULL,
  `tip_n_indcep` smallint(6) DEFAULT NULL,
  `tip_n_indendereco` smallint(6) DEFAULT NULL,
  `tip_n_indbairro` smallint(6) DEFAULT NULL,
  `tip_n_indcidade` smallint(6) DEFAULT NULL,
  `tip_n_indestado` smallint(6) DEFAULT NULL,
  `tip_n_indtelresidencial` smallint(6) DEFAULT NULL,
  `tip_n_indtelcomercial` smallint(6) DEFAULT NULL,
  `tip_n_indtelcelular` smallint(6) DEFAULT NULL,
  `tip_n_indnumero` smallint(6) DEFAULT NULL,
  `tip_n_indcomplemento` smallint(6) DEFAULT NULL,
  `tip_n_indreferencia` smallint(6) DEFAULT NULL,
  `tip_d_datainclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tip_d_dataalteracao` datetime DEFAULT NULL,
  `tip_c_numerocartaoinclusao` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `tip_c_numerocartaoalteracao` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`tip_n_codigo`,`tip_c_identificacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_tip_tipopessoa`
--

LOCK TABLES `cas_tip_tipopessoa` WRITE;
/*!40000 ALTER TABLE `cas_tip_tipopessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_tip_tipopessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_his_historicooperacao`
--

DROP TABLE IF EXISTS `cas_his_historicooperacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_his_historicooperacao` (
  `his_n_codigohistorico` int(11) NOT NULL AUTO_INCREMENT,
  `his_c_cpf` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `his_c_descricaotela` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `his_c_descricaooperacao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `his_d_datainclusao` datetime(6) DEFAULT NULL,
  `his_c_numticket` varchar(8) COLLATE latin1_general_ci DEFAULT '0',
  `his_n_codigooperacao` int(11) DEFAULT NULL,
  `his_n_valor` decimal(12,2) DEFAULT '0.00',
  `his_c_numerocartao` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `his_c_idtransacao` varchar(21) COLLATE latin1_general_ci DEFAULT NULL,
  `his_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`his_n_codigohistorico`),
  KEY `idx_historicooperacao_idtransacao` (`his_c_idtransacao`),
  KEY `idx_historicooperacao_ticket` (`his_c_numticket`,`his_d_datainclusao`,`his_n_codigooperacao`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_his_historicooperacao`
--

LOCK TABLES `cas_his_historicooperacao` WRITE;
/*!40000 ALTER TABLE `cas_his_historicooperacao` DISABLE KEYS */;
INSERT INTO `cas_his_historicooperacao` VALUES (3,'333333','Create Ticket','Create: 5880118 Valor: 50.00','2013-04-18 17:18:29.744898','5880118',1,500.00,'0','','F04DA2E5208C'),(4,'333333','Crear Ticket','Add credit: 7698911 Valor: 58.00','2013-04-19 09:57:50.759939','5880118',1,5800.00,'0','','F04DA2E5208C'),(5,'333333','Crear Ticket','Crear: 5880118 Valor: 58.00','2013-04-22 10:27:43.232472','5880333',1,5800.00,'0','','F04DA2E5208C'),(6,'333333','Crear Ticket','Add credit: 7698911 Valor: 58.00','2013-04-22 11:27:45.690824','5880333',1,5800.00,'0','','F04DA2E5208C'),(7,'333333','Close Ticket','Close: 3958363 Valor: 100.00','2013-04-22 11:36:18.310292','5880333',4,10000.00,'0','395836320130416111100','F04DA2E5208C'),(8,'333333','Crear Ticket','Crear: 5880118 Valor: 58.00','2013-04-25 15:50:33.551666','5880666',1,5800.00,'0','','F04DA2E5208C'),(9,'333333','Crear Ticket','Crear: 5880118 Valor: 58.00','2013-04-26 09:38:02.350473','5880667',1,5800.00,'0','','F04DA2E5208C'),(10,'333333','Crear Ticket','Crear: 5880118 Valor: 58.00','2013-04-26 10:04:40.120181','5880668',1,3000.00,'0','','F04DA2E5208C'),(11,'333333','Crear Ticket','Crear: 5880118 Valor: 58.00','2013-04-26 10:05:58.347564','5880668',1,3000.00,'0','','F04DA2E5208C'),(12,'333333','Crear Ticket','Crear: 5880118 Valor: 58.00','2013-04-26 10:14:54.247836','5880669',1,200.00,'0','','F04DA2E5208C'),(13,'333333','Crear Ticket','Crear: 5880118 Valor: 58.00','2013-04-26 10:36:28.415529','5880670',1,200.00,'0','','F04DA2E5208C'),(80,'3333333','Create Ticket','Create: 1637232 Net: 50.01','2013-04-30 12:42:58.726641','1637232',1,0.00,'','',''),(81,'3333333','Create Ticket','Create: 5614383 Net: 50.01','2013-04-30 12:43:47.642302','5614383',1,0.00,'','',''),(82,'11111111111','Crear Ticket','Crear: 99999998 Valor: 200.32','2013-05-02 16:21:26.084601','99999998',1,200.32,'0','','F04DA2E5208C');
/*!40000 ALTER TABLE `cas_his_historicooperacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_esp_estatisticapar`
--

DROP TABLE IF EXISTS `cas_esp_estatisticapar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_esp_estatisticapar` (
  `esp_d_data` datetime NOT NULL,
  `esp_c_ip` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `esp_n_modelo` int(11) NOT NULL,
  `esp_n_numjogadas` bigint(20) NOT NULL DEFAULT '0',
  `esp_n_cartoesjogados` bigint(20) NOT NULL DEFAULT '0',
  `esp_n_jogadaspremiadas` bigint(20) NOT NULL DEFAULT '0',
  `esp_n_premio1` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio2` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio3` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio4` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio5` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio6` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio7` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio8` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio9` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio10` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio11` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio12` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio13` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio14` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio15` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio16` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio17` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio18` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio19` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio20` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio21` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio22` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio23` int(4) NOT NULL DEFAULT '0',
  `esp_n_premio24` int(4) NOT NULL DEFAULT '0',
  `esp_n_porcentage` decimal(4,2) NOT NULL DEFAULT '0.00',
  `esp_n_creditosextra` decimal(8,2) NOT NULL DEFAULT '0.00',
  `esp_n_comprabolaextra` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`esp_d_data`,`esp_c_ip`,`esp_n_modelo`),
  KEY `idx_estatisticapar_fecha` (`esp_d_data`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_esp_estatisticapar`
--

LOCK TABLES `cas_esp_estatisticapar` WRITE;
/*!40000 ALTER TABLE `cas_esp_estatisticapar` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_esp_estatisticapar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_tcm_ticketsexcluidos`
--

DROP TABLE IF EXISTS `cas_tcm_ticketsexcluidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_tcm_ticketsexcluidos` (
  `tcm_c_code` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `tcm_n_encript` int(11) NOT NULL,
  `tcm_n_entrada` int(11) NOT NULL,
  `tcm_n_salida` int(11) NOT NULL,
  `tcm_n_saldo` int(11) NOT NULL,
  `tcm_n_activa` int(11) NOT NULL,
  `tcm_n_blocked` int(11) NOT NULL,
  `tcm_d_fecha` datetime NOT NULL,
  `tcm_n_actualdia` int(11) NOT NULL,
  `tcm_d_fechacierre` datetime DEFAULT NULL,
  `tcm_n_valorcredmaquina` decimal(12,2) DEFAULT NULL,
  `tcm_n_valorcredoper` decimal(12,2) DEFAULT NULL,
  `tcm_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `tcm_n_valordinmaquina` decimal(12,2) DEFAULT NULL,
  `tcm_n_valorentcaixa` decimal(12,2) DEFAULT NULL,
  `tcm_n_saldocierre` decimal(12,2) DEFAULT NULL,
  `tcm_n_promocao` bit(1) NOT NULL DEFAULT b'0',
  `tcm_n_cortesia` bit(1) NOT NULL DEFAULT b'0',
  `tcm_n_saldoant` decimal(12,2) DEFAULT '0.00',
  `tcm_n_codecliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`tcm_c_code`,`tcm_d_fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_tcm_ticketsexcluidos`
--

LOCK TABLES `cas_tcm_ticketsexcluidos` WRITE;
/*!40000 ALTER TABLE `cas_tcm_ticketsexcluidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_tcm_ticketsexcluidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_tck_mextickets`
--

DROP TABLE IF EXISTS `cas_tck_mextickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_tck_mextickets` (
  `tck_c_code` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `tck_n_encript` int(11) NOT NULL,
  `tck_n_entrada` decimal(18,2) NOT NULL,
  `tck_n_salida` decimal(18,2) NOT NULL,
  `tck_n_saldo` decimal(18,2) NOT NULL,
  `tck_n_activa` int(11) NOT NULL,
  `tck_n_blocked` int(11) NOT NULL,
  `tck_d_fecha` datetime(6) DEFAULT NULL,
  `tck_n_actualdia` decimal(18,2) NOT NULL,
  `tck_d_fechacierre` datetime(6) DEFAULT NULL,
  `tck_n_valorcredmaquina` decimal(18,2) DEFAULT NULL,
  `tck_n_valorcredoper` decimal(18,2) DEFAULT NULL,
  `tck_c_maquina` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `tck_n_valordinmaquina` decimal(18,2) DEFAULT NULL,
  `tck_n_valorentcaixa` decimal(18,2) DEFAULT NULL,
  `tck_n_saldocierre` decimal(18,2) DEFAULT NULL,
  `tck_n_promocao` tinyint(1) NOT NULL DEFAULT '0',
  `tck_n_cortesia` tinyint(1) NOT NULL DEFAULT '0',
  `tck_n_saldoant` decimal(18,2) DEFAULT '0.00',
  `tck_n_codecliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`tck_c_code`),
  KEY `idx_mexticket_fecha` (`tck_d_fecha`),
  KEY `idx_mextickets_maquina` (`tck_c_maquina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_tck_mextickets`
--

LOCK TABLES `cas_tck_mextickets` WRITE;
/*!40000 ALTER TABLE `cas_tck_mextickets` DISABLE KEYS */;
INSERT INTO `cas_tck_mextickets` VALUES ('1637232',0,50.01,0.00,50.01,1,0,'2013-04-30 12:42:58.664143',1.00,NULL,0.00,0.00,'FF00FF00FF00',0.00,50.01,NULL,0,0,0.00,1),('5614383',0,50.01,0.00,50.01,1,0,'2013-04-30 12:43:47.584759',1.00,NULL,0.00,0.00,'FF00FF00FF00',0.00,50.01,NULL,0,0,0.00,1),('5880670',0,700.80,700.80,0.00,0,0,'2013-04-26 10:34:27.632453',1.00,'2013-04-26 11:11:19.261319',0.00,0.00,'F04DA2E5208C',0.00,700.80,NULL,0,0,0.00,0),('99999998',0,200.32,0.00,200.32,1,0,'2013-05-02 16:21:26.001620',1.00,NULL,0.00,0.00,'F04DA2E5208C',0.00,200.32,NULL,0,0,0.00,0);
/*!40000 ALTER TABLE `cas_tck_mextickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_mcu_mexcontroleusuario`
--

DROP TABLE IF EXISTS `cas_mcu_mexcontroleusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_mcu_mexcontroleusuario` (
  `mcu_n_codigousuario` int(11) NOT NULL,
  `mcu_n_numerotentativa` int(11) NOT NULL,
  `mcu_d_dataoperacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_mcu_mexcontroleusuario`
--

LOCK TABLES `cas_mcu_mexcontroleusuario` WRITE;
/*!40000 ALTER TABLE `cas_mcu_mexcontroleusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_mcu_mexcontroleusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_cpg_contapagomanual`
--

DROP TABLE IF EXISTS `cas_cpg_contapagomanual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_cpg_contapagomanual` (
  `cpg_d_data` datetime NOT NULL,
  `cpg_c_ip` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `cpg_n_modelo` int(11) NOT NULL,
  `cpg_n_pnummanuales` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_pretiradas` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_pretiradasdinheiro` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_pretiradascartoes` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_ppagomanual` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_totalnummanuales` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_totalretiradas` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_totalretiradasdinheiro` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_totalretiradascartoes` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_totalpagomanual` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_nummanuales` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_retiradas` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_retiradasdinheiro` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_retiradascartoes` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_pagomanual` bigint(20) NOT NULL DEFAULT '0',
  `cpg_n_atual` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cpg_d_data`,`cpg_c_ip`,`cpg_n_modelo`),
  KEY `idx_contapagomanual_dataip` (`cpg_c_ip`,`cpg_d_data`),
  KEY `idx_contapagomanual_fecha` (`cpg_d_data`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_cpg_contapagomanual`
--

LOCK TABLES `cas_cpg_contapagomanual` WRITE;
/*!40000 ALTER TABLE `cas_cpg_contapagomanual` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_cpg_contapagomanual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_mco_mexconta`
--

DROP TABLE IF EXISTS `cas_mco_mexconta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_mco_mexconta` (
  `mco_n_entradas` bigint(20) DEFAULT NULL,
  `mco_n_salidas` bigint(20) DEFAULT NULL,
  `mco_n_pentradas` bigint(20) DEFAULT NULL,
  `mco_n_psalidas` bigint(20) DEFAULT NULL,
  `mco_n_modelo` int(11) NOT NULL,
  `mco_n_jugado` bigint(20) DEFAULT NULL,
  `mco_n_ganado` decimal(12,2) DEFAULT NULL,
  `mco_n_numacumulado` int(4) DEFAULT NULL,
  `mco_n_acumulado` decimal(12,2) DEFAULT NULL,
  `mco_n_numsacumulado` int(4) DEFAULT NULL,
  `mco_n_sacumulado` decimal(12,2) DEFAULT NULL,
  `mco_d_fecha` datetime NOT NULL,
  `mco_c_ip` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `mco_n_totalentradas` bigint(20) DEFAULT NULL,
  `mco_n_totalsalidas` bigint(20) DEFAULT NULL,
  `mco_n_totalpentradas` bigint(20) DEFAULT NULL,
  `mco_n_totalpsalidas` bigint(20) DEFAULT NULL,
  `mco_n_totalmodelo` int(4) DEFAULT NULL,
  `mco_n_totaljugado` bigint(20) DEFAULT NULL,
  `mco_n_totalganado` decimal(12,2) DEFAULT NULL,
  `mco_n_totalnumacumulado` bigint(20) DEFAULT NULL,
  `mco_n_totalacumulado` decimal(12,2) DEFAULT NULL,
  `mco_n_totalnumsacumulado` int(4) DEFAULT NULL,
  `mco_n_totalsacumulado` decimal(12,2) DEFAULT NULL,
  `mco_n_jugadoparcial` bigint(20) NOT NULL DEFAULT '0',
  `mco_n_ganadoparcial` decimal(12,2) NOT NULL DEFAULT '0.00',
  `mco_n_atual` int(11) DEFAULT '1',
  `mco_c_code` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `mco_n_secao` bigint(20) NOT NULL DEFAULT '1',
  `mco_n_saldo_acumulado` decimal(12,2) NOT NULL DEFAULT '0.00',
  `mco_n_saida_sirprize_parcial` bigint(20) NOT NULL DEFAULT '0',
  `mco_n_saida_sirprize_total` bigint(20) NOT NULL DEFAULT '0',
  `mco_n_saida_sirprize` bigint(20) NOT NULL DEFAULT '0',
  `mco_c_cpunumber` varchar(17) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mco_n_modelo`,`mco_d_fecha`,`mco_c_ip`),
  KEY `idx_mexconta_atual` (`mco_n_atual`),
  KEY `idx_mexconta_fecha` (`mco_d_fecha`),
  KEY `idx_mexconta_fechaip` (`mco_c_ip`,`mco_d_fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_mco_mexconta`
--

LOCK TABLES `cas_mco_mexconta` WRITE;
/*!40000 ALTER TABLE `cas_mco_mexconta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_mco_mexconta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_ctu_cartoesutilizados`
--

DROP TABLE IF EXISTS `card_ctu_cartoesutilizados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_ctu_cartoesutilizados` (
  `ctu_c_codcasa` varchar(4) COLLATE latin1_general_ci NOT NULL,
  `ctu_c_numerocartao` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ctu_c_cpf` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `ctu_d_data` datetime DEFAULT NULL,
  PRIMARY KEY (`ctu_c_codcasa`,`ctu_c_numerocartao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_ctu_cartoesutilizados`
--

LOCK TABLES `card_ctu_cartoesutilizados` WRITE;
/*!40000 ALTER TABLE `card_ctu_cartoesutilizados` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_ctu_cartoesutilizados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_aap_associaatendentexpos`
--

DROP TABLE IF EXISTS `cas_aap_associaatendentexpos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_aap_associaatendentexpos` (
  `aap_n_codigoatendente` int(11) NOT NULL,
  `aap_c_codigopos` varchar(16) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`aap_n_codigoatendente`,`aap_c_codigopos`),
  KEY `FK__cas_aap_a__aap_c__719CDDE7` (`aap_c_codigopos`),
  CONSTRAINT `FK__cas_aap_a__aap_c__719CDDE7` FOREIGN KEY (`aap_c_codigopos`) REFERENCES `cas_pos_pos` (`pos_c_identificacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__cas_aap_a__aap_n__70A8B9AE` FOREIGN KEY (`aap_n_codigoatendente`) REFERENCES `cas_cli_clientes` (`cli_n_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_aap_associaatendentexpos`
--

LOCK TABLES `cas_aap_associaatendentexpos` WRITE;
/*!40000 ALTER TABLE `cas_aap_associaatendentexpos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_aap_associaatendentexpos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_tcc_tipocartaocontrole`
--

DROP TABLE IF EXISTS `card_tcc_tipocartaocontrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_tcc_tipocartaocontrole` (
  `tcc_n_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `tcc_b_indcartaoreutilizavel` tinyint(1) DEFAULT NULL,
  `tcc_b_indalterasenha` tinyint(1) DEFAULT NULL,
  `tcc_n_validadesenha` int(11) DEFAULT NULL,
  `tcc_b_indpermitedebito` tinyint(1) DEFAULT NULL,
  `tcc_b_indpermitecredito` tinyint(1) DEFAULT NULL,
  `tcc_b_indcreditoinicial` tinyint(1) DEFAULT NULL,
  `tcc_n_modelo` int(11) DEFAULT NULL,
  `tcc_d_datavigencia` datetime DEFAULT NULL,
  `tcc_d_datainclusao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tcc_d_dataalteracao` datetime DEFAULT NULL,
  `tcc_c_numerocartaoinclusao` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `tcc_b_status` tinyint(1) DEFAULT '1',
  `tcc_n_valorcreditoinicial` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`tcc_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_tcc_tipocartaocontrole`
--

LOCK TABLES `card_tcc_tipocartaocontrole` WRITE;
/*!40000 ALTER TABLE `card_tcc_tipocartaocontrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_tcc_tipocartaocontrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_mod_modalidades`
--

DROP TABLE IF EXISTS `cas_mod_modalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_mod_modalidades` (
  `mod_n_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mod_c_descricao` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`mod_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_mod_modalidades`
--

LOCK TABLES `cas_mod_modalidades` WRITE;
/*!40000 ALTER TABLE `cas_mod_modalidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_mod_modalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_emp_emailpendentes`
--

DROP TABLE IF EXISTS `cas_emp_emailpendentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_emp_emailpendentes` (
  `emp_n_codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_c_caminhofechamento` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `emp_c_caminhodetalhe` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `emp_c_caminhocontabil` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `emp_c_caminhocontabilpgmanual` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `emp_c_caminhocontabilpgmanualpdf` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `emp_c_caminhocontabilpdf` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `emp_d_data` datetime NOT NULL,
  `emp_n_codmodalidade` smallint(6) NOT NULL DEFAULT '-1',
  `emp_c_caminhoticketsinvalidos` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `emp_b_fechamentoconsolidado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`emp_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_emp_emailpendentes`
--

LOCK TABLES `cas_emp_emailpendentes` WRITE;
/*!40000 ALTER TABLE `cas_emp_emailpendentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_emp_emailpendentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_maq_maquina`
--

DROP TABLE IF EXISTS `cas_maq_maquina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_maq_maquina` (
  `maq_c_codigo` varchar(7) COLLATE latin1_general_ci DEFAULT NULL,
  `maq_c_ipmaquina` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `maq_n_codmodelo` int(11) DEFAULT NULL,
  `maq_b_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_maq_maquina`
--

LOCK TABLES `cas_maq_maquina` WRITE;
/*!40000 ALTER TABLE `cas_maq_maquina` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas_maq_maquina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas_cli_clientes`
--

DROP TABLE IF EXISTS `cas_cli_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas_cli_clientes` (
  `cli_n_codigo` int(11) NOT NULL,
  `cli_c_usuario` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `cli_c_senha` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `cli_n_tipologin` int(11) DEFAULT NULL,
  `cli_c_cpf` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `cli_c_name` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_nickname` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_street` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_streetnum` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_complemento` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_zona` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_city` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_state` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_postalcode` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_birthday` date DEFAULT NULL,
  `cli_c_sex` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_civilstate` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_profesion` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_codtelefon` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_telefon` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_codtelcelular` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_telcelular` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_codtelcomercial` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_telcomercial` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_codfax` varchar(3) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_fax` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_lastfrombankerid` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_lastfromnumerocartao` varchar(16) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_rg` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_n_situacao` int(11) DEFAULT NULL,
  `cli_n_creditosjogados` int(11) DEFAULT '0',
  `cli_n_pontos` int(11) DEFAULT '0',
  `cli_n_pontosusados` int(11) DEFAULT '0',
  `cli_c_data` varchar(19) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_d_rpub` datetime DEFAULT NULL,
  `cli_c_rsub` longblob,
  `cli_c_banco` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_clientedesde` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_foneref2` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_nomeref2` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_nomeref` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_renda` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_tipopessoa` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_c_foneref` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_n_bloqueado` int(11) DEFAULT '0',
  `cli_c_digitado` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `cli_b_expirasenha` tinyint(1) DEFAULT '0',
  `cli_n_diasenha` int(11) DEFAULT '0',
  `cli_d_datasenha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cli_b_enviadointernet` tinyint(1) DEFAULT '0',
  `cli_n_codigointernet` int(11) DEFAULT NULL,
  `cli_n_codigoclienteinclusao` int(11) DEFAULT NULL,
  PRIMARY KEY (`cli_c_cpf`),
  UNIQUE KEY `IX_cas_cli_clientes` (`cli_n_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas_cli_clientes`
--

LOCK TABLES `cas_cli_clientes` WRITE;
/*!40000 ALTER TABLE `cas_cli_clientes` DISABLE KEYS */;
INSERT INTO `cas_cli_clientes` VALUES (0,'admin','644178114313429135972293472238730138',NULL,'333333','Admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,1,NULL,0,0,'2013-02-20 21:54:07',0,NULL,NULL);
/*!40000 ALTER TABLE `cas_cli_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ticket'
--
/*!50003 DROP PROCEDURE IF EXISTS `new_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`( _int_modelo INT)
BEGIN



DECLARE _var_retorno CHAR(50);

SELECT IFNULL(cli_n_tipologin, 'VAZIO') INTO _var_retorno 
FROM cas_cli_clientes LIMIT 1;

SELECT _var_retorno;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p`(_testeMilhar DECIMAL(18,2))
BEGIN

SELECT _testeMilhar;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_c_calculadigito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_c_calculadigito`(IN vch_wsnovacontaid VARCHAR(20), 
																	 OUT vch_dv VARCHAR(2)
)
BEGIN

DECLARE int_n, int_itemp, int_n1, int_result, int_wpesos INT;
DECLARE vch_wdv VARCHAR(2);

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

SET int_n = 1;
SET int_itemp = 0;
SET int_n1 = 1;

WHILE  int_n1 <= 8  DO
SELECT int_wpesos = 
			CASE int_n1
				WHEN 1 THEN 6
				WHEN 2 THEN 3
				WHEN 3 THEN 7
				WHEN 4 THEN 9
				WHEN 5 THEN 10
				WHEN 6 THEN 5
				WHEN 7 THEN 8
				WHEN 8 THEN 4
			END;
SET int_itemp = int_itemp + ASCII(CAST(SUBSTRING(vch_wsnovacontaid,(11 - int_n1), 1) AS SIGNED));
SET int_n1 = int_n1 + 1;
END WHILE;

SET int_n = 2;

SET int_itemp = 11 - int_itemp % 11;

IF (int_itemp > 9) THEN
		SET int_itemp = 1 - int_itemp % 10;
		END IF;
SET vch_wdv = CAST((int_result * 10 + int_itemp) AS CHAR(2));

SET vch_dv = vch_wdv;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_c_ckpassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_c_ckpassword`(	vch_contaid VARCHAR(10),
													vch_numerocartao VARCHAR(20),
													vch_passcompara	VARCHAR(6),
													OUT vch_mensagem VARCHAR(100))
BEGIN
	DECLARE int_n, int_wtipoconta,int_wpasstryreg, int_wpasstry	 INT;
	DECLARE vch_wpassword VARCHAR(6);
	
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

	
	SET int_n = 1;
	
	SELECT 
		vch_wpassword = IFNULL(ctf_c_password, 0),		int_wpasstry = ctf_n_passtry, 
		int_wpasstryreg = ctf_n_passtry,				int_wtipoconta = ctf_n_tipoconta
		FROM card_ctf_cartoesfidelidade
		WHERE ctf_c_contaid = vch_contaid
			AND ctf_c_numerocartao = vch_numerocartao;

	IF (vch_wpassword <> vch_passcompara) THEN
		SET vch_mensagem = '8';
		SET int_wpasstry = int_wpasstry + 1;
	
		IF (int_wtipoconta = 0
			AND int_wpasstry = 1) THEN
 			SET vch_mensagem = '132';
		END IF;
	 		
		IF (int_wtipoconta = 0
			AND int_wpasstry = 2) THEN
			SET vch_mensagem = '133';
		END IF;

		IF (int_wtipoconta = 1
			AND int_wpasstry = 3) THEN
			SET vch_mensagem = '132';
		END IF;

		IF (int_wtipoconta = 1
			AND int_wpasstry = 4) THEN
			SET vch_mensagem = '133';
		END IF;

		SET int_n = 2;
		UPDATE card_ctf_cartoesfidelidade 
		SET
			ctf_n_passtry = int_wpasstry,		
			ctf_c_digitado = vch_passcompara
			WHERE ctf_c_contaid = vch_contaid
				AND ctf_c_numerocartao = vch_numerocartao;

		IF (int_wpasstry  = 3
			AND int_wtipoconta = 0) THEN
			SET vch_mensagem = '138';
			SET int_n = 3;
			UPDATE card_ctf_cartoesfidelidade 
			SET 
				ctf_n_situacao = 1004,			
				ctf_c_digitado = vch_passcompara
				WHERE ctf_c_contaid = vch_contaid
				AND ctf_c_numerocartao = vch_numerocartao;
		END IF;

		IF (int_wpasstry  = 4
			AND int_wtipoconta = 0) THEN
			SET vch_mensagem = '121';
		END IF;
		
		IF (int_wpasstry = 5
			AND int_wtipoconta = 1) THEN
			SET vch_mensagem = '138';
			SET int_n = 4;
			UPDATE card_ctf_cartoesfidelidade 
			SET 
				ctf_n_situacao = 1004,			
				ctf_c_digitado = vch_passcompara 
				WHERE ctf_c_contaid = vch_contaid 
				AND ctf_c_numerocartao = vch_numerocartao;
		END IF;
		
		IF (int_wpasstry = 6
			AND int_wtipoconta = 1) THEN
			SET vch_mensagem = '121';
		ELSEIF (int_wpasstryreg <> 0) THEN
			SET int_n = 5;
  			UPDATE card_ctf_cartoesfidelidade 
			SET 
  				ctf_n_passtry = 0,
				ctf_c_digitado = vch_passcompara
  				WHERE ctf_c_contaid = vch_contaid
  				AND ctf_c_numerocartao = vch_numerocartao;
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_c_codigocasa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_c_codigocasa`()
BEGIN
	DECLARE int_n, int_codigocasa INT;

	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

	SET int_n = 1;
	
	IF EXISTS(SELECT stp_n_codcasa FROM cas_stp_systemtype) THEN
		SELECT int_codigocasa = stp_n_codcasa 
		FROM cas_stp_systemtype LIMIT 1;
	ELSE
		SELECT int_codigocasa = 0;
	END IF;

	SELECT int_codigocasa AS CodigoCasa;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_c_lotecartao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_c_lotecartao`(
											vch_codlote	VARCHAR(20),	
											OUT vch_mensagem	VARCHAR(100))
BEGIN

DECLARE _int_n INT;

	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	
	SET _int_n = 1;
	
	IF EXISTS(SELECT clt_c_codlote 
				FROM card_clt_cartoeslote 
				WHERE clt_c_codlote = vch_codlote) THEN
		SET vch_mensagem = '1';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_c_verificacartao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_c_verificacartao`(
														vch_numerocartao VARCHAR(20),
														OUT vch_mensagem VARCHAR(100)
)
BEGIN

			DECLARE
			int_situacao,  
			int_wDiasRestantes, 
			int_wdias,
			int_creditosexpirados, 
			int_bloqueado,
			int_codmodelo, 
			int_n
			INT;

			DECLARE
			dtm_wdatacartao	DATETIME;

	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;


	
	
	SET int_n = 1;
	IF EXISTS(SELECT ctu_c_numerocartao
				FROM card_ctu_cartoesutilizados
				WHERE LTRIM(RTRIM(ctu_c_numerocartao)) = vch_numerocartao) 
	THEN
		SET int_n = 2;
		
		
		IF EXISTS(SELECT ctf_c_numerocartao 
					FROM card_ctf_cartoesfidelidade 
					WHERE ctf_c_numerocartao = vch_numerocartao) 
		THEN
			SET int_n = 3;

					
					SELECT int_situacao = ctf_n_situacao, int_codmodelo = ctf_n_tipoconta, int_bloqueado = ctf_n_bloqueado
								FROM card_ctf_cartoesfidelidade 
								WHERE ctf_c_numerocartao = vch_numerocartao;

					
					IF (int_situacao = 1002 
						OR int_situacao = 0) THEN

						SET int_n = 4;
						CALL p_cas_c_resultado(103, vch_mensagem);
						
						SET int_n = 5;
						SELECT 0 AS creditosexpirados, int_codmodelo AS codmodelo, '' AS erro, int_bloqueado AS bloqueado;

					END IF;

				
				IF (int_situacao = 1003) THEN
					SET int_n = 6;
					CALL p_cas_c_resultado(236, vch_mensagem);
					SET int_n = 7;
					SELECT 0 AS creditosexpirados, int_codmodelo AS codmodelo, '' AS erro, int_bloqueado AS bloqueado;
				END IF;

				
				IF (int_situacao = 1004)
				THEN
					SET int_n = 8;
					CALL p_cas_c_resultado(121, vch_mensagem);
					SET int_n = 9;
					SELECT 0 AS creditosexpirados, int_codmodelo AS codmodelo, '121' AS erro, int_bloqueado AS bloqueado;
				END IF;

				
				IF (int_situacao = 1005) 
				THEN
					SET int_n = 10;
					CALL p_cas_c_resultado(237, vch_mensagem);
					SET int_n = 11;
					SELECT 0 AS creditosexpirados, int_codmodelo AS codmodelo, '' AS erro, int_bloqueado AS bloqueado;
				END IF;

				
				IF (int_situacao = 1006) THEN
					SET int_n = 12;
					CALL p_cas_c_resultado(238, vch_mensagem);
					SET int_n = 13;
					SELECT 0 AS creditosexpirados, int_codmodelo AS codmodelo, '1006' AS erro, int_bloqueado AS bloqueado;
				END IF;

				SET int_n = 14;
				
				
					SELECT dtm_wdatacartao = ctf_d_iniciouso 
					FROM card_ctf_cartoesfidelidade 
					WHERE ctf_c_numerocartao = vch_numerocartao;

					SET int_wDiasRestantes = DATEDIFF(dtm_wdatacartao, NOW());

					SET int_n = 15;
					SELECT int_wdias = prt_n_dias
					FROM cas_prt_mexparametros
					WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
													FROM cas_prt_mexparametros
													WHERE prt_d_datavigencia <= NOW());

				IF ((int_wdias - int_wDiasRestantes) < 0)
				THEN
					SET vch_mensagem = 'EXPIRADO';
					SET int_n = 16;
					SELECT int_creditosexpirados = ctf_n_credito
						FROM card_ctf_cartoesfidelidade
						WHERE ctf_c_numerocartao = vch_numerocartao;

					SET int_n = 17;
					SELECT int_creditosexpirados AS creditosexpirados, int_codmodelo AS codmodelo, '242' AS erro, @int_bloqueado AS bloqueado;
				END	IF;

				SET int_n = 18;
				SELECT 0 AS creditosexpirados, int_codmodelo AS codmodelo, '' AS erro, int_bloqueado AS bloqueado;
		ELSE 
			BEGIN
				SET int_n = 19;
				CALL  p_cas_c_resultado(104,vch_mensagem);
				SET int_n = 20;
				SELECT 0 AS creditosexpirados, 99 AS codmodelo, '104' AS erro, 0 AS bloqueado;
			END;
		END IF;
	ELSE
		SET int_n = 21;
		
		
		IF EXISTS((SELECT ctd_c_numerocartao 
					FROM card_ctd_cartoesdisponiveis
					WHERE LTRIM(RTRIM(ctd_c_numerocartao)) = vch_numerocartao)) THEN
				
			SET int_n = 22;
			CALL p_cas_c_resultado(235, vch_mensagem);
			SET int_n = 23;
			SELECT 0 AS creditosexpirados, 99 AS codmodelo, '235' AS erro, 0 AS bloqueado;
		ELSE
			SET int_n = 24;
			CALL p_cas_c_resultado(104, vch_mensagem);
			SET int_n = 25;
			SELECT 0 AS creditosexpirados, 99 AS codmodelo, '104' AS erro, 0 AS bloqueado;
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_c_verificacartaomachine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_c_verificacartaomachine`(int_situacao INT)
BEGIN

	DECLARE int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

	IF (@int_situacao IS NULL) THEN
	SET int_n = 235;
	CALL RaiseCustomError(int_n, "Situação Desconhecida.");
	
	END IF;


	
	IF (int_situacao = 1002
	OR int_situacao = 0) THEN
	SET int_n = 103;
	CALL RaiseCustomError(int_n, "Cartão Bloqueado.");
	END IF;
	
	
	IF (int_situacao = 1003) THEN
	SET int_n = 236;
	CALL RaiseCustomError(int_n, "Cartão Transferido.");	
	END IF;
	
	
	IF (int_situacao = 1004) THEN
	SET int_n = 121;
	CALL RaiseCustomError(int_n, "Cartão Bloqueado por Erro de Senhas.");	
	END IF;

	
	IF (int_situacao = 1005)  THEN
		SET int_n = 237;
		CALL RaiseCustomError(int_n, "Cartão Cancelado.");
		END IF;

	
	IF (int_situacao = 1006) THEN
		SET int_n = 238;
		CALL RaiseCustomError(int_n, "Cartão Intornado.");
		END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_c_verificanumerocartao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_c_verificanumerocartao`(
vch_numerocartao VARCHAR(20),	
vch_codcasa	VARCHAR(4)
)
BEGIN
		DECLARE int_n INT;

	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

	SET int_n = 1;

	
	IF EXISTS(SELECT ctd_c_numerocartao
				FROM card_ctd_cartoesdisponiveis
				WHERE ctd_c_numerocartao = vch_numerocartao
					AND	ctd_c_codcasa = IFNULL(vch_codcasa, ctd_c_codcasa))
	THEN
		CALL RaiseCustomError(int_N, "INUSE");
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_c_verificasenhacartao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_c_verificasenhacartao`(
				vch_senhacartao	VARCHAR(6),		
				vch_numerocartao	VARCHAR(20)
)
BEGIN
DECLARE	vch_senhacripto, vch_senha VARCHAR(6);
DECLARE int_tentativa, int_n		INT;
DECLARE vch_retorno	VARCHAR(100);

	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

	SET int_n = 1;

	CALL p_card_c_encryptpassword(vch_senhacartao, vch_senhacripto);

	SET int_n = 2;
	SELECT vch_senha = ctf_c_password
	FROM card_ctf_cartoesfidelidade
	WHERE ctf_c_numerocartao = vch_numerocartao;

	IF (vch_senhacripto <> vch_senha) 
	THEN
		SET int_n = 3;
		SELECT int_tentativa = IFNULL(MAX(ctf_n_passtry), 0) + 1 
			FROM card_ctf_cartoesfidelidade
			WHERE ctf_c_numerocartao = vch_numerocartao;

			IF (int_tentativa = 1) THEN
				SET int_n = 4;
			UPDATE card_ctf_cartoesfidelidade
				SET ctf_n_passtry = int_tentativa 
				WHERE ctf_c_numerocartao = vch_numerocartao;
				CALL RaiseCustomError(132, null);
			END IF;

			IF(int_tentativa = 2) THEN
			SET int_n = 6;
			UPDATE card_ctf_cartoesfidelidade
				SET ctf_n_passtry = int_tentativa 
				WHERE ctf_c_numerocartao = vch_numerocartao;
			
			CALL RaiseCustomError(133, null);
			END IF;


			IF (int_tentativa >= 3)
		THEN
			SET int_n = 8;
			UPDATE card_ctf_cartoesfidelidade 
			SET ctf_n_situacao = 1004, ctf_n_passtry = int_tentativa
			WHERE ctf_c_numerocartao = vch_numerocartao;

			CALL RaiseCustomError(134, null);
		END IF;

	ELSE
		SET int_n = 10;
		UPDATE card_ctf_cartoesfidelidade 
		SET ctf_n_passtry = 0 
		WHERE ctf_c_numerocartao = vch_numerocartao;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_d_excluirtipocartao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_d_excluirtipocartao`(
														int_codtipocartao	INT
														)
BEGIN	

DECLARE int_n INT;	

	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	

	SET int_n = 1;

	UPDATE card_tcc_tipocartaocontrole
		SET tcc_b_status = 0
		WHERE tcc_n_codigo = int_codtipocartao;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_d_promocoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_d_promocoes`(
													int_codigo	INT
																)
BEGIN
	
	DECLARE int_n INT;

	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

	
	
	IF (EXISTS(SELECT 1 FROM card_hpg_historicopromocoes WHERE hpg_n_codigopromocao = int_codigo))
	THEN
		CALL RaiseCustomError(263, null);

	ELSE
		SET int_n = 2;
		
		DELETE FROM card_cfp_configpromocoes WHERE cfp_n_codigo = int_codigo;
	END IF;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_alterasenhacartao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_alterasenhacartao`(
														vch_contaid VARCHAR(100), 
														vch_numerocartao VARCHAR(100), 
														vch_senha VARCHAR(100), 
														vch_novasenha VARCHAR(100)
														)
BEGIN
	DECLARE vch_encriptnovasenha, vch_senhacartao,vch_encriptsenha varchar(6);
	DECLARE int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;


	IF NOT(vch_senha = '')
	THEN 
		
		SELECT 
			vch_senhacartao = ctf_c_password 
		FROM 	
			card_ctf_cartoesfidelidade
		WHERE	
			ctf_c_contaid		= vch_contaid
		 AND ctf_c_numerocartao	= vch_numerocartao;
		
		SET int_n = 1;	
		CALL  p_card_c_encryptpassword(vch_senha, vch_encriptsenha);
		
		IF (vch_senhacartao <> vch_encriptsenha)
		THEN
			CALL RaiseCustomError(8, null);
		END IF;

	END IF;

	SET int_n = 2;
	
	CALL p_card_c_encryptpassword(vch_novasenha, vch_encriptnovasenha);

	SET int_n = 3;
	
	UPDATE card_ctf_cartoesfidelidade 
	   SET ctf_c_password = vch_encriptnovasenha,
		  ctf_c_digitado = vch_novasenha
	 WHERE ctf_c_contaid	 = vch_contaid
	   AND ctf_c_numerocartao = vch_numerocartao;	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_atualizacodigocasa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_atualizacodigocasa`(
														int_codcasa	INT
														)
BEGIN

DECLARE int_n INT;
	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	
		SET int_n = 1;
		
		UPDATE cas_stp_systemtype
		SET stp_n_codcasa = int_codcasa;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_atualizaexibirdebitarcartao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_atualizaexibirdebitarcartao`(
	bit_numcartao				BIT,	bit_nomecliente				BIT,	bit_cpfcliente				BIT,
	bit_entradadinmaquina		BIT,	bit_entradadincartao		BIT,	bit_entradacartaocaixa		BIT,
	bit_aposta					BIT,	bit_saldo					BIT,	bit_premio					BIT,
	bit_deducao					BIT,	bit_saldoliquido			BIT,	bit_valordebito				BIT,
	bit_saldoatual				BIT,	bit_saldopromocao			BIT, 	bit_numcartaoimp			BIT,	
	bit_nomeclienteimp			BIT,	bit_cpfclienteimp			BIT,	bit_entradadinmaquinaimp	BIT,	
	bit_entradadincartaoimp		BIT,	bit_entradacartaocaixaimp	BIT,	bit_apostaimp				BIT,	
	bit_saldoimp				BIT,	bit_premioimp				BIT,	bit_deducaoimp				BIT,	
	bit_saldoliquidoimp			BIT,	bit_valordebitoimp			BIT,	bit_saldoatualimp			BIT,	
	bit_entradacartaomovel		BIT,	bit_entradacartaomovelimp	BIT,	bit_saldocredito			BIT,	
	bit_saldocreditoimp			BIT,	bit_saldopontos				BIT,	bit_saldopontosimp			BIT, 
	bit_saldopromocaoimp		BIT
																	)
BEGIN

	DECLARE int_codigo, int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	
	SET int_n = 1;

	SELECT int_codigo = prt_n_codigo 
		FROM card_prt_debitarcartao
		WHERE prt_n_codigo = 1;

	IF (int_codigo IS NULL)
    THEN
		SET int_n = 2;
		INSERT INTO card_prt_debitarcartao 
			VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
    END IF;

	SET int_n = 3;

	UPDATE card_prt_debitarcartao 
		   SET 
			prt_b_numcartao				= bit_numcartao,			prt_b_nomecliente			= bit_nomecliente, 
			prt_b_cpfcliente			= bit_cpfcliente,			prt_b_entradadinmaq			= bit_entradadinmaquina, 
			prt_b_entradadincartao		= bit_entradadincartao,		prt_b_entradacartaocaixa	= bit_entradacartaocaixa,
			prt_b_entradacartaomovel	= bit_entradacartaomovel,	prt_b_aposta				= bit_aposta, 
			prt_b_saldo					= bit_saldo,				prt_b_premio				= bit_premio,
			prt_b_deducao				= bit_deducao,				prt_b_saldoliquido			= bit_saldoliquido, 
			prt_b_valordebito			= bit_valordebito,			prt_b_saldoatual			= bit_saldoatual,
			prt_b_saldocredito			= bit_saldocredito,			prt_b_numcartaoimp			= bit_numcartaoimp, 
			prt_b_nomeclienteimp		= bit_nomeclienteimp,		prt_b_cpfclienteimp			= bit_cpfclienteimp, 
			prt_b_entradadinmaqimp		= bit_entradadinmaquinaimp,	prt_b_entradadincartaoimp	= bit_entradadincartaoimp,
			prt_b_entradacartaocaixaimp	= bit_entradacartaocaixaimp,prt_b_entradacartaomovelimp	= bit_entradacartaomovelimp,
			prt_b_apostaimp				= bit_apostaimp,			prt_b_saldoimp				= bit_saldoimp, 
			prt_b_premioimp				= bit_premioimp,			prt_b_deducaoimp			= bit_deducaoimp,
			prt_b_saldoliquidoimp		= bit_saldoliquidoimp,		prt_b_valordebitoimp		= bit_valordebitoimp, 
			prt_b_saldoatualimp			= bit_saldoatualimp,		prt_b_saldocreditoimp		= bit_saldocreditoimp,
			prt_b_saldopontos			= bit_saldopontos,			prt_b_saldopontosimp		= bit_saldopontosimp,
			prt_b_saldopromocao			= bit_saldopromocao,		prt_b_saldopromocaoimp		= bit_saldopromocaoimp
		WHERE prt_n_codigo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_atualizaexibirfechamentodiacartaoger` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_atualizaexibirfechamentodiacartaoger`(
bit_iniciocaixa					BIT,	bit_reforcocaixa			BIT,	bit_retiradacaixa			BIT,
	bit_entradacaixacartao		BIT,	bit_entradacartaomaquina	BIT,	bit_entradadinheiromaquina	BIT,
	bit_entradascaixamovel		BIT,	bit_taxacartao				BIT,	bit_entradastotal			BIT,	
	bit_saidascartao			BIT,	bit_pagamentosmanuais		BIT,	bit_saidascaixamovel		BIT,	
	bit_totalsaidas				BIT,	bit_deducao1				BIT,	bit_deducao2				BIT,	
	bit_saldocaixa				BIT,	bit_saldonet				BIT,	resultado					BIT,
	bit_premiospagos			BIT,	bit_deducaoentrada			BIT,	bit_creditosemretorno		BIT,	
	bit_creditosvensemretorno	BIT,	bit_saldocredito			BIT,	bit_creditocortesia			BIT,	
	bit_creditopromocao			BIT,	bit_cancelamentos			BIT,	bit_CancelamentoMaquina		BIT
)
BEGIN

	DECLARE int_n INT;

	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

			
	SET int_n = 1;

	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_iniciocaixa WHERE opf_n_codigoprt = 1;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_reforcocaixa WHERE opf_n_codigoprt = 2;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_retiradacaixa WHERE opf_n_codigoprt = 3;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_entradacaixacartao WHERE opf_n_codigoprt = 4;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_entradacartaomaquina WHERE opf_n_codigoprt = 5;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_entradadinheiromaquina WHERE opf_n_codigoprt = 6;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_entradascaixamovel WHERE opf_n_codigoprt = 7;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_taxacartao WHERE opf_n_codigoprt = 8;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_entradastotal WHERE opf_n_codigoprt = 9;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_saidascartao WHERE opf_n_codigoprt = 10;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_pagamentosmanuais WHERE opf_n_codigoprt = 11;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_saidascaixamovel WHERE opf_n_codigoprt = 12;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_totalsaidas WHERE opf_n_codigoprt = 13;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_deducao1 WHERE opf_n_codigoprt = 14;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_deducao2 WHERE opf_n_codigoprt = 15;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_saldocaixa WHERE opf_n_codigoprt = 16;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_saldonet WHERE opf_n_codigoprt = 17;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = resultado WHERE opf_n_codigoprt = 18;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_premiospagos WHERE opf_n_codigoprt = 19;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_deducaoentrada WHERE opf_n_codigoprt = 20;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_creditosemretorno WHERE opf_n_codigoprt = 21;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_creditosvensemretorno WHERE opf_n_codigoprt = 22;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_saldocredito WHERE opf_n_codigoprt = 23;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_creditocortesia WHERE opf_n_codigoprt = 24;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_creditopromocao WHERE opf_n_codigoprt = 25;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_cancelamentos WHERE opf_n_codigoprt = 26;
	UPDATE card_opf_operacaofechamento SET opf_b_gerencial = bit_CancelamentoMaquina WHERE opf_n_codigoprt = 27;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_atualizaexibirfechamentodiacartaoimp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_atualizaexibirfechamentodiacartaoimp`(
	bit_iniciocaixa				BIT,	bit_reforcocaixa			BIT,	bit_retiradacaixa			BIT,
	bit_entradacaixacartao		BIT,	bit_entradacartaomaquina	BIT,	bit_entradadinheiromaquina	BIT,
	bit_entradascaixamovel		BIT,	bit_taxacartao				BIT,	bit_entradastotal			BIT,	
	bit_saidascartao			BIT,	bit_pagamentosmanuais		BIT,	bit_saidascaixamovel		BIT,	
	bit_totalsaidas				BIT,	bit_deducao1				BIT,	bit_deducao2				BIT,	
	bit_saldocaixa				BIT,	bit_saldonet				BIT,	resultado					BIT,
	bit_premiospagos			BIT,	bit_deducaoentrada			BIT,	bit_creditosemretorno		BIT,	
	bit_creditosvensemretorno	BIT,	bit_saldocredito			BIT,	bit_creditocortesia			BIT,	
	bit_creditopromocao			BIT,	bit_cancelamentos			BIT,	bit_CancelamentoMaquina		BIT
	)
BEGIN

	DECLARE int_n INT;
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	
	SET int_n = 1;

	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_iniciocaixa WHERE opf_n_codigoprt = 1;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_reforcocaixa WHERE opf_n_codigoprt = 2;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_retiradacaixa WHERE opf_n_codigoprt = 3;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_entradacaixacartao WHERE opf_n_codigoprt = 4;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_entradacartaomaquina WHERE opf_n_codigoprt = 5;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_entradadinheiromaquina WHERE opf_n_codigoprt = 6;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_entradascaixamovel WHERE opf_n_codigoprt = 7;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_taxacartao WHERE opf_n_codigoprt = 8;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_entradastotal WHERE opf_n_codigoprt = 9;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_saidascartao WHERE opf_n_codigoprt = 10;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_pagamentosmanuais WHERE opf_n_codigoprt = 11;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_saidascaixamovel WHERE opf_n_codigoprt = 12;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_totalsaidas WHERE opf_n_codigoprt = 13;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_deducao1 WHERE opf_n_codigoprt = 14;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_deducao2 WHERE opf_n_codigoprt = 15;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_saldocaixa WHERE opf_n_codigoprt = 16;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_saldonet WHERE opf_n_codigoprt = 17;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = resultado WHERE opf_n_codigoprt = 18;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_premiospagos WHERE opf_n_codigoprt = 19;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_deducaoentrada WHERE opf_n_codigoprt = 20;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_creditosemretorno WHERE opf_n_codigoprt = 21;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_creditosvensemretorno WHERE opf_n_codigoprt = 22;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_saldocredito WHERE opf_n_codigoprt = 23;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_creditocortesia WHERE opf_n_codigoprt = 24;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_creditopromocao WHERE opf_n_codigoprt = 25;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_cancelamentos WHERE opf_n_codigoprt = 26;
	UPDATE card_opf_operacaofechamento SET opf_b_impressao = bit_CancelamentoMaquina WHERE opf_n_codigoprt = 27;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_atualizaexibirfechamentodiacartaotela` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_atualizaexibirfechamentodiacartaotela`(
	bit_iniciocaixa				BIT,	bit_reforcocaixa			BIT,	bit_retiradacaixa			BIT,
	bit_entradacaixacartao		BIT,	bit_entradacartaomaquina	BIT,	bit_entradadinheiromaquina	BIT,
	bit_entradascaixamovel		BIT,	bit_taxacartao				BIT,	bit_entradastotal			BIT,	
	bit_saidascartao			BIT,	bit_pagamentosmanuais		BIT,	bit_saidascaixamovel		BIT,	
	bit_totalsaidas				BIT,	bit_deducao1				BIT,	bit_deducao2				BIT,	
	bit_saldocaixa				BIT,	bit_saldonet				BIT,	resultado					BIT,
	bit_premiospagos			BIT,	bit_deducaoentrada			BIT,	bit_creditosemretorno		BIT,	
	bit_creditosvensemretorno	BIT,	bit_saldocredito			BIT,	bit_creditocortesia			BIT,	
	bit_creditopromocao			BIT,	bit_cancelamentos			BIT,	bit_CancelamentoMaquina		BIT
)
BEGIN	
	
	DECLARE int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	
	SET int_n = 1;

UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_iniciocaixa WHERE opf_n_codigoprt = 1;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_reforcocaixa WHERE opf_n_codigoprt = 2;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_retiradacaixa WHERE opf_n_codigoprt = 3;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_entradacaixacartao WHERE opf_n_codigoprt = 4;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_entradacartaomaquina WHERE opf_n_codigoprt = 5;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_entradadinheiromaquina WHERE opf_n_codigoprt = 6;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_entradascaixamovel WHERE opf_n_codigoprt = 7;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_taxacartao WHERE opf_n_codigoprt = 8;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_entradastotal WHERE opf_n_codigoprt = 9;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_saidascartao WHERE opf_n_codigoprt = 10;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_pagamentosmanuais WHERE opf_n_codigoprt = 11;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_saidascaixamovel WHERE opf_n_codigoprt = 12;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_totalsaidas WHERE opf_n_codigoprt = 13;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_deducao1 WHERE opf_n_codigoprt = 14;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_deducao2 WHERE opf_n_codigoprt = 15;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_saldocaixa WHERE opf_n_codigoprt = 16;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_saldonet WHERE opf_n_codigoprt = 17;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = resultado WHERE opf_n_codigoprt = 18;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_premiospagos WHERE opf_n_codigoprt = 19;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_deducaoentrada WHERE opf_n_codigoprt = 20;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_creditosemretorno WHERE opf_n_codigoprt = 21;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_creditosvensemretorno WHERE opf_n_codigoprt = 22;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_saldocredito WHERE opf_n_codigoprt = 23;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_creditocortesia WHERE opf_n_codigoprt = 24;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_creditopromocao WHERE opf_n_codigoprt = 25;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_cancelamentos WHERE opf_n_codigoprt = 26;
	UPDATE card_opf_operacaofechamento SET opf_b_tela = bit_CancelamentoMaquina WHERE opf_n_codigoprt = 27;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_atualizamacadress` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_atualizamacadress`(vch_macadress	VARCHAR(16))
BEGIN

	DECLARE int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;	

	SET int_n = 1;

	
	UPDATE cas_mci_mexcierres
	SET mci_c_maquina = vch_macadress;
	
	SET int_n = 2;
	
	UPDATE card_crd_mexcierrescard
		SET crd_c_maquina = vch_macadress;

	SET int_n = 3;
	
	UPDATE cas_mvi_mexmovimientos
		SET mvi_c_maquina = vch_macadress;

	SET int_n = 4;
	
	UPDATE cas_pgt_mexpgtomanuais
		SET pgt_c_maquina = vch_macadress;

	SET int_n = 5;
	
	UPDATE cas_stp_systemtype
		SET stp_c_maquina = vch_macadress;

	SET int_n = 6;
	
	UPDATE card_ctf_cartoesfidelidade
		SET ctf_c_maquina = vch_macadress;

	SET int_n = 7;
	
	UPDATE card_cpr_mexcartoespremios
		SET cpr_c_maquina = vch_macadress;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_atualizapromomocoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_atualizapromomocoes`(
	int_codigo					INT, 
	int_codtipopromocao			INT, 
	vch_descricao				VARCHAR(100), 
	vch_datainicio				VARCHAR(100), 
	vch_datafim					VARCHAR(100), 
	int_valorinicio				INT, 
	int_valorfim				INT, 
	int_valorpromocao			INT, 
	bit_cobrarpercentualdep		BIT, 
	bit_cobrancaunica			BIT, 
	bit_cobrancaunicadia		BIT, 
	int_percentual				NUMERIC
															)
`main_proc`:BEGIN

	DECLARE int_n INT;
	
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	
IF (int_codigo = 0)
	THEN 
		
		SET int_n = 1;
		
		INSERT 
			INTO card_cfp_configpromocoes
				(cfp_n_codtipopromocao,	cfp_c_descricao,
				cfp_d_datainicio,		cfp_d_datafim,
				cfp_n_valorinicio,		cfp_n_valorfim,
				cfp_n_valorpromocao,	cfp_b_cobrarpercentualdep,
				cfp_b_cobrancaunica,	cfp_b_cobrancaunicadia,
				cfp_n_percentual) 
			VALUES 
				(int_codtipopromocao,	vch_descricao,
				CAST(vch_datainicio AS DATETIME),	CAST(vch_datafim AS DATETIME),
				int_valorinicio,		int_valorfim,
				int_valorpromocao,		bit_cobrarpercentualdep,
				bit_cobrancaunica,		bit_cobrancaunicadia,
				int_percentual);

				LEAVE `main_proc`;
	ELSE 
	
		
		IF (EXISTS(SELECT 1 FROM card_cfp_configpromocoes WHERE cfp_n_codigo = int_codigo))
		THEN
			SET int_n = 2;
			UPDATE card_cfp_configpromocoes 
			   SET	cfp_n_codtipopromocao		= int_codtipopromocao,
					cfp_c_descricao				= vch_descricao,
					cfp_d_datainicio			= CAST(vch_datainicio AS DATETIME),
					cfp_d_datafim				= CAST(vch_datafim AS DATETIME),
					cfp_n_valorinicio			= int_valorinicio,
					cfp_n_valorfim				= int_valorfim,
					cfp_n_valorpromocao			= int_valorpromocao,
					cfp_b_cobrarpercentualdep	= bit_cobrarpercentualdep,
					cfp_b_cobrancaunica			= bit_cobrancaunica,
					cfp_b_cobrancaunicadia		= bit_cobrancaunicadia,
					cfp_n_percentual			= int_percentual

			 WHERE cfp_n_codigo = int_codigo;

			LEAVE `main_proc`;
		ELSE 
			CALL RaiseCustomError(262, null);
		END IF;
	END IF; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_atualizatipocartao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_atualizatipocartao`(
	bit_cartaoreutilizavel		BIT,			bit_alterasenha				BIT,	
	int_validadesenha			INTEGER,		bit_permitedebito			BIT,		bit_permitecredito			BIT,
	bit_creditoinicial			BIT,			int_valorcredinicial		INTEGER,	int_modelo					INTEGER,	
	vch_numerocartaoinclusao	VARCHAR(16),	int_operacao				INTEGER
														)
BEGIN
	
	DECLARE int_n INT;
	
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	
	
			
	IF (int_operacao = 1)
	THEN
		SET int_n = 1;
		
		IF (EXISTS(SELECT tcc_n_modelo 
					FROM card_tcc_tipocartaocontrole
					WHERE tcc_n_modelo = int_modelo))
		THEN
			SET int_n = 2;
			UPDATE card_tcc_tipocartaocontrole SET 
				tcc_b_indcartaoreutilizavel = bit_cartaoreutilizavel,		tcc_b_indalterasenha = bit_alterasenha,					
				tcc_n_validadesenha = int_validadesenha,					tcc_b_indpermitedebito = bit_permitedebito,
				tcc_b_indpermitecredito = bit_permitecredito,				tcc_b_indcreditoinicial = bit_creditoinicial,				
				tcc_n_valorcreditoinicial = int_valorcredinicial,			tcc_c_numerocartaoinclusao = vch_numerocartaoinclusao,		
				tcc_b_status = 1
				WHERE tcc_n_modelo = int_modelo;
		ELSE

			SET int_n = 3;
			INSERT INTO card_tcc_tipocartaocontrole(
				tcc_b_indcartaoreutilizavel,
				tcc_b_indalterasenha,			tcc_n_validadesenha, 
				tcc_b_indpermitedebito,			tcc_b_indpermitecredito,
				tcc_b_indcreditoinicial,		tcc_n_modelo, 
				tcc_d_datainclusao,				tcc_c_numerocartaoinclusao,
				tcc_n_valorcreditoinicial)
				VALUES(
				bit_cartaoreutilizavel,		 
				bit_alterasenha,				int_validadesenha,
				bit_permitedebito,				bit_permitecredito, 
				bit_creditoinicial,			int_modelo, 
				GetDate(),						vch_numerocartaoinclusao, 
				int_valorcredinicial);
		END IF;
	END IF;
		
	IF (int_operacao = 2)
	THEN
		SET int_n = 4;
		UPDATE card_tcc_tipocartaocontrole SET
			tcc_b_indcartaoreutilizavel = bit_cartaoreutilizavel,		 
			tcc_b_indalterasenha = bit_alterasenha,					tcc_n_validadesenha = int_validadesenha,
			tcc_b_indpermitedebito = bit_permitedebito,				tcc_b_indpermitecredito = bit_permitecredito,
			tcc_b_indcreditoinicial = bit_creditoinicial,				tcc_d_dataalteracao = GetDate(),
			tcc_c_numerocartaoinclusao = vch_numerocartaoinclusao,		tcc_n_valorcreditoinicial = int_valorcredinicial
			WHERE tcc_n_modelo = int_modelo;
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_atualizatipopessoa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_atualizatipopessoa`(
int_codigo					INT,	int_inddatanascimento	INT,	int_indsexo				INT,	int_indprofissao	 INT,	
	int_indbanco			INT,	int_indemail			INT,	int_indendereco			INT,	int_indnumero		 INT,	
	int_indbairro			INT,	int_indestado			INT,	int_indnumerorg			INT,	int_indestadocivil  INT,
	int_indrenda			INT,	int_indcadastrodesde	INT,	int_indcomplemento 		INT,	int_indcidade		 INT,	
	int_indcep				INT,	int_indtelresidencial	INT,	int_indtelcelular		INT,	int_indtelcomercial INT,	
	int_indreferencia		INT,	int_indapelidousuario	INT
)
BEGIN
	
	DECLARE int_n INT;
	
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	
	SET int_n = 1;

	UPDATE cas_tip_tipopessoa
	SET tip_n_indapelidousuario	= int_indapelidousuario	
		  ,tip_n_inddatanascimento	= int_inddatanascimento	
		  ,tip_n_indsexo			= int_indsexo			
		  ,tip_n_indprofissao		= int_indprofissao		
		  ,tip_n_indbanco			= int_indbanco			
		  ,tip_n_indemail			= int_indemail			
		  ,tip_n_indendereco		= int_indendereco		
		  ,tip_n_indnumero			= int_indnumero			
		  ,tip_n_indbairro			= int_indbairro			
		  ,tip_n_indestado			= int_indestado			
		  ,tip_n_indnumerorg		= int_indnumerorg		
		  ,tip_n_indestadocivil		= int_indestadocivil		
		  ,tip_n_indrenda			= int_indrenda			
		  ,tip_n_indcadastrodesde	= int_indcadastrodesde	
		  ,tip_n_indcomplemento		= int_indcomplemento		
		  ,tip_n_indcidade			= int_indcidade			
		  ,tip_n_indcep				= int_indcep				
		  ,tip_n_indtelresidencial	= int_indtelresidencial	
		  ,tip_n_indtelcelular		= int_indtelcelular		
		  ,tip_n_indtelcomercial	= int_indtelcomercial	
		  ,tip_n_indreferencia		= int_indreferencia				
	WHERE  
		tip_n_codigo = int_codigo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_card_i_bloquearcartao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_card_i_bloquearcartao`(
	vch_contaid	VARCHAR(10),		
	vch_numerocartao	VARCHAR(20),			
	vch_senha	VARCHAR(6),
	bit_bloquear	BIT
)
BEGIN

DECLARE int_n INT;

DECLARE int_wnovasituacao, int_wsituacao	INT;
DECLARE	vch_wencriptsenha, vch_wsenha		VARCHAR(6);
DECLARE bit_uso								BIT;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

SELECT bit_uso = ctf_n_bloqueado
	  FROM card_ctf_cartoesfidelidade
	 WHERE ctf_c_numerocartao = vch_numerocartao;

	IF(bit_bloquear = 1 AND bit_uso = 1)
	THEN
		CALL RaiseCustomError(80, null);

	END IF;

	
	IF (bit_bloquear = 1)
	THEN
		SET int_wnovasituacao = 1002;	
	ELSE
		SET int_wnovasituacao = 1001;	
	END IF;

	
	IF NOT (vch_senha = '')
	THEN
		SET int_n = 1;
		CALL p_card_c_encryptpassword(vch_senha,  vch_wencriptsenha);
		
		SET int_n = 2;

		SELECT vch_wsenha = ctf_c_password
		  FROM card_ctf_cartoesfidelidade 
		 WHERE ctf_c_contaid	 = vch_contaid
		   AND ctf_c_numerocartao = vch_numerocartao;

		IF (vch_wsenha <> vch_wencriptsenha)
		THEN
			CALL RaiseCustomError(8, null);

		END IF;
	ELSE
		SET @vch_wencriptsenha = '0';
	END IF;

	SET int_n = 4;
	
	
	SELECT int_wsituacao = ctf_n_situacao
	  FROM card_ctf_cartoesfidelidade 
	 WHERE ctf_c_contaid	 = vch_contaid
	   AND ctf_c_numerocartao = vch_numerocartao;

	SET int_n = 6;
	
	UPDATE card_ctf_cartoesfidelidade 
	   SET 	ctf_n_situacao		= int_wnovasituacao,			
			ctf_n_passtry		= 0,
			ctf_n_bloqueado		= 0,
			ctf_c_lastfrombankerid	= vch_contaid
		WHERE ctf_c_contaid = vch_contaid
		AND	ctf_c_numerocartao = vch_numerocartao;

	SET int_n = 7;
	SELECT cli_c_nickname AS nickname,			ctf_c_contaid AS contaid,
		  ctf_c_numerocartao AS numerocartao,	ctf_c_dv AS dv,
		  ctf_c_cpf AS cpf,						ctf_n_credito AS credito,
		  ctf_n_situacao AS situacao,			ctf_n_taxacartao AS taxacartao,
		  ctf_n_tipoconta AS tipoconta,			ctf_n_saldolimite AS saldolimite
	  FROM card_ctf_cartoesfidelidade 
			INNER JOIN cas_cli_clientes 
			ON cli_c_cpf = ctf_c_cpf
      WHERE ctf_c_contaid = vch_contaid
			AND	ctf_c_numerocartao = vch_numerocartao;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_c_aberturaconsolidado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_c_aberturaconsolidado`(OUT bit_aberto TINYINT(1))
BEGIN

    DECLARE int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN 
            RESIGNAL SET MYSQL_ERRNO = _int_n;
        END;

    SET int_n = 1;

    IF EXISTS(SELECT 1 FROM cas_mvi_mexmovimientos WHERE mvi_n_tipomov = 33) 
    THEN
        SET bit_aberto = 1;
    ELSE
        SET bit_aberto = 0;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_c_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_c_email`(_int_codmodalidade INT)
BEGIN

DECLARE _int_n INT;

DECLARE _bit_enviarcontmod, _bit_wenviaemail	TINYINT(1);

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

    SET _int_n = 1;
    SELECT prt_b_emailcontfechamento, prt_b_enviarcontmod
    INTO _bit_wenviaemail, _bit_enviarcontmod 
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia <= CAST(NOW() AS DATE));


    IF(_bit_enviarcontmod = 1 AND _int_codmodalidade > 0)
    THEN
        SET _int_n = 2;
        SELECT ema_c_email AS email, ema_n_codigo AS codigo, _bit_wenviaemail AS enviaemail
        FROM cas_ema_email INNER JOIN cas_amo_associamodalidadesemail ON amo_n_codemail = ema_n_codigo AND amo_n_codmodalidade = _int_codmodalidade
        ORDER BY ema_c_email;
        ELSE
        SET _int_n = 3;
        SELECT ema_c_email AS email, ema_n_codigo AS codigo, _bit_wenviaemail AS enviaemail
        FROM cas_ema_email
        ORDER BY ema_c_email;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_c_verificadisponumeroticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_c_verificadisponumeroticket`(
	_vch_codigoticket 	VARCHAR(8), OUT _retStatus TINYINT(1)
)
BEGIN

    DECLARE _int_n INT;
    DECLARE _int_max	INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;

    IF NOT EXISTS(SELECT tck_c_code FROM cas_tck_mextickets WHERE tck_c_code = _vch_codigoticket)
    THEN
        SET _retStatus = 0;
    ELSE
        SET _retStatus = 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_c_verificanumeroticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_c_verificanumeroticket`(
    _vch_codigoticket	VARCHAR(8)
)
BEGIN
        DECLARE _int_n          INT;
        DECLARE _int_activa     INT;	
        DECLARE _int_blocked    INT;
        DECLARE _dec_saldo      DECIMAL(18,2);	
        DECLARE _dtm_wdt        DATETIME;
        DECLARE _dtm_wdata      DATETIME;
        DECLARE _int_wdias2     INT;
        DECLARE _int_wPromo     INT;	
        DECLARE _int_wCortesia  INT;
        DECLARE _bit_Horas      TINYINT(1);
        
        DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN 
            RESIGNAL SET MYSQL_ERRNO = int_n;
        END;
        
        SET _int_n = 1;
        IF EXISTS(SELECT tck_c_code 
        FROM cas_tck_mextickets 
        WHERE tck_c_code = _vch_codigoticket)
        THEN
            SET _int_n = 2;
            
            SELECT tck_n_activa, tck_n_promocao, tck_n_cortesia
            INTO _int_activa, _int_wPromo , _int_wCortesia 
            FROM cas_tck_mextickets 
            WHERE tck_c_code = _vch_codigoticket;

            IF (_int_activa = 0) 
            THEN
                CALL RaiseCustomError(142, null);
            END IF;

            IF (_int_wCortesia = 1)
            THEN
                CALL RaiseCustomError(208, null);
            END IF;

            IF (_int_wPromo = 1)
            THEN
                CALL RaiseCustomError(240, null);
            END IF;

            SET _int_n = 6;
            
            SELECT tck_d_fecha INTO _dtm_wdata
            FROM cas_tck_mextickets 
            WHERE tck_c_code = _vch_codigoticket;

            SET _int_n = 7;
            IF EXISTS(SELECT * 
            FROM cas_prt_mexparametros
            WHERE CAST(prt_d_datavigencia AS DATE) = (SELECT CAST(MAX(prt_d_datavigencia) AS DATE)
            FROM cas_prt_mexparametros
            WHERE CAST(prt_d_datavigencia AS DATE) <= CAST(_dtm_wdata AS DATE)))
            THEN
                SET _int_n = 8;
                
                SELECT prt_n_dias, prt_b_horas
                INTO _int_wdias2, _bit_Horas
                FROM cas_prt_mexparametros 
                WHERE CAST(prt_d_datavigencia AS DATE) = (SELECT CAST(MAX(prt_d_datavigencia) AS DATE)
                FROM cas_prt_mexparametros
                WHERE CAST(prt_d_datavigencia AS DATE) <= CAST(_dtm_wdata AS DATE));
            ELSE

                SET _int_n = 9;
                
                SELECT prt_n_dias, prt_b_horas
                INTO _int_wdias2, _bit_Horas
                FROM cas_prt_mexparametros
                WHERE CAST(prt_d_datavigencia AS DATE) = (SELECT CAST(MAX(prt_d_datavigencia) AS DATE)
                FROM cas_prt_mexparametros
                WHERE CAST(prt_d_datavigencia AS DATE) <= CAST(CURDATE() AS DATE));
            END IF;

            IF (_bit_Horas = 1)
            THEN
                SET _dtm_wdt = DATE_ADD(_dtm_wdata, INTERVAL _int_wdias2 HOUR);

                IF (_dtm_wdt <  CURDATE())
                THEN
                    CALL RaiseCustomError(229, null);
                END IF;
            ELSE
                SET _dtm_wdt = DATE_ADD(_dtm_wdata, INTERVAL _int_wdias2 DAY);

                IF (CAST(_dtm_wdt AS DATE) < CAST(CURDATE() AS DATE))
                THEN
                    CALL RaiseCustomError(229, null);
                END IF;
            END IF;

            SET _int_n = 11;
            SELECT tck_n_saldo INTO _dec_saldo
            FROM cas_tck_mextickets 
            WHERE tck_c_code = _vch_codigoticket;

            SET _int_n = 12;
            
            SELECT tck_n_blocked INTO _int_blocked
            FROM cas_tck_mextickets
            WHERE tck_c_code = _vch_codigoticket;

            IF (_int_blocked = 1) THEN
                SET _dec_saldo = 0;
            END IF;

            SET _int_n = 13;
            SELECT _dec_saldo AS saldo, _int_blocked as bloqueado;
        ELSE
            CALL RaiseCustomError(142, null);   
        END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_c_versaodatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_c_versaodatabase`(
	_bit_pos	TINYINT(1),	OUT _vch_versao	VARCHAR(10)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    IF (_bit_pos = 0)
    THEN
        SET _int_n = 1;
        SELECT _vch_versao = dbv_c_versao
        FROM cas_dbv_dbversao
        WHERE	dbv_d_dataatualizacao = (SELECT MAX(dbv_d_dataatualizacao) FROM cas_dbv_dbversao WHERE NOT dbv_c_versao = 'with POS');
    ELSE
        SET _int_n = 2;
        IF EXISTS(SELECT dbv_c_versao FROM cas_dbv_dbversao WHERE dbv_c_versao = 'with POS')
        THEN 
            SET _vch_versao = 'with POS';
        ELSE
            SET _vch_versao = '';
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_d_associacaoatendentepos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_d_associacaoatendentepos`(
	_int_codatendente	INT,	_vch_codpos	VARCHAR(16)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    DELETE FROM cas_aap_associaatendentexpos
    WHERE aap_n_codigoatendente = _int_codatendente
    AND	aap_c_codigopos = _vch_codpos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_d_dadoscontabeis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_d_dadoscontabeis`(_int_dias	INT)
BEGIN

	DECLARE _int_n INT;

	DECLARE _dt_wdata	DATE;
	DECLARE _dt_wdata2	DATE;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

	SET _int_dias = _int_dias * -1;
	SET _dt_wdata = DATE_ADD(CURDATE(), INTERVAL _int_dias  DAY);
	SET _dt_wdata2 = DATE_SUB(CURDATE(), INTERVAL 30 DAY);

	SET _int_n = 1;
	DELETE FROM cas_cbi_contabilhetes 
	WHERE CAST(cbi_d_data AS DATE) < _dt_wdata;

	SET _int_n = 2;
	DELETE FROM cas_cpg_contapagomanual 
	WHERE CAST(cpg_d_data AS DATE) < _dt_wdata;

	SET _int_n = 3;
   DELETE FROM cas_esp_estatisticapar 
   WHERE CAST(esp_d_data AS DATE) < _dt_wdata;

	SET _int_n = 4;
	DELETE FROM cas_est_estatisticatot 
	WHERE CAST(est_d_data AS DATE) < _dt_wdata;

	SET _int_n = 5;
	DELETE FROM cas_mvh_movimentoshist 
		WHERE CAST(mvh_d_fecha AS DATE) < _dt_wdata2;

	SET _int_n = 6;
	CREATE TEMPORARY TABLE tmp_tmpconta (tmp_n_entradas BIGINT, tmp_n_salidas BIGINT, tmp_n_pentradas BIGINT, tmp_n_psalidas BIGINT, tmp_n_modelo INT NOT NULL, 
		tmp_n_jugado BIGINT, tmp_n_ganado BIGINT, tmp_n_numacumulado BIGINT, tmp_n_acumulado BIGINT, tmp_n_numsacumulado BIGINT, tmp_n_sacumulado BIGINT, 
		tmp_d_fecha DATETIME NOT NULL, tmp_c_ip VARCHAR(50) NOT NULL, tmp_n_totalentradas BIGINT, tmp_n_totalsalidas BIGINT, tmp_n_totalpentradas BIGINT, 
		tmp_n_totalpsalidas BIGINT, tmp_n_totalmodelo INT, tmp_n_totaljugado BIGINT, tmp_n_totalganado BIGINT, tmp_n_totalnumacumulado BIGINT, 
		tmp_n_totalacumulado BIGINT, tmp_n_totalnumsacumulado BIGINT, tmp_n_totalsacumulado BIGINT, tmp_n_jugadoparcial BIGINT NOT NULL DEFAULT 0,
		tmp_n_ganadoparcial BIGINT NOT NULL DEFAULT 0, tmp_n_atual INT DEFAULT 1, tmp_c_codeuser VARCHAR(50), tmp_n_saldo_acumulado BIGINT,
		tmp_n_saida_sirprize_parcial BIGINT, tmp_n_saida_sirprize_total BIGINT, tmp_n_saida_sirprize BIGINT, tmp_c_cpunumber VARCHAR(17));

	SET _int_n = 7;
	INSERT INTO tmp_tmpconta
		SELECT 	c.mco_n_entradas, c.mco_n_salidas, c.mco_n_pentradas, c.mco_n_psalidas, c.mco_n_modelo, c.mco_n_jugado, c.mco_n_ganado, c.mco_n_numacumulado,
			c.mco_n_acumulado, c.mco_n_numsacumulado, c.mco_n_sacumulado, c.mco_d_fecha, c.mco_c_ip, c.mco_n_totalentradas, c.mco_n_totalsalidas,
			c.mco_n_totalpentradas, c.mco_n_totalpsalidas, c.mco_n_totalmodelo, c.mco_n_totaljugado, c.mco_n_totalganado, c.mco_n_totalnumacumulado,
			c.mco_n_totalacumulado, c.mco_n_totalnumsacumulado, c.mco_n_totalsacumulado, c.mco_n_jugadoparcial, c.mco_n_ganadoparcial, c.mco_n_atual, c.mco_c_code,
			c.mco_n_saldo_acumulado, c.mco_n_saida_sirprize_parcial, c.mco_n_saida_sirprize_total, c.mco_n_saida_sirprize, c.mco_c_cpunumber
			FROM dbo.cas_mco_mexconta c
			WHERE c.mco_d_fecha = (SELECT MAX(mco_d_fecha) 
										FROM cas_mco_mexconta 
										WHERE mco_c_ip = c.mco_c_ip);

	SET _int_n = 8;
	DELETE FROM cas_mco_mexconta 
		WHERE CAST(mco_d_fecha AS DATE) < _dt_wdata;

	SET _int_n = 9;
	DELETE FROM tmp_tmpconta
		WHERE CAST(tmp_d_fecha AS DATE) >= _dt_wdata;

	SET _int_n = 10;
	INSERT INTO cas_mco_mexconta 
		SELECT 	tmp_n_entradas,	tmp_n_salidas, tmp_n_pentradas, tmp_n_psalidas, tmp_n_modelo, tmp_n_jugado, tmp_n_ganado, tmp_n_numacumulado, tmp_n_acumulado,
			tmp_n_numsacumulado, tmp_n_sacumulado, tmp_d_fecha, tmp_c_ip, tmp_n_totalentradas, tmp_n_totalsalidas, tmp_n_totalpentradas, tmp_n_totalpsalidas,
			tmp_n_totalmodelo, tmp_n_totaljugado, tmp_n_totalganado, tmp_n_totalnumacumulado, tmp_n_totalacumulado, tmp_n_totalnumsacumulado, 
			tmp_n_totalsacumulado, tmp_n_jugadoparcial, tmp_n_ganadoparcial, tmp_n_atual, tmp_c_codeuser, 0, tmp_n_saldo_acumulado,
			tmp_n_saida_sirprize_parcial, tmp_n_saida_sirprize_total, tmp_n_saida_sirprize,  tmp_c_cpunumber
			FROM tmp_tmpconta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_d_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_d_email`(
_int_codigo	INT
)
BEGIN

DECLARE _int_n INT;	

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

	SET _int_n = 1;
	
	IF EXISTS(SELECT amo_n_codemail FROM cas_amo_associamodalidadesemail WHERE amo_n_codemail = _int_codigo) 
	THEN
		CALL RaiseCustomError(256, null);
	ELSE
		SET _int_n = 3;
		DELETE FROM cas_ema_email WHERE ema_n_codigo = _int_codigo;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_d_emailpendente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_d_emailpendente`(_int_codigo		INT)
BEGIN

    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 3;

    IF NOT EXISTS(SELECT emp_n_codigo 
    FROM cas_emp_emailpendentes
    WHERE emp_n_codigo = int_codigo) 
    THEN
        CALL RaiseCustomError(2, 'Registro não existe');
    ELSE
        SET _int_n = 1;
        DELETE 
        FROM cas_emp_emailpendentes
        WHERE emp_n_codigo = _int_codigo;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_d_modalidade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_d_modalidade`(
	_int_codigo		INT
)
BEGIN

    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
    RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    IF EXISTS(SELECT amo_n_codmodalidade 
    FROM cas_amo_associamodalidadesemail 
    WHERE amo_n_codmodalidade = _int_codigo)
    THEN
        CALL RaiseCustomError(255, null);
    ELSE
        SET _int_n = 4;

        IF EXISTS (SELECT mdl_n_codmodalidade 
        FROM cas_mdl_mexmodelos 
        WHERE mdl_n_codmodalidade = _int_codigo)
        THEN
            CALL RaiseCustomError(255, null);
        ELSE
            SET _int_n = 7;
            DELETE FROM cas_mod_modalidades 
            WHERE mod_n_codigo = _int_codigo;
        END IF;
    END IF; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_d_pos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_d_pos`(_int_codigo	INT)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    UPDATE cas_pos_pos SET	pos_b_status = 0
    WHERE pos_n_codigo = _int_codigo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_d_posfabricante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_d_posfabricante`(
_int_codigo		INT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    IF (EXISTS (SELECT * 
    FROM cas_mdl_mexmodelos 
    WHERE mdl_n_codfabricante = _int_codigo LIMIT 1) 
    OR _int_codigo = 1)
    THEN
        CALL RaiseCustomError(257, null);
    ELSE
        SET _int_n = 4;
        DELETE FROM cas_pfb_posfabricantes
        WHERE pfb_n_codigo = _int_codigo;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_d_wmigrarticketvencidos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_d_wmigrarticketvencidos`()
BEGIN

    DECLARE _int_n INT;
    DECLARE _dt_wdata	DATE;
    DECLARE _int_wdias   INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 8;

    SELECT IFNULL(prt_n_dias, 0)
    INTO _int_wdias 
    FROM 	cas_prt_mexparametros 
    WHERE	prt_d_datavigencia = ( SELECT	MAX(prt_d_datavigencia)
    FROM	cas_prt_mexparametros
    WHERE	prt_d_datavigencia <= CAST(CURDATE() AS DATE)) ;

    SET _int_wdias = _int_wdias + 5;
    SET _int_wdias = _int_wdias * -1;
    SET _dt_wdata = DATE_ADD(CURDATE(), INTERVAL _int_wdias DAY);

    SET _int_n = 1;

    INSERT INTO cas_tcm_ticketsexcluidos
    SELECT tck_c_code, tck_n_encript, tck_n_entrada, tck_n_salida, tck_n_saldo, tck_n_activa, tck_n_blocked, 
    tck_d_fecha, tck_n_actualdia, tck_d_fechacierre, tck_n_valorcredmaquina, tck_n_valorcredoper, tck_c_maquina, 
    tck_n_valordinmaquina, tck_n_valorentcaixa, tck_n_saldocierre, tck_n_promocao, tck_n_cortesia, tck_n_bonif, 
    tck_n_saldoant, tck_n_codecliente
    FROM cas_tck_mextickets 
    WHERE CAST(tck_d_fecha AS DATE) < _dt_wdata;

    SET _int_n = 2;
    DELETE
    FROM cas_tck_mextickets
    WHERE CAST(tck_d_fecha AS DATE) < _dt_wdata;

    SET _int_n = 3;
    DELETE
    FROM cas_tkc_mexcontabilidadetickets 
    WHERE CAST(tkc_d_datafechamento AS DATE) < _dt_wdata;

    SET _int_n = 4;
    DELETE
    FROM cas_tpr_mexticketspremios
    WHERE CAST(tpr_d_fechacierre AS DATE) < _dt_wdata;

    SET _int_n = 5;
    DELETE 
    FROM cas_cub_cupomb
    WHERE CAST(cub_n_data AS DATE) < _dt_wdata;

    SET _int_n = 6;
    DELETE
    FROM cas_cpo_compro
    WHERE CAST(cpo_d_data AS DATE) <  _dt_wdata;

    SET _int_n = 7;
    DELETE
    FROM cas_his_historicooperacao
    WHERE his_n_codigooperacao = 70
    AND CAST(his_d_datainclusao AS DATE) < _dt_wdata;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_aberturaoperacoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_aberturaoperacoes`(
_vch_maquina	VARCHAR(16)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;

    IF EXISTS(SELECT 1 from cas_mvi_mexmovimientos where mvi_n_tipomov = 33)
    THEN
        CALL RaiseCustomError(271, null);
    END IF;

    SET _int_n = 3;
    INSERT INTO cas_mvi_mexmovimientos(
    mvi_c_code,		
    mvi_n_tipomov,	
    mvi_n_valor,	
    mvi_d_fecha,	
    mvi_c_maquina)
    VALUES(
    '00000000',		
    33, 
    0,	
    NOW(),		
    _vch_maquina);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_associacaoatendentepos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_associacaoatendentepos`(
    _int_codigoatendente            INT,				
    _vch_codigopos                  VARCHAR(16), 
    _int_operacao                   INT,
    _int_oldcodigoatendente         INT,				
    _vch_oldcodigopos               VARCHAR(16), 
    _vch_senha                      VARCHAR(50)
)
BEGIN

    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    IF EXISTS(SELECT aap_n_codigoatendente 
    FROM cas_aap_associaatendentexpos 
    WHERE aap_n_codigoatendente = _int_oldcodigoatendente
    AND aap_c_codigopos = _vch_oldcodigopos)
    THEN
        IF (_int_operacao = 2)
        THEN
            SET _int_n = 2;
            IF EXISTS (SELECT cli_n_codigo 
            FROM cas_cli_clientes 
            WHERE cli_n_codigo = _int_codigoatendente)
            THEN
                SET _int_n = 3;

                UPDATE cas_aap_associaatendentexpos SET aap_n_codigoatendente = _int_codigoatendente,
                aap_c_codigopos = _vch_codigopos
                WHERE aap_n_codigoatendente = _int_oldcodigoatendente
                AND	aap_c_codigopos = _vch_oldcodigopos;
            ELSE
                CALL RaiseCustomError(226, null);
            END IF;
        ELSE
            CALL RaiseCustomError(225, null);
        END IF;
    ELSE
        SET _int_n = 8;
        IF EXISTS(SELECT cli_n_codigo 
        FROM cas_cli_clientes 
        WHERE cli_n_codigo = _int_codigoatendente)
        THEN
            SET _int_n = 9;
            INSERT INTO cas_aap_associaatendentexpos(aap_n_codigoatendente, aap_c_codigopos)
            VALUES(	_int_codigoatendente, _vch_codigopos);
        ELSE
            CALL RaiseCustomError(226, null);
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_associacaomaquina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_associacaomaquina`(
_vch_codigo		    VARCHAR(7),	
_vch_ipmaquina  	 VARCHAR(50),	
_bit_ativa          TINYINT(1),	
_int_codmodelo      INT,
_int_operacao       INT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_int_operacao = 1)
    THEN
        SET _int_n = 1;
        IF EXISTS(SELECT maq_c_codigo FROM dbo.cas_maq_maquina WHERE maq_c_codigo = _vch_codigo AND maq_c_ipmaquina = _vch_ipmaquina)
        THEN
            CALL RaiseCustomError(231, null);
        ELSE
            SET _int_n = 4;
            UPDATE cas_maq_maquina SET maq_c_codigo = _vch_codigo, maq_b_status = 1
            WHERE maq_c_ipmaquina = _vch_ipmaquina;
        END IF;
    END IF;

    IF (_int_operacao = 2)
    THEN
        SET _int_n = 5;
        UPDATE cas_maq_maquina SET maq_c_ipmaquina = _vch_ipmaquina, maq_n_codmodelo = _int_codmodelo, maq_b_status = _bit_ativa
        WHERE maq_c_codigo = _vch_codigo;
    END IF;

    IF (_int_operacao = 4)
    THEN
        SET _int_n = 6;
        SELECT maq_c_codigo AS codigo, maq_c_ipmaquina AS ipmaquina, maq_n_codmodelo AS codmodelo,
        CASE maq_b_status
            WHEN 1 THEN 'Ativo'
            WHEN 0 THEN 'Inativo'
        END AS status,
        mdl_c_descricao AS modelo
        FROM cas_maq_maquina INNER JOIN dbo.cas_mdl_mexmodelos ON maq_n_codmodelo = mdl_n_codigo
        WHERE maq_c_codigo <> ''
        ORDER BY mdl_c_descricao ASC;
    END IF;

    IF (_int_operacao = 5)
    THEN
        SET _int_n = 7;
        SELECT maq_c_codigo AS codigo, maq_c_ipmaquina AS ipmaquina, maq_n_codmodelo AS codmodelo,
        CASE maq_b_status
            WHEN 1 THEN 'Ativo'
            WHEN 0 THEN 'Inativo'
        END AS status,
        mdl_c_descricao AS modelo
        FROM cas_maq_maquina INNER JOIN cas_mdl_mexmodelos ON maq_n_codmodelo = mdl_n_codigo
        WHERE maq_b_status = _bit_ativa
        AND	maq_c_codigo IS NULL
        OR maq_c_codigo = ''
        ORDER BY mdl_c_descricao ASC;
    END IF;

    IF (_int_operacao = 6)
    THEN
        SET _int_n = 8;
        SELECT maq_c_codigo AS codigo, maq_c_ipmaquina AS ipmaquina, maq_n_codmodelo AS codmodelo,
        CASE maq_b_status
            WHEN 1 THEN 'Ativo'
            WHEN 0 THEN 'Inativo'
        END AS status,
        mdl_c_descricao AS modelo
        FROM cas_maq_maquina INNER JOIN cas_mdl_mexmodelos ON maq_n_codmodelo = mdl_n_codigo
        WHERE maq_b_status = _bit_ativa
        AND maq_c_codigo <> ''
        ORDER BY mdl_c_descricao ASC;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_associaemailmodalidade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_associaemailmodalidade`(
_int_codmodalidade  INT,	
_int_codemail	    INT,	
_int_operacao	    INT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_int_operacao = 0)
    THEN
        SET _int_n = 1;
        IF NOT EXISTS(SELECT amo_n_codemail 
        FROM cas_amo_associamodalidadesemail
        WHERE amo_n_codemail = _int_codemail
        AND	amo_n_codmodalidade = _int_codmodalidade)
        THEN
            SET _int_n = 2;
            INSERT INTO cas_amo_associamodalidadesemail (amo_n_codmodalidade, amo_n_codemail)
            VALUES (_int_codmodalidade, _int_codemail);
        END IF;
    END IF;

    IF _int_operacao = 1
    THEN
        SET _int_n = 3;
        DELETE FROM cas_amo_associamodalidadesemail
        WHERE amo_n_codmodalidade = _int_codmodalidade
        AND	amo_n_codemail = _int_codemail;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_associaripcodigo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_associaripcodigo`(
_vch_ip		   VARCHAR(30),
_vch_codigo		VARCHAR(20),	
_int_operacao	INT
)
BEGIN    

    DECLARE _int_n INT;
    DECLARE _int_codmodelo	INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_int_operacao = 1)
    THEN
        SET _int_n = 1;
        IF EXISTS(SELECT amn_c_codigo
        FROM cas_amn_associaipmaquina
        WHERE Upper(amn_c_codigo) = Upper(_vch_codigo))
        THEN
            CALL RaiseCustomError(247, null);  
        END IF;

        SET _int_n = 4;
        IF EXISTS(SELECT amn_c_ip
        FROM cas_amn_associaipmaquina
        WHERE amn_c_ip = _vch_ip)
        THEN
            CALL RaiseCustomError(248, null);  
        END IF;

        SET _int_n = 7;
        SELECT mco_n_modelo
        INTO _int_codmodelo 
        FROM cas_mco_mexconta
        WHERE mco_c_ip = _vch_ip LIMIT 1;

        SET _int_n = 8;
        INSERT INTO cas_amn_associaipmaquina(amn_c_ip, amn_n_modelo, amn_c_codigo)
        VALUES (_vch_ip, _int_codmodelo, _vch_codigo);
        ELSE
        IF (_int_operacao = 2)  
        THEN

            SET _int_n = 9;
            SELECT mco_n_modelo
            INTO _int_codmodelo 
            FROM cas_mco_mexconta
            WHERE mco_c_ip = _vch_ip LIMIT 1;

            SET _int_n = 10;

            IF EXISTS(SELECT amn_c_codigo
            FROM cas_amn_associaipmaquina
            WHERE amn_c_codigo = _vch_codigo)
            THEN
                CALL RaiseCustomError(247, null); 
            END IF;

            SET _int_n = 13;

            UPDATE cas_amn_associaipmaquina
            SET amn_c_codigo = _vch_codigo
            WHERE amn_c_ip = _vch_ip
            AND	amn_n_modelo = _int_codmodelo;
        ELSE
            IF (_int_operacao = 3)
            THEN
                SET _int_n = 14;
                SELECT mco_n_modelo
                INTO _int_codmodelo 
                FROM cas_mco_mexconta
                WHERE mco_c_ip = _vch_ip LIMIT 1;

                SET _int_n = 15;
                DELETE FROM cas_amn_associaipmaquina
                WHERE amn_c_codigo = _vch_codigo
                AND amn_c_ip = _vch_ip
                AND amn_n_modelo = _int_codmodelo;
            END IF;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_atualizacliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_atualizacliente`(
    _int_codigo				    INT,		            _vch_usuario		VARCHAR(50),	_vch_senha		VARCHAR(50),	_int_tipologin			INT,
	_vch_cpf					    VARCHAR(50),        _vch_name			VARCHAR(50),	_vch_nickname	VARCHAR(50),	_vch_street				VARCHAR(50),
	_vch_streetnum				 VARCHAR(5),        _vch_complemento	VARCHAR(50),	_vch_zona		VARCHAR(50),	_vch_city				VARCHAR(50),
	_vch_state				    VARCHAR(50),	 _vch_postalcode		VARCHAR(50),	_vch_birthday	VARCHAR(10),	_vch_sex				VARCHAR(2),
	_vch_civilstate			    VARCHAR(50),   _vch_profesion		VARCHAR(50),	_vch_email		VARCHAR(50),	_vch_codtelefon			VARCHAR(3),
	_vch_telefon				    VARCHAR(20),	_vch_codtelcelular	VARCHAR(3),		_vch_telcelular	VARCHAR(15),	_vch_codtelcomercial	VARCHAR(3),
	_vch_telcomercial		    VARCHAR(15),	_vch_codfax			VARCHAR(3),		_vch_fax		VARCHAR(15),	_vch_lastfrombankerid	VARCHAR(10),
	_vch_lastfromnumerocartao VARCHAR(16),	_vch_rg				VARCHAR(12),	_int_situacao	INT,		_int_creditosjogados	INT,
	_int_pontos					INT,		        _int_pontosusados	INT,		_vch_data		VARCHAR(19),	_vch_banco				VARCHAR(50),
	_vch_clientedesde			VARCHAR(50),	    _vch_foneref2		VARCHAR(15),	_vch_nomeref2	VARCHAR(50),	_vch_nomeref			VARCHAR(50),
	_vch_renda					VARCHAR(50),	_vch_tipopessoa		VARCHAR(50),	_vch_foneref	VARCHAR(15),	_vch_passdigitado		VARCHAR(8),
	_bit_expirasenha			TINYINT(1),			_int_diasenha		INT,		_int_codigoclienteinclusao INT
)
BEGIN
    DECLARE _int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

        IF (_int_codigo = 0)
            THEN
                IF (_vch_usuario <> '') 
                    THEN
                    SET _int_n = 1;
                    
                    IF EXISTS(SELECT cli_n_codigo 
                                FROM cas_cli_clientes 
                                WHERE cli_c_usuario = _vch_usuario)
                    THEN
                        CALL RaiseCustomError(210, null);
                    END IF;
            END IF;

            SET _int_n = 2;
            
            IF EXISTS(SELECT cli_n_codigo 
                        FROM cas_cli_clientes 
                        WHERE cli_c_cpf = _vch_cpf)
            THEN
                			
                CALL RaiseCustomError(131, null);
            END IF;
        END IF;

        IF (_int_codigo = 0)
        THEN
            SET _int_n = 4;
            INSERT INTO cas_cli_clientes (
                cli_c_usuario,			cli_c_senha,		cli_n_tipologin,		cli_c_cpf, 
                cli_c_name,				cli_c_nickname,		cli_c_street,			cli_c_streetnum, 
                cli_c_complemento,		cli_c_zona,			cli_c_city,				cli_c_state, 
                cli_c_postalcode,		cli_c_birthday,		cli_c_sex,				cli_c_civilstate, 
                cli_c_profesion,		cli_c_email,		cli_c_codtelefon,		cli_c_telefon, 
                cli_c_codtelcelular,	cli_c_telcelular,	cli_c_codtelcomercial,	cli_c_telcomercial, 
                cli_c_codfax,			cli_c_fax,			cli_c_lastfrombankerid,	cli_c_lastfromnumerocartao, 
                cli_c_rg,				cli_n_situacao,		cli_n_creditosjogados,	cli_n_pontos, 
                cli_n_pontosusados,		cli_c_data,			cli_c_banco,			cli_c_clientedesde, 
                cli_c_foneref2,			cli_c_nomeref2,		cli_c_nomeref,			cli_c_renda,  
                cli_c_tipopessoa,  		cli_c_foneref,		cli_c_digitado,			cli_b_expirasenha, 
                cli_n_diasenha,			cli_d_datasenha,	cli_n_codigoclienteinclusao)
            VALUES (
                _vch_usuario,			_vch_senha,			_int_tipologin,			_vch_cpf, 
                _vch_name,				_vch_nickname, 		_vch_street,			_vch_streetnum, 
                _vch_complemento,		_vch_zona,			_vch_city,				_vch_state, 
                _vch_postalcode,		_vch_birthday,		_vch_sex,				_vch_civilstate, 
                _vch_profesion,			_vch_email,			_vch_codtelefon,		_vch_telefon, 
                _vch_codtelcelular,		_vch_telcelular,	_vch_codtelcomercial,	_vch_telcomercial, 
                _vch_codfax,			_vch_fax,			_vch_lastfrombankerid,	_vch_lastfromnumerocartao, 
                _vch_rg,				_int_situacao,		_int_creditosjogados,	_int_pontos,	
                _int_pontosusados, CAST(CURDATE() AS CHAR(10)), _vch_banco, _vch_clientedesde, 
                _vch_foneref2,			_vch_nomeref2,		_vch_nomeref,			_vch_renda, 
                _vch_tipopessoa,		_vch_foneref,		_vch_passdigitado,		_bit_expirasenha, 
                _int_diasenha,			CURDATE(),			_int_codigoclienteinclusao);
        
          ELSE
                SET _int_n = 5;
		UPDATE cas_cli_clientes 
		SET cli_c_usuario			= _vch_usuario,				cli_c_senha			= _vch_senha,
			cli_n_tipologin			= _int_tipologin,			cli_c_cpf			= _vch_cpf, 
			cli_c_name				= _vch_name,				cli_c_nickname		= _vch_nickname, 
			cli_c_street			= _vch_street,				cli_c_streetnum		= _vch_streetnum, 
			cli_c_complemento		= _vch_complemento,			cli_c_zona			= _vch_zona, 
			cli_c_city				= _vch_city,				cli_c_state			= _vch_state, 
			cli_c_postalcode		= _vch_postalcode,			cli_c_birthday		= _vch_birthday, 
			cli_c_sex				= _vch_sex,					cli_c_civilstate	= _vch_civilstate, 
			cli_c_profesion			= _vch_profesion,			cli_c_email			= _vch_email,
			cli_c_codtelefon		= _vch_codtelefon,			cli_c_telefon		= _vch_telefon, 
			cli_c_codtelcelular		= _vch_codtelcelular,		cli_c_telcelular	= _vch_telcelular,
			cli_c_codtelcomercial	= _vch_codtelcomercial,		cli_c_telcomercial	= _vch_telcomercial, 
			cli_c_codfax			= _vch_codfax,				cli_c_fax			= _vch_fax,
			cli_c_lastfrombankerid	= _vch_lastfrombankerid,	cli_c_lastfromnumerocartao = _vch_lastfromnumerocartao, 
			cli_c_rg				= _vch_rg, 					cli_n_situacao		= _int_situacao, 
			cli_n_creditosjogados	= _int_creditosjogados,		cli_n_pontos		= _int_pontos, 
			cli_n_pontosusados		= _int_pontosusados,		cli_c_data			= CAST(CURDATE() AS CHAR(10)), 
			cli_c_banco				= _vch_banco,				cli_c_clientedesde	= _vch_clientedesde, 
			cli_c_foneref2			= _vch_foneref2, 			cli_c_nomeref2		= _vch_nomeref2, 
			cli_c_nomeref			= _vch_nomeref,				cli_c_renda			= _vch_renda,  
			cli_c_tipopessoa		= _vch_tipopessoa,			cli_c_foneref		= _vch_foneref, 
			cli_c_digitado			= _vch_passdigitado,		cli_b_expirasenha	= _bit_expirasenha, 
			cli_n_diasenha			= _int_diasenha, 			cli_d_datasenha		= GETDATE()
	    WHERE cli_n_codigo 			= _int_codigo;

	    IF (_int_situacao = 0)
        THEN

			SET _int_n = 6;

			DELETE FROM cas_mcl_mexcontrolelogin
			WHERE mcl_n_codigo = _int_codigo;
	    END IF;

     END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_atualizacontrolacesso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_atualizacontrolacesso`(
    _int_tiporeg	INT,		
    _int_codidioma	INT,		
    _int_codperfil	INT,		
    _int_systemtype	INT,
    _vch_comando	VARCHAR(35),	
    _vch_descricao	VARCHAR(45),	
    _int_nivel		INT,		
    _int_codnivel1	INT,
    _int_codnivel2	INT,		
    _int_codnivel3	INT,		
    _int_tipo		INT,		
    _int_codigo		INT,
    _bit_apagar		TINYINT(1),			
    _bit_cartao		TINYINT(1)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_bit_apagar = 1)
    THEN
        SET _int_n = 1;
        DELETE
        FROM cas_cta_controlacesso
        WHERE cta_n_codidioma = _int_codidioma
        AND cta_n_codperfil = _int_codperfil
        AND cta_n_systemtype = _int_systemtype
        AND cta_n_tipo = _int_tipo;
    END IF;

    IF (int_tiporeg = 0)
    THEN
        SET _int_n = 2;
        IF NOT EXISTS(SELECT cta_n_codigo 
        FROM cas_cta_controlacesso 
        WHERE cta_n_codigo = _int_codigo)
        THEN
            SET _int_n = 3;
            INSERT INTO cas_cta_controlacesso(cta_n_codigo, cta_n_codidioma, cta_n_codperfil, cta_n_systemtype, cta_c_comando, cta_c_descricao
            ,cta_n_nivel, cta_n_codnivel1, cta_n_codnivel2, cta_n_codnivel3, cta_n_tipo)
            VALUES(_int_codigo, _int_codidioma, _int_codperfil, _int_systemtype, _vch_comando, _vch_descricao, _int_nivel, _int_codnivel1,
            _int_codnivel2, _int_codnivel3, _int_tipo);
        ELSE
            CALL RaiseCustomError(254, null);
        END IF;
    ELSE
        SET _int_n = 5;
        UPDATE cas_cta_controlacesso
        SET cta_n_codidioma = _int_codidioma, cta_n_codperfil = _int_codperfil, cta_n_systemtype = _int_systemtype, cta_c_comando = _vch_comando,
        cta_c_descricao = _vch_descricao, cta_n_nivel = _int_nivel, cta_n_codnivel1 = _int_codnivel1, cta_n_codnivel2 = _int_codnivel2,
        cta_n_codnivel3 = _int_codnivel3, cta_n_tipo = _int_tipo
        WHERE cta_n_codigo = _int_codigo;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_atualizaexibircierredia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_atualizaexibircierredia`(
   _bit_entradacaixa			TINYINT(1),	_bit_reforcocaixa			TINYINT(1),	_bit_retiradacaixa			TINYINT(1),	_bit_entradatickcaixa		TINYINT(1),
	_bit_entradatickmaq		TINYINT(1),	_bit_entradadinhmaq		TINYINT(1),	_bit_entradatotal			TINYINT(1),	_bit_salidashoy				TINYINT(1),
	_bit_salidasant				TINYINT(1),	_bit_pgtomanuais			TINYINT(1),	_bit_salidastot				TINYINT(1),	_bit_saldo					TINYINT(1),
	_bit_premiospg				TINYINT(1),	_bit_deduccian1				TINYINT(1),	_bit_deduccian2				TINYINT(1),	_bit_saldocaixa				TINYINT(1),
	_bit_deduccianentr			TINYINT(1),	_bit_cortesias1				TINYINT(1),	_bit_sinretornarhoy			TINYINT(1),	_bit_sinretornarant			TINYINT(1),
	_bit_caducadossinret		TINYINT(1),	_bit_entradascaixamovel	TINYINT(1),	_bit_saidascaixamovel		TINYINT(1),	_bit_promocoes				TINYINT(1),
	_bit_saidaspromocoes		TINYINT(1),	_bit_diferencapromocoes	TINYINT(1),	_bit_resultadoparcial		TINYINT(1),	_bit_rentabcaixa			TINYINT(1),
	_bit_entradacaixaimp		TINYINT(1),	_bit_reforcocaixaimp		TINYINT(1),	_bit_retiradacaixaimp		TINYINT(1),	_bit_entradatickcaixaimp	TINYINT(1),
	_bit_entradatickmaqimp	TINYINT(1),	_bit_entradadinhmaqimp	TINYINT(1),	_bit_entradatotalimp		TINYINT(1),	_bit_salidashoyimp			TINYINT(1),
	_bit_salidasantimp			TINYINT(1),	_bit_pgtomanuaisimp		TINYINT(1),	_bit_salidastotimp			TINYINT(1),	_bit_saldoimp				TINYINT(1),
	_bit_premiospgimp			TINYINT(1),	_bit_deduccian1imp			TINYINT(1),	_bit_deduccian2imp			TINYINT(1),	_bit_saldocaixaimp			TINYINT(1),
	_bit_deduccianentrimp		TINYINT(1),	_bit_cortesias1imp			TINYINT(1),	_bit_sinretornarhoyimp		TINYINT(1),	_bit_sinretornarantimp		TINYINT(1),
	_bit_caducadossinretimp	TINYINT(1),	_bit_entradascaixamovelimp	TINYINT(1),	_bit_saidascaixamovelimp	TINYINT(1),	_bit_promocoesimp			TINYINT(1),
	_bit_saidaspromocoesimp	TINYINT(1),	_bit_diferencapromocoesimp	TINYINT(1),	_bit_resultadoparcialimp	TINYINT(1),	_bit_rentabcaixaimp			TINYINT(1)
)
BEGIN
    DECLARE _int_n INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

    SET _int_n = 1;
    IF NOT EXISTS(SELECT prt_n_codigo FROM cas_prt_cierredia)
    THEN
		SET _int_n = 2;
		INSERT INTO cas_prt_cierredia (prt_n_codigo, prt_b_entradacaixa, prt_b_reforcocaixa, prt_b_retiradacaixa, prt_b_entradaticketcaixa, 
			prt_b_entradaticketmaquina, prt_b_entradadinheiromaquina, prt_b_entradatotal, prt_b_salidashoy, prt_b_salidasant, prt_b_pagamentosmanuais,
			prt_b_salidastot, prt_b_saldo, prt_b_premiospagos, prt_b_deduccian1, prt_b_deduccian2, prt_b_saldocaixa, prt_b_deduccianentrada, 
			prt_b_cortesias1, prt_b_sinretornarhoy, prt_b_sinretornarant, prt_b_caducadossinret, prt_b_entradacaixaimp, prt_b_reforcocaixaimp,
			prt_b_retiradacaixaimp, prt_b_entradaticketcaixaimp, prt_b_entradaticketmaquinaimp, prt_b_entradadinheiromaquinaimp, prt_b_entradatotalimp,
			prt_b_salidashoyimp, prt_b_salidasantimp, prt_b_pagamentosmanuaisimp, prt_b_salidastotimp, prt_b_saldoimp, prt_b_premiospagosimp, 
			prt_b_deduccian1imp, prt_b_deduccian2imp, prt_b_saldocaixaimp, prt_b_deduccianentradaimp, prt_b_cortesias1imp, prt_b_sinretornarhoyimp, 
			prt_b_sinretornarantimp, prt_b_caducadossinretimp, prt_b_entradascaixamovel, prt_b_saidascaixamovel, prt_b_promocoes, prt_b_saidaspromocoes,
			prt_b_diferencapromocoes, prt_b_entradascaixamovelimp, prt_b_saidascaixamovelimp, prt_b_promocoesimp, prt_b_saidaspromocoesimp, 
			prt_b_diferencapromocoesimp, prt_b_resultadoparcial, prt_b_resultadoparcialimp, prt_b_rentabcaixa, prt_b_rentabcaixaimp)
		VALUES (1, _bit_entradacaixa, _bit_reforcocaixa, _bit_retiradacaixa, _bit_entradatickcaixa,
			_bit_entradatickmaq, _bit_entradadinhmaq, _bit_entradatotal, _bit_salidashoy, _bit_salidasant, _bit_pgtomanuais,
			_bit_salidastot, _bit_saldo, _bit_premiospg, _bit_deduccian1, _bit_deduccian2, _bit_saldocaixa, _bit_deduccianentr,
			_bit_cortesias1, _bit_sinretornarhoy, _bit_sinretornarant, _bit_caducadossinret, _bit_entradacaixaimp, _bit_reforcocaixaimp,
			_bit_retiradacaixaimp, _bit_entradatickcaixaimp, _bit_entradatickmaqimp, _bit_entradadinhmaqimp, _bit_entradatotalimp,
			_bit_salidashoyimp, _bit_salidasantimp, _bit_pgtomanuaisimp, _bit_salidastotimp, _bit_saldoimp, _bit_premiospgimp,
			_bit_deduccian1imp, _bit_deduccian2imp, _bit_saldocaixaimp, _bit_deduccianentrimp, _bit_cortesias1imp, _bit_sinretornarhoyimp,
			_bit_sinretornarantimp, _bit_caducadossinretimp, _bit_entradascaixamovel, _bit_saidascaixamovel, _bit_promocoes, _bit_saidaspromocoes,
			_bit_diferencapromocoes, _bit_entradascaixamovelimp, _bit_saidascaixamovelimp, _bit_promocoesimp, _bit_saidaspromocoesimp,
			_bit_diferencapromocoesimp, _bit_resultadoparcial, _bit_resultadoparcialimp, _bit_rentabcaixa, _bit_rentabcaixaimp);
    ELSE

		SET _int_n = 4;
		DELETE FROM cas_prt_cierredia;
		
		SET _int_n = 5;
		INSERT INTO cas_prt_cierredia (prt_n_codigo, prt_b_entradacaixa, prt_b_reforcocaixa, prt_b_retiradacaixa, prt_b_entradaticketcaixa, 
			prt_b_entradaticketmaquina, prt_b_entradadinheiromaquina, prt_b_entradatotal, prt_b_salidashoy, prt_b_salidasant, prt_b_pagamentosmanuais,
			prt_b_salidastot, prt_b_saldo, prt_b_premiospagos, prt_b_deduccian1, prt_b_deduccian2, prt_b_saldocaixa, prt_b_deduccianentrada, 
			prt_b_cortesias1, prt_b_sinretornarhoy, prt_b_sinretornarant, prt_b_caducadossinret, prt_b_entradacaixaimp, prt_b_reforcocaixaimp,
			prt_b_retiradacaixaimp, prt_b_entradaticketcaixaimp, prt_b_entradaticketmaquinaimp, prt_b_entradadinheiromaquinaimp, prt_b_entradatotalimp,
			prt_b_salidashoyimp, prt_b_salidasantimp, prt_b_pagamentosmanuaisimp, prt_b_salidastotimp, prt_b_saldoimp, prt_b_premiospagosimp, 
			prt_b_deduccian1imp, prt_b_deduccian2imp, prt_b_saldocaixaimp, prt_b_deduccianentradaimp, prt_b_cortesias1imp, prt_b_sinretornarhoyimp, 
			prt_b_sinretornarantimp, prt_b_caducadossinretimp, prt_b_entradascaixamovel, prt_b_saidascaixamovel, prt_b_promocoes, prt_b_saidaspromocoes,
			prt_b_diferencapromocoes, prt_b_entradascaixamovelimp, prt_b_saidascaixamovelimp, prt_b_promocoesimp, prt_b_saidaspromocoesimp, 
			prt_b_diferencapromocoesimp, prt_b_resultadoparcial, prt_b_resultadoparcialimp, prt_b_rentabcaixa, prt_b_rentabcaixaimp)
		VALUES (1, _bit_entradacaixa, _bit_reforcocaixa, _bit_retiradacaixa, _bit_entradatickcaixa,
			_bit_entradatickmaq, _bit_entradadinhmaq, _bit_entradatotal, _bit_salidashoy, _bit_salidasant, _bit_pgtomanuais,
			_bit_salidastot, _bit_saldo, _bit_premiospg, _bit_deduccian1, _bit_deduccian2, _bit_saldocaixa, _bit_deduccianentr,
			_bit_cortesias1, _bit_sinretornarhoy, _bit_sinretornarant, _bit_caducadossinret, _bit_entradacaixaimp, _bit_reforcocaixaimp,
			_bit_retiradacaixaimp, _bit_entradatickcaixaimp, _bit_entradatickmaqimp, _bit_entradadinhmaqimp, _bit_entradatotalimp,
			_bit_salidashoyimp, _bit_salidasantimp, _bit_pgtomanuaisimp, _bit_salidastotimp, _bit_saldoimp, _bit_premiospgimp,
			_bit_deduccian1imp, _bit_deduccian2imp, _bit_saldocaixaimp, _bit_deduccianentrimp, _bit_cortesias1imp, _bit_sinretornarhoyimp,
			_bit_sinretornarantimp, _bit_caducadossinretimp, _bit_entradascaixamovel, _bit_saidascaixamovel, _bit_promocoes, _bit_saidaspromocoes,
			_bit_diferencapromocoes, _bit_entradascaixamovelimp, _bit_saidascaixamovelimp, _bit_promocoesimp, _bit_saidaspromocoesimp,
			_bit_diferencapromocoesimp, _bit_resultadoparcial, _bit_resultadoparcialimp, _bit_rentabcaixa, _bit_rentabcaixaimp);
	
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_atualizaexibircierreticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_atualizaexibircierreticket`(
   _bit_numconta	   TINYINT(1),	_bit_entdintick		TINYINT(1),	_bit_entdinmaq		TINYINT(1),	_bit_entickcx		TINYINT(1),	
   _bit_totent			TINYINT(1),	_bit_saldo			TINYINT(1),	_bit_deducao		   TINYINT(1),	_bit_pagnet			TINYINT(1),	
	_bit_premio			TINYINT(1),	_bit_aposta			TINYINT(1),	_bit_numcontaimp	TINYINT(1),	_bit_entdintickimp	TINYINT(1),
	_bit_entdinmaqimp	TINYINT(1),	_bit_entickcximp	TINYINT(1),	_bit_totentimp		TINYINT(1),	_bit_saldoimp		TINYINT(1),
	_bit_deducaoimp		TINYINT(1),	_bit_pagnetimp		TINYINT(1),	_bit_premioimp		TINYINT(1),	_bit_apostaimp		TINYINT(1)
)
BEGIN
    DECLARE _int_n       INT;
    DECLARE _int_codigo  INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    SELECT prt_n_codigo
    INTO _int_codigo 
    FROM cas_prt_cierreticket 
    WHERE prt_n_codigo = 1   ;

    IF (_int_codigo IS NULL)
    THEN
        SET _int_n = 2;
        INSERT INTO cas_prt_cierreticket 
        VALUES(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
    END IF;

    SET _int_n = 3;
    UPDATE cas_prt_cierreticket
    SET prt_b_numconta = _bit_numconta, prt_b_entdintick = _bit_entdintick, prt_b_entdinmaq = _bit_entdinmaq,
    prt_b_entickcx = _bit_entickcx, prt_b_totent = _bit_totent, prt_b_saldo =  _bit_saldo, prt_b_deducao = _bit_deducao,
    prt_b_pagnet = _bit_pagnet, prt_b_premio = _bit_premio, prt_b_aposta = _bit_aposta, prt_b_numcontaimp = _bit_numcontaimp,
    prt_b_entdintickimp = _bit_entdintickimp, prt_b_entdinmaqimp = _bit_entdinmaqimp, prt_b_entickcximp = _bit_entickcximp,
    prt_b_totentimp = _bit_totentimp, prt_b_saldoimp =  _bit_saldoimp, prt_b_deducaoimp = _bit_deducaoimp, 
    prt_b_pagnetimp = _bit_pagnetimp, prt_b_premioimp = _bit_premioimp, prt_b_apostaimp = _bit_apostaimp
    WHERE prt_n_codigo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_atualizahistoricooperacao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_atualizahistoricooperacao`(
    _vch_cpf                VARCHAR(20),    
    _vch_desctabela         VARCHAR(50),    
    _vch_descoperacao       VARCHAR(80),    
    _vch_codticket          VARCHAR(8),
    _int_codoperacao        INT,                
    _dec_valor              DECIMAL(18,2),                 
    _vch_numcartao          VARCHAR(20),    
    _vch_idtrans            VARCHAR(21),
    _vch_maquina            VARCHAR(16)
)
BEGIN
DECLARE _int_n INT;

	
DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

        SET _int_n = 1;
        INSERT INTO cas_his_historicooperacao (his_c_cpf, his_c_descricaotela,
                his_c_descricaooperacao, his_d_datainclusao, his_c_numticket, his_n_codigooperacao, his_n_valor,
                his_c_numerocartao, his_c_idtransacao, his_c_maquina)
        VALUES (_vch_cpf, _vch_desctabela, 
                _vch_descoperacao, NOW(6), _vch_codticket, _int_codoperacao, _dec_valor,
                _vch_numcartao, _vch_idtrans, _vch_maquina);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_atualizalocaiscotacoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_atualizalocaiscotacoes`(
_int_codmoeda	 INT,	
int_valor		    INT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    INSERT INTO cas_lot_locaiscotacoes (lot_n_codmoeda, lot_d_datacotacao, lot_n_valor)
    VALUES (_int_codmoeda, CURDATE(), _int_valor);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_atualizapos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_atualizapos`(
_int_codigo		       INT,	
_vch_identificacao	    VARCHAR(16)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    UPDATE cas_pos_pos 
    SET pos_c_identificacao = _vch_identificacao
    WHERE pos_n_codigo = _int_codigo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_atualizaticketmovimento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_atualizaticketmovimento`(
   _vch_macaddress	VARCHAR(16) 
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    UPDATE cas_tck_mextickets 
    SET tck_n_saldoant = tck_n_saldo
    WHERE tck_c_maquina = _vch_macadress
    AND tck_n_activa = 1
    AND tck_c_code IN 
    (SELECT DISTINCT mvi_c_code 
    FROM cas_mvi_mexmovimientos);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_cabecalho` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_cabecalho`(
   _vch_nomecasa	VARCHAR(50),	_vch_linha1					   VARCHAR(50),	_vch_linha2		            VARCHAR(50),	_vch_linha3		VARCHAR(50),	
	_vch_linha4		VARCHAR(50),	_vch_linha5					   VARCHAR(50),	_vch_linha6		            VARCHAR(50),	_bit_imprimiroperadora	TINYINT(1),
	_vch_operadora	VARCHAR(50),	_bit_imprimirdadosusuario	TINYINT(1),	_bit_imprimiroperadoramaior TINYINT(1)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    UPDATE cas_msw_mensagem SET msw_c_cabnomecasa = _vch_nomecasa, msw_c_cablinha1 = _vch_linha1, msw_c_cablinha2 = _vch_linha2, 
    msw_c_cablinha3 = _vch_linha3, msw_c_cablinha4 = _vch_linha4, msw_c_cablinha5 = _vch_linha5, msw_c_cablinha6 = _vch_linha6,
    msw_b_imprimiroperadora = _bit_imprimiroperadora, msw_c_operadora = _vch_operadora, msw_b_imprimirdadosusuario = _bit_imprimirdadosusuario,
    msw_b_imprimiropermaior = _bit_imprimiroperadoramaior;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_dataticketpromocao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_dataticketpromocao`(
    _vch_data		VARCHAR(10),	_int_operacao	INT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
    RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_int_operacao = 1)
    THEN
        SET _int_n = 1;
        IF NOT EXISTS(SELECT dpr_d_data FROM cas_dpr_dataspromo WHERE dpr_d_data = CAST(_vch_data AS DATE))
        THEN
            SET _int_n = 2;
            INSERT INTO cas_dpr_dataspromo(dpr_d_data) VALUES(CAST(_vch_data AS DATE));
            ELSE
            SET _int_n = 3;
            CALL RaiseCustomError(_int_n, null);
        END IF;
    ELSE
        IF (_int_operacao = 2)
        THEN
            SET _int_n = 4;
            DELETE FROM cas_dpr_dataspromo WHERE dpr_d_data = CAST(_vch_data AS DATE);
        ELSE
            SET _int_n = 5;
            IF EXISTS(SELECT dpr_d_data FROM cas_dpr_dataspromo WHERE dpr_d_data = CAST(_vch_data AS DATE))
            THEN  
                SET _int_n = 6;
                CALL RaiseCustomError(_int_n, null);
            END IF;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_desbloquearticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_desbloquearticket`(
    _vch_numticket	VARCHAR(8)
)
BEGIN
    DECLARE _int_n INT;
    DECLARE _int_wbloqueado	INT;
    DECLARE _int_wactiva	INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    IF EXISTS(SELECT tck_c_code 
    FROM cas_tck_mextickets 
    WHERE tck_c_code = _vch_numticket)
    THEN
        SET _int_n = 2;
        SELECT tck_n_blocked, tck_n_activa
        INTO _int_wbloqueado, _int_wactiva 
        FROM cas_tck_mextickets 
        WHERE tck_c_code = _vch_numticket;

        IF (_int_wactiva = 0)
        THEN
            CALL RaiseCustomError(142, null);
        END IF;

        IF (_int_wbloqueado = 0)
        THEN
            CALL RaiseCustomError(251, null);
        END IF;

        SET _int_n = 7;
        UPDATE cas_tck_mextickets 
        SET tck_n_blocked = 0
        WHERE tck_c_code = _vch_numticket;
    ELSE
        CALL RaiseCustomError(142, null);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_email`(
    _vch_email	VARCHAR(50)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    IF EXISTS(SELECT ema_c_email FROM cas_ema_email WHERE UPPER(ema_c_email) = UPPER(_vch_email))
    THEN
        CALL RaiseCustomError(246, null);
    ELSE
        SET _int_n = 3;
        INSERT INTO cas_ema_email(ema_c_email) VALUES (_vch_email);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_emailpendente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_emailpendente`(
   _vch_caminhofechamento			VARCHAR(200),	_vch_caminhofechamentodetalhe	VARCHAR(200),	_vch_caminhocontabil			      VARCHAR(200),
	_vch_caminhocontabilpgmanual	VARCHAR(200),	_vch_caminhocontabilPDF			VARCHAR(200),	_vch_caminhocontabilpgmanualPDF	VARCHAR(200),
	_vch_codmodalidade				   SMALLINT,		   _vch_caminhoticketinvalido		VARCHAR(200),   _bit_fechamentoconsolidado        TINYINT(1)
)
BEGIN
DECLARE _int_n INT;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN 
RESIGNAL SET MYSQL_ERRNO = int_n;
END;

SET _vch_caminhocontabil            = NULL;
SET _vch_caminhocontabilpgmanual    = NULL;
SET _vch_caminhocontabilPDF         = NULL;
SET _vch_caminhocontabilpgmanualPDF = NULL;
SET _vch_caminhoticketinvalido      = NULL;

SET _int_n = 1;
INSERT INTO cas_emp_emailpendentes(emp_c_caminhofechamento, emp_c_caminhodetalhe, emp_c_caminhocontabil, emp_c_caminhocontabilpdf, emp_d_data,
emp_c_caminhocontabilpgmanual, emp_c_caminhocontabilpgmanualpdf, emp_n_codmodalidade, emp_c_caminhoticketsinvalidos, emp_b_fechamentoconsolidado) 
VALUES (IFNULL(_vch_caminhofechamento, ''), IFNULL(_vch_caminhofechamentodetalhe, ''), IFNULL(_vch_caminhocontabil, ''), IFNULL(_vch_caminhocontabilPDF, ''), GetDate(),
IFNULL(_vch_caminhocontabilpgmanual, ''), IFNULL(_vch_caminhocontabilpgmanualPDF, ''), _vch_codmodalidade, IFNULL(_vch_caminhoticketinvalido, ''), _bit_fechamentoconsolidado);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_inserecontabilhetes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_inserecontabilhetes`(
    _vch_ip				        VARCHAR(50),	    
    _vch_wmodelo		           VARCHAR(50),	    
    _vch_wpbilhete1	           VARCHAR(50),	
    _vch_wpbilhete2		        VARCHAR(50),
    _vch_wpbilhete3		        VARCHAR(50),    	
    _vch_wpbilhete4		        VARCHAR(50),	
    _vch_wpbilhete5		        VARCHAR(50),	
    _vch_wpbilhete6		        VARCHAR(50),
    _vch_wpbilhete7		        VARCHAR(50),	
    _vch_wtotalbilhete1	     VARCHAR(50),	
    _vch_wtotalbilhete2	     VARCHAR(50),	
    _vch_wtotalbilhete3	     VARCHAR(50),
    _vch_wtotalbilhete4	     VARCHAr(50),	
    _vch_wtotalbilhete5        VARCHAR(50),	
    _vch_wtotalbilhete6	     VARCHAr(50),	
    _vch_wtotalbilhete7	     VARCHAR(50),
    _vch_code	                 VARCHAR(8)
)
BEGIN
    DECLARE  _int_n                 INT;
    DECLARE	_dtm_wfecha			    DATETIME;
    DECLARE	_int_modelo			    INT;		
    DECLARE	_bint_pbilhete1		    INT;		
    DECLARE	_bint_pbilhete2		    INT;
    DECLARE	_bint_pbilhete3		    INT;		
    DECLARE	_bint_pbilhete4		    INT;		
    DECLARE	_bint_pbilhete5		    INT;		
    DECLARE	_bint_pbilhete6		    INT;
    DECLARE	_bint_pbilhete7		    INT;		
    DECLARE	_bint_totalbilhete1	 INT;		
    DECLARE	_bint_totalbilhete2	 INT;		
    DECLARE	_bint_totalbilhete3	 INT;
    DECLARE  _bint_totalbilhete4	 INT;
    DECLARE	_bint_totalbilhete5	 INT;		
    DECLARE	_bint_totalbilhete6	 INT;		
    DECLARE	_bint_totalbilhete7	 INT;


	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

    IF (_vch_wmodelo = '') THEN
		SET _int_modelo = 0;
	ELSE
		SET _int_modelo = CAST(_vch_wmodelo AS SIGNED);
    END IF;

	IF (_vch_wpbilhete1 = '') THEN
		SET _bint_pbilhete1 = 0;
	ELSE
		SET _bint_pbilhete1 = CAST(_vch_wpbilhete1 AS SIGNED);
    END IF;

	IF (_vch_wpbilhete2 = '') THEN
		SET _bint_pbilhete2 = 0;
	ELSE
		SET _bint_pbilhete2 = CAST(_vch_wpbilhete2 AS SIGNED);
    END IF;

	IF (_vch_wpbilhete3 = '') THEN
		SET _bint_pbilhete3 = 0;
	ELSE
		SET _bint_pbilhete3 = CAST(_vch_wpbilhete3 AS SIGNED);
    END IF;

	IF (_vch_wpbilhete4 = '') THEN 
		SET _bint_pbilhete4 = 0;
	ELSE
		SET _bint_pbilhete4 = CAST(_vch_wpbilhete4 AS SIGNED);
    END IF;

	IF (_vch_wpbilhete5 = '') THEN
		SET _bint_pbilhete5 = 0;
	ELSE
		SET _bint_pbilhete5 = CAST(_vch_wpbilhete5 AS SIGNED);
    END IF;

	IF (_vch_wpbilhete6 = '') THEN 
		SET _bint_pbilhete6 = 0;
	ELSE
		SET _bint_pbilhete6 = CAST(_vch_wpbilhete6 AS SIGNED);
    END IF;

	IF (_vch_wpbilhete7 = '') THEN 
		SET _bint_pbilhete7 = 0;
	ELSE
		SET _bint_pbilhete7 = CAST(_vch_wpbilhete7 AS SIGNED);
    END IF;

	IF(_vch_wtotalbilhete1 = '') THEN 
		SET _bint_totalbilhete1 = 0;
	ELSE
		SET _bint_totalbilhete1 = CAST(_vch_wtotalbilhete1 AS SIGNED);
    END IF;

	IF (_vch_wtotalbilhete2 = '') THEN
		SET _bint_totalbilhete2 = 0;
	ELSE
		SET _bint_totalbilhete2 = CAST(_vch_wtotalbilhete2 AS SIGNED);
    END IF;

	IF (_vch_wtotalbilhete3 = '') THEN 
		SET _bint_totalbilhete3 = 0;
	ELSE
		SET _bint_totalbilhete3 = CAST(_vch_wtotalbilhete3 AS SIGNED);
    END IF;

	IF (_vch_wtotalbilhete4 = '') THEN 
		SET _bint_totalbilhete4 = 0;
	ELSE
		SET _bint_totalbilhete4 = CAST(_vch_wtotalbilhete4 AS SIGNED);
    END IF;

	IF (_vch_wtotalbilhete5 = '') THEN 
		SET _bint_totalbilhete5 = 0;
	ELSE
		SET _bint_totalbilhete5 = CAST(_vch_wtotalbilhete5 AS SIGNED);
    END IF;

	IF (_vch_wtotalbilhete6 = '') THEN
		SET _bint_totalbilhete6 = 0;
	ELSE
		SET _bint_totalbilhete6 = CAST(_vch_wtotalbilhete6 AS SIGNED);
    END IF;

	IF (_vch_wtotalbilhete7 = '') THEN
		SET _bint_totalbilhete7 = 0;
	ELSE
		SET _bint_totalbilhete7 = CAST(_vch_wtotalbilhete7 AS SIGNED);
    END IF;

	SET _dtm_wfecha = CURDATE();
	
    SET _int_n = 1;

    CREATE TEMPORARY TABLE  IF NOT EXISTS _retorno
    (saldo INT, dias INT, pontos INT, saldocredito INT, erro INT, Mensagem VARCHAR(100), Status INT);
	
    SET _int_n = 2;
		INSERT INTO _retorno values (0, 0, 0, 0, 0, '', 0);

	SET _int_n = 3;

    IF EXISTS(SELECT cbi_d_data
    FROM cas_cbi_contabilhetes
    WHERE cbi_d_data < CURDATE()
    AND cbi_n_modelo = _int_modelo
    AND cbi_c_ip = _vch_ip) 
    THEN
        SET _int_n = 4;

        INSERT INTO cas_cbi_contabilhetes(cbi_d_data, cbi_c_ip, cbi_n_modelo, cbi_n_pbilhete1, cbi_n_pbilhete2, cbi_n_pbilhete3,
        cbi_n_pbilhete4, cbi_n_pbilhete5, cbi_n_pbilhete6, cbi_n_pbilhete7, cbi_n_totalbilhete1, cbi_n_totalbilhete2,
        cbi_n_totalbilhete3, cbi_n_totalbilhete4, cbi_n_totalbilhete5, cbi_n_totalbilhete6, cbi_n_totalbilhete7, cbi_n_bilhete1,
        cbi_n_bilhete2, cbi_n_bilhete3, cbi_n_bilhete4, cbi_n_bilhete5, cbi_n_bilhete6, cbi_n_bilhete7)
        SELECT  _dtm_wfecha, cbi_c_ip, cbi_n_modelo, _bint_pbilhete1, _bint_pbilhete2, _bint_pbilhete3, _bint_pbilhete4,
        _bint_pbilhete5, _bint_pbilhete6, _bint_pbilhete7, _bint_totalbilhete1, _bint_totalbilhete2, _bint_totalbilhete3,
        _bint_totalbilhete4, _bint_totalbilhete5, _bint_totalbilhete6, _bint_totalbilhete7,
        CASE 
            WHEN _bint_totalbilhete1 - cbi_n_totalbilhete1 <= 0 THEN 0 
            ELSE _bint_totalbilhete1 - cbi_n_totalbilhete1 
        END,
        CASE 
            WHEN _bint_totalbilhete2 - cbi_n_totalbilhete2 <= 0 THEN 0 
            ELSE _bint_totalbilhete2 - cbi_n_totalbilhete2 
        END,
        CASE 
            WHEN _bint_totalbilhete3 - cbi_n_totalbilhete3 <= 0 THEN 0 
            ELSE _bint_totalbilhete3 - cbi_n_totalbilhete3 
        END,
        CASE 
            WHEN _bint_totalbilhete4 - cbi_n_totalbilhete4 <= 0 THEN 0 
            ELSE _bint_totalbilhete4 - cbi_n_totalbilhete4 
        END,
        CASE 
            WHEN _bint_totalbilhete5 - cbi_n_totalbilhete5 <= 0 THEN 0 
            ELSE _bint_totalbilhete5 - cbi_n_totalbilhete5 
        END,
        CASE 
            WHEN _bint_totalbilhete6 - cbi_n_totalbilhete6 <= 0 THEN 0 
            ELSE _bint_totalbilhete6 - cbi_n_totalbilhete6 
        END,
        CASE 
            WHEN _bint_totalbilhete7 - cbi_n_totalbilhete7 <= 0 THEN 0 
            ELSE _bint_totalbilhete7 - cbi_n_totalbilhete7 
        END
        FROM cas_cbi_contabilhetes
        WHERE cbi_d_data < CURDATE()
        AND cbi_n_modelo = _int_modelo
        AND cbi_c_ip = _vch_ip
        ORDER BY cbi_d_data DESC LIMIT 1;

    ELSE
        SET _int_n = 5;
        INSERT INTO cas_cbi_contabilhetes(cbi_d_data, cbi_c_ip, cbi_n_modelo, cbi_n_pbilhete1, cbi_n_pbilhete2, cbi_n_pbilhete3,
        cbi_n_pbilhete4, cbi_n_pbilhete5, cbi_n_pbilhete6, cbi_n_pbilhete7, cbi_n_totalbilhete1, cbi_n_totalbilhete2,
        cbi_n_totalbilhete3, cbi_n_totalbilhete4, cbi_n_totalbilhete5, cbi_n_totalbilhete6, cbi_n_totalbilhete7, cbi_n_bilhete1,
        cbi_n_bilhete2, cbi_n_bilhete3, cbi_n_bilhete4, cbi_n_bilhete5, cbi_n_bilhete6, cbi_n_bilhete7) 
        VALUES (_dtm_wfecha, _vch_ip, _int_modelo, _bint_pbilhete1, _bint_pbilhete2, _bint_pbilhete3, _bint_pbilhete4,
        _bint_pbilhete5, _bint_pbilhete6, _bint_pbilhete7, _bint_totalbilhete1, _bint_totalbilhete2, _bint_totalbilhete3,
        _bint_totalbilhete4, _bint_totalbilhete5, _bint_totalbilhete6, _bint_totalbilhete7, _bint_pbilhete1, _bint_pbilhete2, 
        _bint_pbilhete3, _bint_pbilhete4, _bint_pbilhete5, _bint_pbilhete6, _bint_pbilhete7);
    END IF;

        SET _int_n = 6;
        UPDATE _retorno SET saldo = 0, dias = 0, pontos = 0, saldocredito = 0, erro = 0, Mensagem = '', Status = 0;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_inserecontapagomanual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_inserecontapagomanual`(
    _vch_ip                         VARCHAR(50),	
    _vch_modelo1                    VARCHAR(50),	
    _vch_pnummanuales1              VARCHAR(50),	
    _vch_pretiradas1                VARCHAR(50),	
    _vch_pretiradasdinheiro1        VARCHAR(50),	
    _vch_pretiradascartoes1	        VARCHAR(50),	
    _vch_ppagomanual1               VARCHAR(50),	
    _vch_totalnummanuales1          VARCHAR(50),	
    _vch_totalretiradas1            VARCHAR(50),
    _vch_totalretiradasdinheiro1    VARCHAR(50),	
    _vch_totalretiradascartoes1     VARCHAR(50),	
    _vch_totalpagomanual1           VARCHAR(50)
)
BEGIN


DECLARE      _dtm_wfecha                        DATETIME(6);
DECLARE		_int_modelo                         INT;
DECLARE		_bint_pnummanuales		              INT;
DECLARE		_bint_pretiradas				        INT;	
DECLARE		_bint_ppagomanual			           INT;	
DECLARE		_bint_totalnummanuales              INT;
DECLARE		_bint_pretiradasdinheiro            INT;		
DECLARE		_bint_pretiradascartoes             INT;	
DECLARE		_bint_totalretiradas                INT;
DECLARE		_bint_totalretiradasdinheiro        INT;		
DECLARE		_bint_totalretiradascartoes         INT;	
DECLARE		_bint_totalpagomanual               INT;
DECLARE      _int_n                             INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

    SET _int_n = 1;
    CREATE TEMPORARY TABLE IF NOT EXISTS _retorno 
    (saldo INT, dias INT, pontos INT, saldocredito INT, erro INT, Mensagem VARCHAR(100), Status INT);

    SET _int_n = 2;
    INSERT INTO _retorno values (0, 0, 0, 0, 0, '', 0);

    IF (_vch_modelo1 = '')
    THEN 
        SET _int_modelo = 0;
    ELSE
        SET _int_modelo = CAST(_vch_modelo1 AS SIGNED);
    END IF;

    IF (_vch_pnummanuales1 = '')
    THEN
        SET _bint_pnummanuales = 0;
    ELSE
        SET _bint_pnummanuales = CAST(_vch_pnummanuales1 AS SIGNED);
    END IF;

    IF _vch_pretiradas1 = ''
    THEN
        SET _bint_pretiradas = 0;
    ELSE
        SET _bint_pretiradas = CAST(_vch_pretiradas1 AS SIGNED);
    END IF;

    IF _vch_pretiradasdinheiro1 = '' THEN
        SET _bint_pretiradasdinheiro = 0;
    ELSE
        SET _bint_pretiradasdinheiro = CAST(_vch_pretiradasdinheiro1 AS SIGNED);
    END IF;

    IF (_vch_pretiradascartoes1 = '') THEN
        SET _bint_pretiradascartoes = 0;
    ELSE
        SET _bint_pretiradascartoes = CAST(_vch_pretiradascartoes1 AS SIGNED);
    END IF;

    IF (_vch_ppagomanual1 = '') THEN
        SET _bint_ppagomanual = 0;
    ELSE
        SET _bint_ppagomanual = CAST(_vch_ppagomanual1 AS SIGNED);
    END IF;

	
    IF (_vch_totalnummanuales1 = '') THEN
        SET _bint_totalnummanuales = 0;
    ELSE
        SET _bint_totalnummanuales = CAST(_vch_totalnummanuales1 AS SIGNED);
    END IF;

    IF (_vch_totalretiradas1 = '') THEN
        SET _bint_totalretiradas = 0;
    ELSE
        SET _bint_totalretiradas = CAST(_vch_totalretiradas1 AS SIGNED);
    END IF;

    IF (_vch_totalretiradasdinheiro1 = '') THEN
        SET _bint_totalretiradasdinheiro = 0;
    ELSE
        SET _bint_totalretiradasdinheiro = CAST(_vch_totalretiradasdinheiro1 AS SIGNED);
    END IF;

    IF (_vch_totalretiradascartoes1 = '') THEN
        SET _bint_totalretiradascartoes = 0;
    ELSE
        SET _bint_totalretiradascartoes = CAST(_vch_totalretiradascartoes1 AS SIGNED);
    END IF;

    IF (_vch_totalpagomanual1 = '') THEN
        SET _bint_totalpagomanual = 0;
    ELSE
        SET _bint_totalpagomanual = CAST(_vch_totalpagomanual1 AS SIGNED);
    END IF;

    SET _dtm_wfecha = CURDATE();
    SET _int_n = 3;

    IF EXISTS(SELECT cpg_d_data
                FROM cas_cpg_contapagomanual
                WHERE cpg_d_data < CURDATE()
                AND cpg_n_modelo = _int_modelo
                AND cpg_c_ip = _vch_ip)
    THEN
        SET _int_n = 4;
        INSERT INTO cas_cpg_contapagomanual(cpg_d_data, cpg_c_ip, cpg_n_modelo, cpg_n_pnummanuales, cpg_n_pretiradas,
        cpg_n_pretiradasdinheiro, cpg_n_pretiradascartoes, cpg_n_ppagomanual, cpg_n_totalnummanuales, cpg_n_totalretiradas,
        cpg_n_totalretiradasdinheiro, cpg_n_totalretiradascartoes, cpg_n_totalpagomanual, cpg_n_nummanuales, cpg_n_retiradas,
        cpg_n_retiradasdinheiro, cpg_n_retiradascartoes, cpg_n_pagomanual)
        SELECT _dtm_wfecha, cpg_c_ip, cpg_n_modelo, _bint_pnummanuales, _bint_pretiradas, _bint_pretiradasdinheiro,
        _bint_pretiradascartoes, _bint_ppagomanual, _bint_totalnummanuales, _bint_totalretiradas, _bint_totalretiradasdinheiro,
        _bint_totalretiradascartoes, _bint_totalpagomanual,
        CASE 
        WHEN _bint_totalnummanuales - cpg_n_totalnummanuales <= 0 THEN 0 
        ELSE _bint_totalnummanuales - cpg_n_totalnummanuales 
        END,
        CASE 
        WHEN _bint_totalretiradas - cpg_n_totalretiradas <= 0 THEN 0 
        ELSE _bint_totalretiradas - cpg_n_totalretiradas 
        END,
        CASE 
        WHEN _bint_totalretiradasdinheiro - cpg_n_totalretiradasdinheiro <= 0 THEN 0 
        ELSE _bint_totalretiradasdinheiro - cpg_n_totalretiradasdinheiro
        END,
        CASE 
        WHEN _bint_totalretiradascartoes - cpg_n_totalretiradascartoes <= 0 THEN 0 
        ELSE _bint_totalretiradascartoes - cpg_n_totalretiradascartoes 
        END,
        CASE 
        WHEN _bint_totalpagomanual - cpg_n_totalpagomanual <= 0 THEN 0 
        ELSE _bint_totalpagomanual - cpg_n_totalpagomanual 
        END
        FROM cas_cpg_contapagomanual
        WHERE cpg_d_data < CURDATE()
        AND cpg_n_modelo = _int_modelo
        AND cpg_c_ip = _vch_ip
        ORDER BY cpg_d_data DESC LIMIT 1;

    ELSE
        SET _int_n = 5;
        INSERT INTO cas_cpg_contapagomanual(cpg_d_data, cpg_c_ip, cpg_n_modelo, cpg_n_pnummanuales, cpg_n_pretiradas,
        cpg_n_pretiradasdinheiro, cpg_n_pretiradascartoes, cpg_n_ppagomanual, cpg_n_totalnummanuales, cpg_n_totalretiradas,
        cpg_n_totalretiradasdinheiro, cpg_n_totalretiradascartoes, cpg_n_totalpagomanual, cpg_n_nummanuales,
        cpg_n_retiradas, cpg_n_retiradasdinheiro, cpg_n_retiradascartoes, cpg_n_pagomanual)
        VALUES (_dtm_wfecha, _vch_ip, _int_modelo, _bint_pnummanuales, _bint_pretiradas, _bint_pretiradasdinheiro,
        _bint_pretiradascartoes, _bint_ppagomanual, _bint_totalnummanuales, _bint_totalretiradas,
        _bint_totalretiradasdinheiro, _bint_totalretiradascartoes, _bint_totalpagomanual, _bint_pnummanuales,
        _bint_pretiradas, _bint_pretiradasdinheiro, _bint_pretiradascartoes, _bint_ppagomanual);
	END IF;

    SET _int_n = 6;
    UPDATE _retorno set saldo = 0, dias = 0, pontos = 0, saldocredito = 0, erro = 0, Mensagem = '', Status = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_insereestatisticapar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_insereestatisticapar`(
   _vch_ip                     VARCHAR(50), _vch_wmodelo		VARCHAR(50),	_vch_wnumjogadas    VARCHAR(50),	_vch_wcartoesjogados	VARCHAR(50),
	_vch_wjogadaspremiadas      VARCHAR(50),	_vch_wpremio1		VARCHAR(50),	_vch_wpremio2       VARCHAR(50),	_vch_wpremio3			VARCHAR(50),
	_vch_wpremio4               VARCHAR(50),	_vch_wpremio5		VARCHAR(50),	_vch_wpremio6       VARCHAR(50),	_vch_wpremio7			VARCHAR(50),
	_vch_wpremio8               VARCHAR(50),	_vch_wpremio9		VARCHAR(50),	_vch_wpremio10      VARCHAR(50),	_vch_wpremio11			VARCHAR(50),
	_vch_wpremio12              VARCHAR(50),	_vch_wpremio13		VARCHAR(50),	_vch_wpremio14      VARCHAR(50),	_vch_wpremio15			VARCHAR(50),
	_vch_wpremio16              VARCHAR(50),	_vch_wpremio17		VARCHAR(50),	_vch_wpremio18      VARCHAR(50),	_vch_wpremio19			VARCHAR(50),
	_vch_wpremio20              VARCHAR(50),	_vch_wpremio21		VARCHAR(50),	_vch_wpremio22      VARCHAR(50),	_vch_wpremio23			VARCHAR(50),
	_vch_wpremio24              VARCHAR(50),	_vch_wporcentage	VARCHAR(50),	_vch_wcreditosextra VARCHAR(50),	_vch_wcomprabolaextra	VARCHAR(50)
)
BEGIN
	
    DECLARE _int_tmp                INT;
    DECLARE _dtm_wfecha             DATETIME;
    DECLARE _int_modelo             INT;	
    DECLARE _int_numjogadas         INT;
    DECLARE _int_cartoesjogados     INT;
    DECLARE _int_jogadaspremiadas   INT;
    DECLARE _int_premio1            INT;
    DECLARE _int_premio2            INT;
    DECLARE _int_premio3            INT;
    DECLARE _int_premio4            INT;
    DECLARE _int_premio5            INT;
    DECLARE _int_premio6            INT;
    DECLARE _int_premio7            INT;
    DECLARE _int_premio8            INT;
    DECLARE _int_premio9            INT;
    DECLARE _int_premio10           INT;
    DECLARE _int_premio11           INT;
    DECLARE _int_premio12           INT;
    DECLARE _int_premio13           INT;	
    DECLARE _int_premio14           INT;
    DECLARE _int_premio15           INT;
    DECLARE _int_premio16           INT;
    DECLARE _int_premio17	        INT;	
    DECLARE _int_premio18           INT;	
    DECLARE _int_premio19           INT;
    DECLARE _int_premio20           INT;
    DECLARE _int_premio21           INT;	
    DECLARE _int_premio22           INT;
    DECLARE _int_premio23           INT;
    DECLARE _int_premio24           INT;
    DECLARE _int_porcentage	        INT;	
    DECLARE _int_creditosextra      INT;
    DECLARE _int_comprabolaextra    INT;

    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;

    CREATE TEMPORARY TABLE IF NOT EXISTS _retorno 
    (saldo INT, dias INT, pontos INT, saldocredito INT, erro INT, mensagem VARCHAR(100), Status INT);

    SET _int_n = 2;

    INSERT INTO _retorno values (0, 0, 0, 0, 0, '', 0);

    SET _int_n = 3;

    IF (_vch_wmodelo = '') THEN
        SET _int_modelo = 0;
    ELSE
        SET _int_modelo = CAST(_vch_wmodelo AS SIGNED);
    END IF;

    IF (_vch_wnumjogadas = '') THEN
        SET _int_numjogadas = 0;
    ELSE
        SET _int_numjogadas = CAST(_vch_wnumjogadas AS SIGNED);
    END IF;

    IF (_vch_wcartoesjogados = '') THEN
        SET _int_cartoesjogados = 0;
    ELSE
        SET _int_cartoesjogados = CAST(_vch_wcartoesjogados AS SIGNED);
    END IF;

    IF (_vch_wjogadaspremiadas = '') THEN
        SET _int_jogadaspremiadas = 0;
    ELSE
        SET _int_jogadaspremiadas = CAST(_vch_wjogadaspremiadas AS SIGNED);
    END IF;

    IF _(vch_wpremio1 = '') THEN
        SET _int_premio1 = 0;
    ELSE
        SET _int_premio1 = CAST(_vch_wpremio1 AS SIGNED);
    END IF;

    IF _(vch_wpremio2 = '') THEN
        SET _int_premio2 = 0;
    ELSE
        SET _int_premio2 = CAST(_vch_wpremio2 AS SIGNED);
    END IF;

    IF (_vch_wpremio3 = '') THEN
        SET _int_premio3 = 0;
    ELSE
        SET _int_premio3 = CAST(_vch_wpremio3 AS SIGNED);
    END IF;

    IF (_vch_wpremio4 = '') THEN
        SET _int_premio4 = 0;
    ELSE
        SET _int_premio4 = CAST(_vch_wpremio4 AS SIGNED);
    END IF;

    IF (_vch_wpremio5 = '') THEN
        SET _int_premio5 = 0;
    ELSE
        SET _int_premio5 = CAST(_vch_wpremio5 AS SIGNED);
    END IF;

    IF (_vch_wpremio6 = '') THEN
        SET _int_premio6 = 0;
    ELSE
        SET _int_premio6 = CAST(_vch_wpremio6 AS SIGNED);
    END IF;

    IF (_vch_wpremio7 = '') THEN
        SET _int_premio7 = 0;
    ELSE
        SET _int_premio7 = CAST(_vch_wpremio7 AS SIGNED);
    END IF;

    IF (_vch_wpremio8 = '') THEN
        SET _int_premio8 = 0;
    ELSE
        SET _int_premio8 = CAST(_vch_wpremio8 AS SIGNED);
    END IF;

    IF (_vch_wpremio9 = '') THEN
        SET _int_premio9 = 0;
    ELSE
        SET _int_premio9 = CAST(_vch_wpremio9 AS SIGNED);
    END IF;

    IF (_vch_wpremio10 = '') THEN
        SET _int_premio10 = 0;
    ELSE
        SET _int_premio10 = CAST(_vch_wpremio10 AS SIGNED);
    END IF;

    IF (_vch_wpremio11 = '') THEN
        SET _int_premio11 = 0;
    ELSE
        SET _int_premio11 = CAST(_vch_wpremio11 AS SIGNED);
    END IF;

    IF (_vch_wpremio12 = '') THEN
        SET _int_premio12 = 0;
    ELSE
        SET _int_premio12 = CAST(_vch_wpremio12 AS SIGNED);
    END IF;

    IF (_vch_wpremio13 = '') THEN
        SET _int_premio13 = 0;
    ELSE
    SET _int_premio13 = CAST(_vch_wpremio13 AS SIGNED);
    END IF;

    IF (_vch_wpremio14 = '') THEN
        SET _int_premio14 = 0;
    ELSE
        SET _int_premio14 = CAST(_vch_wpremio14 AS SIGNED);
    END IF;

    IF (_vch_wpremio15 = '') THEN
    SET _int_premio15 = 0;
    ELSE
    SET _int_premio15 = CAST(_vch_wpremio15 AS SIGNED);
    END IF;

    IF (_vch_wpremio16 = '') THEN
        SET _int_premio16 = 0;
    ELSE
        SET _int_premio16 = CAST(_vch_wpremio16 AS SIGNED);
    END IF;

    IF (_vch_wpremio17 = '') THEN
        SET _int_premio17 = 0;
    ELSE
        SET _int_premio17 = CAST(_vch_wpremio17 AS SIGNED);
    END IF;

    IF (_vch_wpremio18 = '') THEN
        SET _int_premio18 = 0;
    ELSE
        SET _int_premio18 = CAST(_vch_wpremio18 AS SIGNED);
    END IF;

    IF (_vch_wpremio19 = '') THEN
        SET _int_premio19 = 0;
    ELSE
        SET _int_premio19 = CAST(_vch_wpremio19 AS SIGNED);
    END IF;

    IF (_vch_wpremio20 = '') THEN
        SET _int_premio20 = 0;
    ELSE
        SET _int_premio20 = CAST(_vch_wpremio20 AS SIGNED);
    END IF;

    IF (_vch_wpremio21 = '') THEN
        SET _int_premio21 = 0;
    ELSE
        SET _int_premio21 = CAST(_vch_wpremio21 AS SIGNED);
    END IF;

    IF (_vch_wpremio22 = '') THEN
        SET _int_premio22 = 0;
    ELSE
        SET _int_premio22 = CAST(_vch_wpremio22 AS SIGNED);
    END IF;

    IF (_vch_wpremio23 = '') THEN
        SET _int_premio23 = 0;
    ELSE
        SET _int_premio23 = CAST(_vch_wpremio23 AS SIGNED);
    END IF;

    IF (_vch_wpremio24 = '') THEN
        SET _int_premio24 = 0;
    ELSE
        SET _int_premio24 = CAST(_vch_wpremio24 AS SIGNED);
    END IF;

    IF (_vch_wporcentage = '') THEN
        SET _int_porcentage = 0;
    ELSE
        SET _int_porcentage = CAST(_vch_wporcentage AS SIGNED);
    END IF;

    IF (_vch_wcomprabolaextra = '') THEN
        SET _int_comprabolaextra = 0;
    ELSE
        SET _int_comprabolaextra = CAST(_vch_wcomprabolaextra AS SIGNED);
    END IF;

    IF (_vch_wcreditosextra = '') THEN
        SET _int_creditosextra = 0;
    ELSE
        SET _int_creditosextra = CAST(_vch_wcreditosextra AS SIGNED);
    END IF;

    SET _dtm_wfecha = CURDATE();

    SET _int_n = 4;

    INSERT INTO cas_esp_estatisticapar(esp_d_data, esp_c_ip, esp_n_modelo, esp_n_numjogadas, esp_n_cartoesjogados, esp_n_jogadaspremiadas,
    esp_n_premio1, esp_n_premio2, esp_n_premio3, esp_n_premio4, esp_n_premio5, esp_n_premio6, esp_n_premio7, esp_n_premio8, esp_n_premio9,
    esp_n_premio10, esp_n_premio11, esp_n_premio12, esp_n_premio13, esp_n_premio14, esp_n_premio15, esp_n_premio16, esp_n_premio17,
    esp_n_premio18, esp_n_premio19, esp_n_premio20, esp_n_premio21, esp_n_premio22, esp_n_premio23, esp_n_premio24, esp_n_porcentage,
    esp_n_creditosextra, esp_n_comprabolaextra) 
    VALUES (_dtm_wfecha, _vch_ip, _int_modelo, _int_numjogadas, _int_cartoesjogados, _int_jogadaspremiadas, _int_premio1, _int_premio2,
    _int_premio3, _int_premio4, _int_premio5, _int_premio6, _int_premio7, _int_premio8, _int_premio9, _int_premio10, _int_premio11,
    _int_premio12, _int_premio13, _int_premio14, _int_premio15, _int_premio16, _int_premio17, _int_premio18, _int_premio19, _int_premio20,
    _int_premio21, _int_premio22, _int_premio23, _int_premio24, _int_porcentage, _int_creditosextra, _int_comprabolaextra);

    SET _int_n = 5;
    UPDATE _retorno set saldo = 0, dias = 0, pontos = 0, saldocredito = 0, erro = 0, Mensagem = '', Status = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_insereestatisticatot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_insereestatisticatot`(
   _vch_ip                 VARCHAR(50),	_vch_wmodelo		   VARCHAR(50),	_vch_wnumjogadas	VARCHAR(50),	_vch_wcartoesjogados	VARCHAR(50),
	_vch_wjogadaspremiadas  VARCHAR(50),	_vch_wpremio1		VARCHAR(50),	_vch_wpremio2		VARCHAR(50),	_vch_wpremio3			VARCHAR(50),
	_vch_wpremio4           VARCHAR(50),	_vch_wpremio5		VARCHAR(50),	_vch_wpremio6		VARCHAR(50),	_vch_wpremio7			VARCHAR(50),
	_vch_wpremio8           VARCHAR(50),	_vch_wpremio9		VARCHAR(50),	_vch_wpremio10		VARCHAR(50),	_vch_wpremio11			VARCHAR(50),
	_vch_wpremio12          VARCHAR(50),	_vch_wpremio13		VARCHAR(50),	_vch_wpremio14		VARCHAR(50),	_vch_wpremio15			VARCHAR(50),
	_vch_wpremio16          VARCHAR(50),	_vch_wpremio17		VARCHAR(50),	_vch_wpremio18		VARCHAR(50),	_vch_wpremio19			VARCHAR(50),
	_vch_wpremio20          VARCHAR(50),	_vch_wpremio21		VARCHAR(50),	_vch_wpremio22		VARCHAR(50),	_vch_wpremio23			VARCHAR(50),
	_vch_wpremio24          VARCHAR(50),	_vch_wporcentage	VARCHAR(50),	_vch_wcreditosextra	VARCHAR(50),	_vch_wcomprabolaextra	VARCHAR(50)
)
BEGIN
    DECLARE _int_n INT;

	

DECLARE _int_tmp                INT;
DECLARE _dtm_wfecha             DATETIME;
DECLARE _int_modelo             INT;
DECLARE _int_numjogadas         INT;	
DECLARE _int_cartoesjogados	    INT;
DECLARE _int_jogadaspremiadas   INT;
DECLARE _int_premio1            INT;
DECLARE _int_premio2		       INT;
DECLARE _int_premio3            INT;
DECLARE _int_premio4            INT;
DECLARE _int_premio5            INT;
DECLARE _int_premio6		       INT;
DECLARE _int_premio7            INT;
DECLARE _int_premio8            INT;
DECLARE _int_premio9            INT;
DECLARE _int_premio10           INT;
DECLARE _int_premio11           INT;
DECLARE _int_premio12           INT;
DECLARE _int_premio13	          INT;
DECLARE _int_premio14           INT;
DECLARE _int_premio15           INT;
DECLARE _int_premio16           INT;
DECLARE _int_premio17           INT;
DECLARE _int_premio18           INT;
DECLARE _int_premio19           INT;
DECLARE _int_premio20           INT;
DECLARE _int_premio21	          INT;
DECLARE _int_premio22           INT;
DECLARE _int_premio23           INT;
DECLARE _int_premio24           INT;
DECLARE _int_porcentage         INT;	
DECLARE _int_creditosextra      INT;
DECLARE _int_comprabolaextra    INT;

	
DECLARE _bit_walertafrequencia              TINYINT(1);	
DECLARE _bit_walertabolaextra               TINYINT(1);
DECLARE _bit_walertacreditonegativo         TINYINT(1);
DECLARE _num_wmediabolaextra                DECIMAL(18,2);
DECLARE _bint_wcartoesjogadosant            INT;	
DECLARE _bint_wcreditosextraant             INT;
DECLARE _bint_wcomprabolaextraant           INT;
DECLARE _int_wpartida                       INT;
DECLARE _int_wpartidasbolaextra             INT;
DECLARE _bint_wcartoesjogadosatu            BIGINT;
DECLARE _bint_wcartoesjogadoscalc           BIGINT;
DECLARE _int_wintervalomaior                INT;
DECLARE _num_wcreditosextraatu              DECIMAL(18,2);
DECLARE _num_wcomprabolaextraatu            DECIMAL(18,2);
DECLARE _num_wminimobolaextra               DECIMAL(18,2);
DECLARE _num_wcreditosextratot              DECIMAL(18,2);
DECLARE _num_wcomprabolaextratot            DECIMAL(18,2);
DECLARE _bint_wminimocartoesjogados         INT;
DECLARE _bint_wminimocartoesjogados2        INT;	
DECLARE _bint_wenviocartoesjogados          INT;	
DECLARE _int_i                              INT;
DECLARE _int_tmppercentualmaior             INT;
DECLARE _int_tmppercentualmenor             INT;
DECLARE _int_tmpcartoesjogados              INT;
DECLARE _int_tmpcod                         INT;
DECLARE _int_cont                           INT;


	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

    SET _int_n = 1;

    CREATE TEMPORARY TABLE IF NOT EXISTS _retorno 
    (saldo INT, dias INT, pontos INT, saldocredito INT, erro INT, Mensagem VARCHAR(100), Status INT);

    SET _int_n = 2;
    INSERT INTO _retorno values (0, 0, 0, 0, 0, '', 0);

    IF (_vch_wmodelo = '') THEN
        SET _int_modelo = 0;
    ELSE
        SET _int_modelo = CAST(_vch_wmodelo AS SIGNED);
    END IF;

    IF (_vch_wnumjogadas = '') THEN
        SET _int_numjogadas = 0;
    ELSE
        SET _int_numjogadas = CAST(_vch_wnumjogadas AS SIGNED);
    END IF;


    IF (_vch_wcartoesjogados = '') THEN
        SET _int_cartoesjogados = 0;
    ELSE
        SET _int_cartoesjogados = CAST(_vch_wcartoesjogados AS SIGNED);
    END IF;

    IF (_vch_wjogadaspremiadas = '') THEN
        SET _int_jogadaspremiadas = 0;
    ELSE
        SET _int_jogadaspremiadas = CAST(_vch_wjogadaspremiadas AS SIGNED);
    END IF;

    IF (_vch_wpremio1 = '') THEN
        SET _int_premio1 = 0;
    ELSE
        SET _int_premio1 = CAST(_vch_wpremio1 AS SIGNED);
    END IF;

    IF (_vch_wpremio2 = '') THEN
        SET _int_premio2 = 0;
    ELSE
        SET _int_premio2 = CAST(_vch_wpremio2 AS SIGNED);
    END IF;

    IF (_vch_wpremio3 = '') THEN
        SET _int_premio3 = 0;
    ELSE
        SET _int_premio3 = CAST(_vch_wpremio3 AS SIGNED);
    END IF;

    IF (_vch_wpremio4 = '') THEN
        SET _int_premio4 = 0;
    ELSE
        SET _int_premio4 = CAST(_vch_wpremio4 AS SIGNED);
    END IF;

    IF (_vch_wpremio5 = '') THEN
        SET _int_premio5 = 0;
    ELSE
        SET _int_premio5 = CAST(_vch_wpremio5 AS SIGNED);
    END IF;

    IF (_vch_wpremio6 = '') THEN
        SET _int_premio6 = 0;
    ELSE
        SET _int_premio6 = CAST(_vch_wpremio6 AS SIGNED);
    END IF;

    IF (_vch_wpremio7 = '') THEN
        SET _int_premio7 = 0;
    ELSE
        SET _int_premio7 = CAST(_vch_wpremio7 AS SIGNED);
    END IF;

    IF (_vch_wpremio8 = '') THEN
        SET _int_premio8 = 0;
    ELSE
        SET _int_premio8 = CAST(_vch_wpremio8 AS SIGNED);
    END IF;

    IF (_vch_wpremio9 = '') THEN
        SET _int_premio9 = 0;
    ELSE
        SET _int_premio9 = CAST(_vch_wpremio9 AS SIGNED);
    END IF;

    IF (_vch_wpremio10 = '') THEN
        SET _int_premio10 = 0;
    ELSE
        SET _int_premio10 = CAST(_vch_wpremio10 AS SIGNED);
    END IF;

    IF (_vch_wpremio11 = '') THEN
        SET _int_premio11 = 0;
    ELSE
        SET _int_premio11 = CAST(_vch_wpremio11 AS SIGNED);
    END IF;

    IF (_vch_wpremio12 = '') THEN
        SET _int_premio12 = 0;
    ELSE
        SET _int_premio12 = CAST(_vch_wpremio12 AS SIGNED);
    END IF;

    IF (_vch_wpremio13 = '') THEN
        SET _int_premio13 = 0;
    ELSE
        SET _int_premio13 = CAST(_vch_wpremio13 AS SIGNED);
    END IF;

    IF (_vch_wpremio14 = '') THEN
        SET _int_premio14 = 0;
    ELSE
        SET _int_premio14 = CAST(_vch_wpremio14 AS SIGNED);
    END IF;

    IF (_vch_wpremio6 = '') THEN
        SET _int_premio6 = 0;
    ELSE
        SET _int_premio6 = CAST(_vch_wpremio6 AS SIGNED);
    END IF;

    IF (_vch_wpremio15 = '') THEN
        SET _int_premio15 = 0;
    ELSE
        SET _int_premio15 = CAST(_vch_wpremio15 AS SIGNED);
    END IF;

    IF (_vch_wpremio16 = '') THEN
        SET _int_premio16 = 0;
    ELSE
        SET _int_premio16 = CAST(_vch_wpremio16 AS SIGNED);
    END IF;

    IF (_vch_wpremio17 = '') THEN
        SET _int_premio17 = 0;
    ELSE
        SET _int_premio17 = CAST(_vch_wpremio17 AS SIGNED);
    END IF;

    IF (_vch_wpremio18 = '') THEN
        SET _int_premio18 = 0;
    ELSE
        SET _int_premio18 = CAST(_vch_wpremio18 AS SIGNED);
    END IF;

    IF (_vch_wpremio19 = '') THEN
        SET _int_premio19 = 0;
    ELSE
        SET _int_premio19 = CAST(_vch_wpremio19 AS SIGNED);
    END IF;

    IF (_vch_wpremio20 = '') THEN
        SET _int_premio20 = 0;
    ELSE
        SET _int_premio20 = CAST(_vch_wpremio20 AS SIGNED);
    END IF;

    IF (_vch_wpremio21 = '') THEN
        SET _int_premio21 = 0;
    ELSE
        SET _int_premio21 = CAST(_vch_wpremio21 AS SIGNED);
    END IF;

    IF (_vch_wpremio22 = '') THEN
        SET _int_premio22 = 0;
    ELSE
        SET _int_premio22 = CAST(_vch_wpremio22 AS SIGNED);
    END IF;

    IF (_vch_wpremio23 = '') THEN
        SET _int_premio23 = 0;
    ELSE
        SET _int_premio23 = CAST(_vch_wpremio23 AS SIGNED);
    END IF;

    IF (_vch_wpremio24 = '') THEN
        SET _int_premio24 = 0;
    ELSE
        SET _int_premio24 = CAST(_vch_wpremio24 AS SIGNED);
    END IF;

    IF (_vch_wporcentage = '') THEN
        SET _int_porcentage = 0;
    ELSE
        SET _int_porcentage = CAST(_vch_wporcentage AS SIGNED);
    END IF;

    IF (_vch_wcomprabolaextra = '') THEN
        SET _int_comprabolaextra = 0;
    ELSE
        SET _int_comprabolaextra = CAST(_vch_wcomprabolaextra AS SIGNED);
    END IF;

    IF (_vch_wcreditosextra = '') THEN
        SET _int_creditosextra = 0;
    ELSE
        SET _int_creditosextra = CAST(_vch_wcreditosextra AS SIGNED);
    END IF;


	SET _int_n = 3;

    SELECT   
    IFNULL(est_n_cartoesjogados, 0), 
    IFNULL(est_n_creditosextra, 0),
    IFNULL(est_n_comprabolaextra, 0), 
    IFNULL(est_n_partida, 0),
    IFNULL(est_n_creditoextratot, 0),	
    IFNULL(est_n_comprabolaextratot, 0)
    INTO
    _bint_wcartoesjogadosant, 
    _bint_wcreditosextraant, 
    _bint_wcomprabolaextraant, 
    _int_wpartida, 
    _num_wcreditosextratot, 
    _num_wcomprabolaextratot
    FROM cas_est_estatisticatot 
    WHERE est_c_ip = _vch_ip
    AND est_n_modelo = _int_modelo 
    AND CAST(est_d_data AS DATE) < CAST(CURDATE() AS DATE)
    ORDER BY est_d_data DESC LIMIT 1;

    SET _bint_wcartoesjogadosatu = _int_cartoesjogados - _bint_wcartoesjogadosant;
    IF (_bint_wcartoesjogadosatu < 0) 
    THEN
        SET _bint_wcartoesjogadosatu = _int_cartoesjogados;
    END IF;

    SET _num_wcreditosextraatu = _int_creditosextra - _bint_wcreditosextraant;

    IF (_num_wcreditosextraatu < 0)
    THEN
        SET _num_wcreditosextraatu = _int_creditosextra;
    END IF;

    SET _num_wcomprabolaextraatu = _int_comprabolaextra - _bint_wcomprabolaextraant;

    IF (_num_wcomprabolaextraatu < 0) 
    THEN
        SET _num_wcomprabolaextraatu = _int_comprabolaextra;
    END IF;
	
	IF (_int_wpartida > 0) 
	THEN
		SET _num_wcreditosextratot = _num_wcreditosextratot + _num_wcreditosextraatu;
		SET _num_wcomprabolaextratot = _num_wcomprabolaextratot + _num_wcomprabolaextraatu;
	ELSE
		SET _num_wcreditosextratot = _num_wcreditosextraatu;
		SET _num_wcomprabolaextratot = _num_wcomprabolaextraatu;
	END IF;


    SET _int_n = 4;
    IF EXISTS(  SELECT ftr_n_codmodelo
                FROM alt_ftr_fatoresmodelo
                WHERE ftr_n_codmodelo = _int_modelo )
    THEN
        SET _int_n = 5;
        SELECT IFNULL(ftr_n_partidasbolaextra, 0),  IFNULL(ftr_n_minimobolaextra, 0)
        INTO _int_wpartidasbolaextra, _num_wminimobolaextra
        FROM alt_ftr_fatoresmodelo
        WHERE ftr_n_codmodelo = _int_modelo;
    ELSE
        SET _int_wpartidasbolaextra = 0;
        SET _num_wminimobolaextra = 0;
    END IF;

    IF (_num_wcreditosextraatu > 0
    AND _num_wcomprabolaextraatu > 0) 
    THEN
        SET _int_wpartida = _int_wpartida + 1;
    END IF;

    IF (_int_wpartidasbolaextra > 1
    AND ((_int_wpartida > _int_wpartidasbolaextra) OR (_int_wpartida = _int_wpartidasbolaextra)))
    THEN
        IF (_num_wcomprabolaextratot > 0) 
        THEN
            SET _num_wmediabolaextra = _num_wcreditosextratot / _num_wcomprabolaextratot;
        ELSE
            SET _num_wmediabolaextra = 0;
        END IF;

        IF (_num_wmediabolaextra < _num_wminimobolaextra) THEN
            SET _bit_walertabolaextra = 1;
        ELSE
            SET _bit_walertabolaextra = 0;
        END IF;

        SET _int_wpartida = 0;

    ELSE
        SET _bit_walertabolaextra = 0;
    END IF;

	SET _int_n = 6;

    SELECT IFNULL(fml_n_percentualmaior, 99999), 
    IFNULL(fml_n_cartoesjogados, 9999999), 
    IFNULL(fml_n_codigo, 0)
    INTO _int_wintervalomaior, _bint_wminimocartoesjogados, _int_tmpcod
    FROM alt_fml_frequenciamodelo
    WHERE fml_n_codmodelo = _int_modelo 
    ORDER BY fml_n_percentualmaior LIMIT 1;

    IF (((_int_porcentage > _int_wintervalomaior) OR (_int_porcentage = _int_wintervalomaior))
    AND (_int_cartoesjogados > _bint_wminimocartoesjogados))
    THEN
        SET _int_n = 7;
        SELECT  fml_n_cartoesjogados
        INTO  _bint_wminimocartoesjogados2
        FROM alt_fml_frequenciamodelo
        WHERE fml_n_codmodelo = _int_modelo 
        ORDER BY fml_n_percentualmaior DESC LIMIT 1;    

        SET _int_n = 8;
        SELECT  COUNT(*)
        INTO _int_cont
        FROM alt_fml_frequenciamodelo 
        WHERE fml_n_codmodelo = _int_modelo;

        SET _int_i = 0;
	
		WHILE _int_i < _int_cont
		DO
        SET _int_n = 9;

        SELECT 
        IFNULL(fml_n_percentualmaior, 0),
        IFNULL(fml_n_percentualmenor, 0),
        IFNULL(fml_n_cartoesjogados, 0)
        INTO 
        _int_tmppercentualmaior, 
        _int_tmppercentualmenor, 
        _int_tmpcartoesjogados 
        FROM 
        alt_fml_frequenciamodelo 
        WHERE 
        fml_n_codmodelo = _int_modelo
        AND fml_n_codigo = _int_tmpcod LIMIT 1;

        SET _int_tmpcod = _int_tmpcod + 1;

        IF (((_int_porcentage > _int_tmppercentualmaior) or (_int_porcentage = _int_tmppercentualmaior)) 
        AND (_int_porcentage < _int_tmppercentualmenor))
        THEN
            SET _int_i = _int_cont + 1;
        ELSE
            SET _int_i = _int_i + 1;
        END IF;

		END WHILE;
	
    SET _int_n = 10;
    IF EXISTS(SELECT cal_n_codmodelo
    FROM alt_cal_alertas
    WHERE cal_c_ip = _vch_ip
    AND cal_n_codmodelo = _int_modelo
    AND cal_n_tipoalerta = 6)
    THEN
        SET _int_n = 11;

        SELECT IFNULL(cal_n_cartoesjogados, 0) 
        INTO  _bint_wenviocartoesjogados
        FROM alt_cal_alertas
        WHERE cal_c_ip = _vch_ip
        AND cal_n_codmodelo = _int_modelo
        AND cal_n_tipoalerta = 6
        ORDER BY cal_d_data DESC LIMIT 1;

        IF (_int_cartoesjogados > _bint_wenviocartoesjogados)
        THEN
            IF (_int_tmpcartoesjogados = _bint_wminimocartoesjogados) 
            THEN
                SET _int_tmpcartoesjogados = _bint_wminimocartoesjogados2;
            END IF;

            SET _bint_wcartoesjogadoscalc = _int_cartoesjogados - _bint_wenviocartoesjogados;
            ELSE
                IF (_int_cartoesjogados = _bint_wenviocartoesjogados)
                THEN
                    SET _bint_wcartoesjogadoscalc = 0;
                    SET _int_tmpcartoesjogados = _bint_wminimocartoesjogados;
                ELSE 
                    SET _bint_wcartoesjogadoscalc = _int_cartoesjogados;
                    SET _int_tmpcartoesjogados = _bint_wminimocartoesjogados;
                END IF;
            END IF;
        ELSE
            SET _bint_wcartoesjogadoscalc = _int_cartoesjogados;
            SET _int_tmpcartoesjogados = _bint_wminimocartoesjogados;
        END IF;

        IF (_bint_wcartoesjogadoscalc > _int_tmpcartoesjogados) 
        THEN
            SET _bit_walertafrequencia = 1;
        END IF;
    END IF;

    IF (CAST(_int_creditosextra AS SIGNED) < 0) 
    THEN
        SET _bit_walertacreditonegativo = 1;
    ELSE
        SET _bit_walertacreditonegativo = 0;
    END IF;

    SET _dtm_wfecha = CURDATE();


    SET _int_n = 12;

    INSERT INTO cas_est_estatisticatot(est_d_data, est_c_ip, est_n_modelo, est_n_numjogadas, est_n_cartoesjogados, est_n_jogadaspremiadas,
    est_n_premio1, est_n_premio2, est_n_premio3, est_n_premio4, est_n_premio5, est_n_premio6, est_n_premio7, est_n_premio8, est_n_premio9,
    est_n_premio10, est_n_premio11, est_n_premio12, est_n_premio13, est_n_premio14, est_n_premio15, est_n_premio16, est_n_premio17,
    est_n_premio18, est_n_premio19, est_n_premio20, est_n_premio21, est_n_premio22, est_n_premio23, est_n_premio24, est_n_porcentage,
    est_n_creditosextra, est_n_comprabolaextra) 
    VALUES 
    (_dtm_wfecha, _vch_ip, _int_modelo, _int_numjogadas, _int_cartoesjogados, _int_jogadaspremiadas, _int_premio1, _int_premio2,
    _int_premio3, _int_premio4, _int_premio5, _int_premio6, _int_premio7, _int_premio8, _int_premio9, _int_premio10, _int_premio11,
    _int_premio12, _int_premio13, _int_premio14, _int_premio15, _int_premio16, _int_premio17, _int_premio18, _int_premio19, _int_premio20,
    _int_premio21, _int_premio22, _int_premio23, _int_premio24, _int_porcentage, _int_creditosextra, _int_comprabolaextra);

    IF (_bit_walertabolaextra = 1)
    THEN
        SET _int_n = 13;
        INSERT INTO alt_cal_alertas(cal_n_codmodelo, cal_n_tipoalerta, cal_d_data, cal_c_ip)
        VALUES (_int_modelo, 3, _dtm_wfecha, _vch_ip);
    END IF;

    IF (_bit_walertafrequencia = 1) 
    THEN
        SET _int_n = 14;
        INSERT INTO alt_cal_alertas(cal_n_codmodelo, cal_n_tipoalerta, cal_d_data, cal_c_ip, cal_n_cartoesjogados, cal_n_frequencia) 
        VALUES (_int_modelo, 6, _dtm_wfecha, _vch_ip, _int_cartoesjogados, _int_tmppercentualmaior);
	END IF;

    IF (_bit_walertacreditonegativo = 1) 
    THEN
        SET _int_n = 15;
        INSERT INTO alt_cal_alertas(cal_n_codmodelo, cal_n_tipoalerta, cal_d_data, cal_c_ip, cal_n_cartoesjogados, cal_n_frequencia)
        VALUES (_int_modelo, 8, _dtm_wfecha, _vch_ip, _int_cartoesjogados, _int_tmppercentualmaior);
    END IF;

    SET _int_n = 16;
    UPDATE _retorno SET saldo = 0, dias = 0, pontos = 0, saldocredito = 0, erro = 0, Mensagem = '', Status = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_mexcontabilidadetickets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_mexcontabilidadetickets`()
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    CREATE TEMPORARY TABLE _contabilTicket(ipmaquina VARCHAR(50));

    SET _int_n = 2;
    INSERT INTO _contabilTicket
    SELECT DISTINCT mvi_c_ip
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 4;

    SET _int_n = 3;
    INSERT INTO cas_tkc_mexcontabilidadetickets
    (tkc_c_ipmaquina, 
    tkc_n_codmodelo, 
    tkc_n_hasta50, 
    tkc_n_hasta51, 
    tkc_n_hasta100, 
    tkc_n_hasta250, 
    tkc_n_hasta500, 
    tkc_n_hasta1000, 
    tkc_d_datafechamento)
    SELECT 
    
    ipmaquina,

    (SELECT  IFNULL(mco_n_modelo, 0)
    FROM cas_mco_mexconta
    WHERE mco_c_ip = ipmaquina LIMIT 1),

    (SELECT COUNT(*)
    FROM cas_mvi_mexmovimientos
    WHERE mvi_c_ip = ipmaquina
    AND mvi_n_tipomov = 4
    AND mvi_n_valor <= 5000),

    (SELECT COUNT(*) 
    FROM cas_mvi_mexmovimientos
    WHERE mvi_c_ip = ipmaquina
    AND mvi_n_tipomov = 4
    AND mvi_n_valor >= 5001
    AND mvi_n_valor <= 10000),

    (SELECT COUNT(*)
    FROM cas_mvi_mexmovimientos
    WHERE mvi_c_ip = ipmaquina
    AND mvi_n_tipomov = 4
    AND mvi_n_valor >= 10001
    AND mvi_n_valor <= 25000),

    (SELECT COUNT(*)
    FROM cas_mvi_mexmovimientos
    WHERE mvi_c_ip = ipmaquina
    AND mvi_n_tipomov = 4
    AND mvi_n_valor >= 25001
    AND mvi_n_valor <= 50000),

    (SELECT COUNT(*)
    FROM cas_mvi_mexmovimientos
    WHERE mvi_c_ip = ipmaquina
    AND mvi_n_tipomov = 4
    AND mvi_n_valor >= 50001
    AND mvi_n_valor <= 100000),

    (SELECT COUNT(*)
    FROM cas_mvi_mexmovimientos
    WHERE mvi_c_ip = ipmaquina
    AND mvi_n_tipomov = 4
    AND mvi_n_valor >= 100001),

    CURDATE()
    FROM _contabilTicket;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_mexmodalidade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_mexmodalidade`(
    _vch_descricao	VARCHAR(50),	_int_codigo	INT,	_int_operacao	INT
)
BEGIN
    DECLARE _int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;


	IF (_int_operacao = 0)
	THEN
		SET _int_n = 1;
		IF EXISTS(SELECT mod_n_codigo 
					FROM cas_mod_modalidades 
					WHERE UPPER(mod_c_descricao) = UPPER(_vch_descricao))
		THEN
        CALL RaiseCustomError(254, null);
			
		END IF;
	END IF; 

    
	IF (_int_operacao = 1)
	THEN
		SET _int_n = 4;
		INSERT INTO cas_mod_modalidades(mod_c_descricao)
			VALUES (_vch_descricao);
	END IF;
  
IF (_int_operacao = 2)
	THEN
		SET _int_n = 5;
		IF EXISTS(SELECT mod_n_codigo 
					FROM cas_mod_modalidades 
					WHERE UPPER(mod_c_descricao) = UPPER(_vch_descricao) 
						AND mod_n_codigo <> _int_codigo)
		THEN
        CALL RaiseCustomError(254, null);
		END IF; 
	ELSE
			SET _int_n = 7;
			UPDATE cas_mod_modalidades 
				SET mod_c_descricao = _vch_descricao
				WHERE mod_n_codigo = _int_codigo;
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_mexmodelos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_mexmodelos`(
    _int_comodelo		INT,	_vch_descricao	VARCHAR(50),	_int_operacao	INT,
	_int_codmodalidade	INT,	_int_codfabricante	INT
)
BEGIN
    DECLARE _int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

    
IF (_int_operacao = 1)	
	THEN
		SET _int_n = 1;
		IF EXISTS(SELECT mdl_n_codigo 
					FROM cas_mdl_mexmodelos 
					WHERE mdl_n_codigo = _int_comodelo)
		THEN
            CALL RaiseCustomError(232, null);
		ELSE
			SET _int_n = 3;
			IF EXISTS(SELECT mdl_n_codigo 
						FROM cas_mdl_mexmodelos 
						WHERE UPPER(mdl_c_descricao) = UPPER(_vch_descricao))
			THEN
            CALL RaiseCustomError(232, null);
			END IF;
		END IF;
	END IF; 

IF (_int_operacao = 2) 
	THEN
		SET _int_n = 5;
		IF EXISTS(SELECT mdl_n_codigo 
					FROM cas_mdl_mexmodelos 
					WHERE mdl_n_codigo = _int_comodelo)
		THEN
            CALL RaiseCustomError(232, null);
		ELSE
			SET _int_n = 7;
			INSERT INTO cas_mdl_mexmodelos(mdl_n_codigo, mdl_c_descricao, mdl_d_datainclusao, mdl_n_codmodalidade, mdl_n_codfabricante)
				VALUES(_int_comodelo, _vch_descricao, CURDATE(), _int_codmodalidade, _int_codfabricante);
		END IF;
	END IF;

    IF (_int_operacao = 3) 
	THEN
		SET _int_n = 8;
		UPDATE cas_mdl_mexmodelos SET mdl_c_descricao = _vch_descricao, mdl_n_codmodalidade = _int_codmodalidade, mdl_n_codfabricante = _int_codfabricante
			WHERE mdl_n_codigo = _int_comodelo;
	END IF;

IF (_int_operacao = 4)
	THEN
		SET _int_n = 9;
		IF EXISTS(SELECT mco_n_modelo 
					FROM cas_mco_mexconta 
					WHERE mco_n_modelo = _int_comodelo)
		THEN
            CALL RaiseCustomError(233, null);
		ELSE
			SET _int_n = 11;
			DELETE FROM cas_mdl_mexmodelos 
				WHERE mdl_n_codigo = _int_comodelo;
		END IF;
	END IF; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_mexmovimentocaixa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_mexmovimentocaixa`(
    _vch_code		VARCHAR(8),	
    _int_tipomov			INT,	
    _int_entrada	INT,	
    _vch_maquina	VARCHAR(16),
    _bit_cartao		TINYINT(1),		
    _bit_confirmaabertura	TINYINT(1)
)
BEGIN
    DECLARE _int_n INT;
    DECLARE	_vch_retorno VARCHAR(100);
    DECLARE _bint_saldocaixa	BIGINT;
    DECLARE _int_wdiascontabil, _int_wStatus	INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
    RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_int_tipomov = 10)
    THEN
        SET _int_n = 1;
        IF EXISTS(SELECT * 
        FROM cas_mvi_mexmovimientos 
        WHERE mvi_n_tipomov = 10 
        AND mvi_c_maquina = _vch_maquina
        AND _bit_confirmaabertura = 0   LIMIT 1)
        THEN
            CALL RaiseCustomError(77, null);
        END IF;

        IF NOT EXISTS(SELECT *
        FROM cas_mvi_mexmovimientos 
        WHERE mvi_n_tipomov = 10
        AND mvi_c_maquina = _vch_maquina)
        THEN
            SET _int_n = 2;
            DELETE FROM cas_mvi_mexmovimientos 
            WHERE mvi_c_maquina = _vch_maquina;
        END IF;

        SET _int_n = 3;
        SELECT IFNULL(prt_n_diascontabil, 0)
        INTO _int_wdiascontabil
        FROM cas_prt_mexparametros
        WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
        FROM cas_prt_mexparametros
        WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));

        SET _int_n = 4;
        CALL p_cas_d_dadoscontabeis(_int_wdiascontabil, _int_wStatus);

        IF (_int_wStatus <> 0)
        THEN
            CALL RaiseCustomError(61, null);
        END IF;
    END IF;

    IF (_int_tipomov = 10 OR _int_tipomov = 11) 
    THEN
        SET _int_n = 6;
        INSERT INTO cas_mvi_mexmovimientos(mvi_c_code, mvi_n_tipomov, mvi_n_valor, mvi_d_fecha, mvi_c_maquina)
        VALUES(_vch_code, _int_tipomov, _int_entrada, CURDATE(), _vch_maquina);
    END IF;

    IF (_int_tipomov = 12) 
    THEN
        SET _int_n = 7;
        CREATE TEMPORARY TABLE _exectemp01(
        CAMPO1	BIGINT,		CAMPO2  BIGINT,	CAMPO3  BIGINT,		CAMPO4  BIGINT, 
        CAMPO5	BIGINT,		CAMPO6  BIGINT,	CAMPO7  BIGINT,		CAMPO8  BIGINT, 
        CAMPO9	BIGINT,		CAMPO10 BIGINT,	CAMPO11 BIGINT,		CAMPO12 BIGINT, 
        CAMPO13	BIGINT,		CAMPO14 BIGINT,	CAMPO15 BIGINT,		SALDONET BIGINT, 
        CAMPO17	BIGINT, 	   CAMPO18 BIGINT,	CAMPO19 BIGINT,		CAMPO20 BIGINT, 
        CAMPO21	BIGINT,		CAMPO22 BIGINT,	CAMPO23 BIGINT,		CAMPO24 BIGINT, 
        CAMPO25	BIGINT,		CAMPO26 BIGINT,	CAMPO27 BIGINT,		CAMPO28 BIGINT,
        CAMPO29	BIGINT,		CAMPO30 BIGINT,	CAMPO31 BIGINT,		CAMPO32 VARCHAR(50), 
        CAMPO33	BIGINT,		CAMPO34 BIGINT, CAMPO35 VARCHAR(50),CAMPO36 BIGINT,	
        CAMPO37	BIGINT,		CAMPO38 BIGINT,	CAMPO39 BIGINT,		CAMPO40 BIGINT,
        CAMPO41	BIGINT,		CAMPO42 BIGINT,	CAMPO43 BIT, 		CAMPO44 BIT,			
        CAMPO45	VARCHAR(50),CAMPO46 INT,	CAMPO47 VARCHAR(50),CAMPO48 VARCHAR(50),
        CAMPO49 INT);

        SET _int_n = 8;
        INSERT _exectemp01 
        SELECT p_cas_i_wmexcierrediaticket(0,_vch_maquina, 0, 0, '');

        SET _int_n = 9;
        SELECT IFNULL(SALDONET, 0)
        INTO _bint_saldocaixa
        FROM _exectemp01;

        IF (_bint_saldocaixa < _int_entrada)
        THEN
            CALL RaiseCustomError(223, null);
            ELSE

            SET _int_n = 11;
            INSERT INTO cas_mvi_mexmovimientos(mvi_c_code, mvi_n_tipomov, mvi_n_valor, mvi_d_fecha, mvi_c_maquina)
            VALUES(_vch_code, _int_tipomov, _int_entrada, CURDATE(), _vch_maquina);
        END IF;
    END IF;

    SET _int_n = 12;
    SELECT _vch_code AS mvi_c_code, _int_tipomov AS mvi_n_tipomov, _int_entrada AS mvi_n_valor, 
    CAST(CURDATE() AS CHAR(10))AS mvi_d_fecha, _vch_maquina AS mvi_c_maquina;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_pos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_pos`(
    _vch_identificacao	 VARCHAR(16),
	_bit_verificacao	    TINYINT(1)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_bit_verificacao = 1)
    THEN
        SET _int_n = 1;
        IF EXISTS(SELECT pos_c_identificacao 
        FROM cas_pos_pos 
        WHERE pos_c_identificacao = _vch_identificacao 
        AND pos_b_status = 1)
        THEN
            CALL RaiseCustomError(139, null);
        END IF;
    ELSE
        SET _int_n = 4;

        IF EXISTS(SELECT pos_c_identificacao 
        FROM cas_pos_pos 
        WHERE pos_c_identificacao = _vch_identificacao 
        AND pos_b_status = 1)
        THEN
            CALL RaiseCustomError(139, null);
        ELSE
            SET _int_n = 7;
            INSERT INTO cas_pos_pos(pos_c_identificacao, pos_d_datainclusao, pos_b_status)
            VALUES(_vch_identificacao, CURDATE(), 1);
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_posfabricante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_posfabricante`(
    _int_codigo	INT,	_vch_descricao	VARCHAR(50),	_int_operacao	INT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
    RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_int_operacao = 1)
    THEN
        SET _int_n = 1;
        IF EXISTS(SELECT * 
        FROM cas_pfb_posfabricantes
        WHERE pfb_n_codigo = _int_codigo
        AND pfb_b_status = 1 LIMIT 1)
        THEN
            CALL RaiseCustomError(224, null);
        END IF;

        SET _int_n = 4;
        IF EXISTS(SELECT pfb_c_descricao
        FROM cas_pfb_posfabricantes
        WHERE Upper(pfb_c_descricao) = Upper(_vch_descricao)
        AND pfb_b_status = 1)
        THEN
            CALL RaiseCustomError(224, null);
        END IF;

        SET _int_n = 7;
        INSERT INTO cas_pfb_posfabricantes(pfb_n_codigo, pfb_c_descricao, pfb_b_status, pfb_d_datainclusao)
        VALUES(_int_codigo, _vch_descricao, 1, CURDATE());
    END IF;

    IF (_int_operacao = 2)
    THEN
        IF (_int_codigo = 1)
        THEN
            CALL RaiseCustomError(257, null);
        END IF;

        SET _int_n = 10;
        IF EXISTS(SELECT pfb_c_descricao 
        FROM cas_pfb_posfabricantes 
        WHERE Upper(pfb_c_descricao) = Upper(_vch_descricao)
        AND pfb_b_status = 1
        AND pfb_n_codigo <> _int_codigo)
        THEN
            CALL RaiseCustomError(224, null);
        END IF;

        SET _int_n = 13;
        UPDATE cas_pfb_posfabricantes SET pfb_c_descricao = _vch_descricao
        WHERE pfb_n_codigo = _int_codigo;
    END IF;

    IF (_int_operacao = 3)
    THEN
        SET _int_n = 14;
        IF EXISTS(SELECT pfb_n_codigo 
        FROM cas_pfb_posfabricantes 
        WHERE pfb_n_codigo = _int_codigo 
        AND pfb_b_status = 1)
        THEN
            CALL RaiseCustomError(224, null);  
        END IF;
        
        SET _int_n = 17;
        IF EXISTS(SELECT pfb_c_descricao 
        FROM cas_pfb_posfabricantes 
        WHERE Upper(pfb_c_descricao) = Upper(_vch_descricao)
        AND pfb_b_status = 1)
        THEN
            CALL RaiseCustomError(224, null);  
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_reativarticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_reativarticket`(
    _vch_numticket	VARCHAR(8)    
)
BEGIN
    DECLARE _int_n INT;
    DECLARE _int_wbloqueado	INT;
    DECLARE _int_wSaldo     INT;
    DECLARE _bit_Horas      TINYINT(1);
    DECLARE _int_prtdiahora INT;
    DECLARE _dtexpiracao    DATETIME;
    DECLARE _bint_Secao     BIGINT;
    DECLARE _bit_StatusSec	TINYINT(1);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;

    IF EXISTS(SELECT tck_c_code 
    FROM cas_tck_mextickets 
    WHERE tck_c_code = _vch_numticket)
    THEN
        SET _int_n = 2;
        SELECT prt_b_horas, prt_n_dias
        INTO _bit_Horas, _int_prtdiahora 
        FROM cas_prt_mexparametros 
        WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia) FROM cas_prt_mexparametros);

        SET _int_n = 3;
        SELECT tck_n_blocked
        INTO _int_wbloqueado 
        FROM cas_tck_mextickets 
        WHERE tck_c_code = _vch_numticket;

        IF NOT EXISTS (SELECT his_c_numticket from cas_his_historicooperacao where his_n_codigooperacao = 106 and his_c_numticket = _vch_numticket)
        THEN
            CALL RaiseCustomError(92, null);
        END IF;

        IF (_int_wbloqueado = 1)
        THEN
            CALL RaiseCustomError(80, null);
        END IF;

        IF(_bit_Horas = 1) 
        THEN
            SELECT  DATE_ADD(tck_d_fecha, INTERVAL _int_prtdiahora HOUR) 
            INTO _dtexpiracao 
            FROM cas_tck_mextickets where tck_c_code = _vch_numticket;
            
            IF (CURDATE() > _dtexpiracao)
            THEN
                CALL RaiseCustomError(229, null);
            END IF;
        ELSE 
            SELECT DATE_ADD(tck_d_fecha, INTERVAL _int_prtdiahora DAY) 
            INTO _dtexpiracao 
            FROM cas_tck_mextickets where tck_c_code = _vch_numticket;
            
            IF (CAST(CURDATE() as DATE) > CAST(_dtexpiracao as DATE))
            THEN
                CALL RaiseCustomError(229, null);
            END IF;
        END IF;

        SET _int_n = 9;

        SELECT his_n_valor, his_c_idtransacao 
        INTO _int_wSaldo , _bint_Secao 
        FROM cas_his_historicooperacao 
        WHERE his_c_numticket = _vch_numticket  AND his_n_codigooperacao = 106;	

        SELECT sec_b_status 
        INTO _bit_StatusSec 
        FROM cas_sec_secao
        WHERE sec_n_id = _bint_Secao;

        IF (_bit_StatusSec = 0)
        THEN
            CALL RaiseCustomError(91, null);
        END IF;

        SET _int_n = 10;

        DELETE FROM cas_mvi_mexmovimientos WHERE mvi_c_code = _vch_numticket AND mvi_n_tipomov = 35;  
        DELETE FROM cas_mvh_movimentoshist WHERE mvh_c_code = _vch_numticket AND mvh_n_tipomov = 35;
        DELETE FROM cas_mvi_mexmovimientos WHERE mvi_c_code = _vch_numticket AND mvi_n_tipomov = 36; 
        DELETE FROM cas_mvh_movimentoshist WHERE mvh_c_code = _vch_numticket AND mvh_n_tipomov = 36;
        DELETE FROM cas_his_historicooperacao WHERE his_c_numticket = _vch_numticket  AND his_n_codigooperacao = 10;
        DELETE FROM cas_tpr_mexticketspremios WHERE tpr_c_code = _vch_numticket;

        SET _int_n = 11;
        UPDATE cas_tck_mextickets 
        SET tck_n_saldo = _int_wSaldo, tck_n_salida = 0, tck_n_activa = 1, tck_n_saldocierre = NULL, tck_d_fechacierre = NULL , tck_n_saldoant = 0
        WHERE tck_c_code = _vch_numticket;

    ELSE
        CALL RaiseCustomError(142, null);   
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_rodape` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_rodape`(
       _vch_linha1	VARCHAR(50),	_vch_linha2	VARCHAR(50),	_vch_linha3	VARCHAR(50),	_vch_linha4	VARCHAR(50),	
		_vch_linha5	VARCHAR(50),	_vch_linha6	VARCHAR(50),	_vch_linha7	VARCHAR(50)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    UPDATE cas_msw_mensagem 
    SET msw_c_relinfo1 = _vch_linha1, 
    msw_c_relinfo2 = _vch_linha2, 
    msw_c_relinfo3 = _vch_linha3,
    msw_c_relinfo4 = _vch_linha4, 
    msw_c_relinfo5 = _vch_linha5, 
    msw_c_relinfo6 = _vch_linha6, 
    msw_c_relinfo7 = _vch_linha7;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_wadicionarpercentualpromo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_wadicionarpercentualpromo`(
    -- _num_percentualbonif        DECIMAL(18,2),	
    _bit_imprimircomprovante    TINYINT(1),	
    _bit_naoimprimir            TINYINT(1),		
    _int_idcasa                 SMALLINT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    IF EXISTS (SELECT * FROM cas_pcb_perbonus)
    THEN
        SET _int_n = 2;
        UPDATE cas_pcb_perbonus 
        SET 
        -- pcb_n_percentual		= _num_percentualbonif, 
--         pcb_b_imprimircupomb = _bit_imprimircomprovante,
        pcb_b_naoimprimir	= _bit_naoimprimir,	
        pcb_n_idcasa			= _int_idcasa;
    ELSE
        SET _int_n = 3;
        INSERT INTO cas_pcb_perbonus(
       --  pcb_n_percentual,		
       --  pcb_b_imprimircupomb,		
        pcb_b_naoimprimir,	
        pcb_n_idcasa)
        VALUES(
       --  _num_percentualbonif,	
       --  _bit_imprimircomprovante,	
        _bit_naoimprimir,	
        _int_idcasa);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_wfechamentoconsolidado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_wfechamentoconsolidado`(
    _int_primeirocodigo     INT, 
    _int_ultimocodigo       INT, 
    _int_codigousuario      INT, 
    OUT  _vch_mensagem      VARCHAR(100)
)
BEGIN
    DECLARE _int_n INT;
    DECLARE _int_wcodigoconsolidado INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

    SET _int_n = 1;
    IF EXISTS
    (SELECT 1 FROM cas_mci_mexcierres 
     WHERE mci_n_codigo >= _int_primeirocodigo AND mci_n_codigo <= _int_ultimocodigo)
    THEN
        SET _int_n = 2;
        INSERT INTO 
        cas_fco_fechamentoconsolidado
        (fco_d_data,
        fco_n_clicodigo)
        VALUES
        (
        current_timestamp,
        _int_codigousuario
        );

        SET _int_n = 3;
        SELECT MAX(fco_n_codigo) 
        INTO _int_wcodigoconsolidado 
        FROM cas_fco_fechamentoconsolidado;

        SET _int_n = 4;
        UPDATE cas_mci_mexcierres 
        SET mci_n_codigoconsolidado = _int_wcodigoconsolidado 
        WHERE mci_n_codigo >= _int_primeirocodigo AND
        mci_n_codigo <= _int_ultimocodigo;

        SET _int_n = 5;
        UPDATE cas_cbi_contabilhetes SET cbi_n_atual = 0 WHERE cbi_n_atual = 1;

        SET _int_n = 6;
        UPDATE cas_cpg_contapagomanual SET cpg_n_atual = 0 WHERE cpg_n_atual = 1;

        SET _int_n = 7;
        UPDATE cas_mco_mexconta SET mco_n_atual = 0 WHERE mco_n_atual = 1;
    ELSE
      CALL RaiseCustomError(14, null);
    END IF;

    SET _vch_mensagem = Cast(_int_wcodigoconsolidado AS CHAR(100));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_wmexaddexpiracaoticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_wmexaddexpiracaoticket`(
   _bint_valor						BIGINT,         _int_dias                       INT,            _vch_vigencia               VARCHAR(10),
	_int_codticket					INT,            _bit_imprimecomprovante         TINYINT(1),     _bit_enviaemail             TINYINT(1),
	_bit_opernuminteiro			TINYINT(1),     _bit_fecharticketpromo          TINYINT(1),     _bit_emailcontfechamento    TINYINT(1),
	_bit_contabilparcial			TINYINT(1),     _int_diasexcontabil             INT,
	_bit_enviapdfcontabil			TINYINT(1),     _bit_emailpagmanualfechamento   TINYINT(1),		_bit_enviapdfpagmanual      TINYINT(1),
	_bit_valoresnegativos			TINYINT(1),     _bit_enviaxmlcontabil           TINYINT(1),		_bit_enviaxmlpagmanual      TINYINT(1),
	_bit_calcularvendas			TINYINT(1),     _bit_enviarcontmod              TINYINT(1),		_bit_enviarcontfab          TINYINT(1),
	_bit_fechamentoconsolidado	TINYINT(1),     _int_limitejogadores            INT,             _bit_Hora                   TINYINT(1),
	_bit_encerraautomatico      TINYINT(1),     _vhc_horaabertura               DATETIME,        _vhc_horafechamento         DATETIME
)
BEGIN
    DECLARE _int_n INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_int_codticket = 0)
    THEN
        SET _int_n = 1;
        INSERT INTO cas_prt_mexparametros(prt_n_valor, prt_n_dias, prt_d_datavigencia, prt_b_impcompaddcred,
        prt_b_enviaremailcierredia, prt_b_operarnumerosinteiros, prt_b_emailcontfechamento, prt_b_contabilparcial,  prt_n_diascontabil,
        prt_b_enviapdfcontabil, prt_b_enviaxmlcontabil, prt_b_enviarpdfpagmanual, prt_b_enviarxmlpagmanual, prt_b_enviarpagmanualfechamento,
        prt_b_permitirsaldonegativo, prt_b_calcularvendas, prt_b_fecharticketpromocao, prt_b_enviarcontmod, prt_b_enviarcontfab, prt_n_status, prt_b_fechamentoconsolidado,
        prt_n_numeromaximojogadores, prt_b_horas,prt_t_horaabertura,prt_t_horafechamento,prt_b_encerraautomatico)
        VALUES(_bint_valor, _int_dias, _vch_vigencia, _bit_imprimecomprovante,
        _bit_enviaemail, _bit_opernuminteiro, _bit_emailcontfechamento, _bit_contabilparcial,  _int_diasexcontabil,
        _bit_enviapdfcontabil, _bit_enviaxmlcontabil, _bit_enviapdfpagmanual, _bit_enviaxmlpagmanual, _bit_emailpagmanualfechamento,
        _bit_valoresnegativos, _bit_calcularvendas, _bit_fecharticketpromo, _bit_enviarcontmod, _bit_enviarcontfab, 1, _bit_fechamentoconsolidado,
        _int_limitejogadores, _bit_Hora,_vhc_horaabertura,_vhc_horafechamento,_bit_encerraautomatico);
	ELSE
        SET _int_n = 2;
        IF EXISTS(SELECT prt_d_datavigencia FROM cas_prt_mexparametros 
        WHERE prt_d_datavigencia = CAST(CURDATE() as DATETIME)
        AND prt_n_status = 1)
        THEN			
            SET _int_n = 3;
            UPDATE cas_prt_mexparametros SET prt_n_valor = _bint_valor, prt_n_dias = _int_dias, prt_b_impcompaddcred = _bit_imprimecomprovante,
            prt_b_enviaremailcierredia = _bit_enviaemail, prt_b_operarnumerosinteiros = _bit_opernuminteiro, 
            prt_b_emailcontfechamento = _bit_emailcontfechamento, prt_b_contabilparcial = _bit_contabilparcial, prt_b_cupomb = _bit_cupomB,
            prt_n_diascontabil = _int_diasexcontabil, prt_b_enviapdfcontabil = _bit_enviapdfcontabil, prt_b_enviaxmlcontabil = _bit_enviaxmlcontabil,
            prt_b_enviarpdfpagmanual = _bit_enviapdfpagmanual, prt_b_enviarxmlpagmanual = _bit_enviaxmlpagmanual, 
            prt_b_enviarpagmanualfechamento = _bit_emailpagmanualfechamento, prt_b_permitirsaldonegativo = _bit_valoresnegativos,
            prt_b_calcularvendas = _bit_calcularvendas, prt_b_fecharticketpromocao = _bit_fecharticketpromo, prt_b_enviarcontmod = _bit_enviarcontmod,
            prt_b_enviarcontfab = _bit_enviarcontfab, prt_b_fechamentoconsolidado = _bit_fechamentoconsolidado,  prt_n_numeromaximojogadores = _int_limitejogadores,
            prt_b_horas = _bit_Hora, prt_t_horaabertura = _vhc_horaabertura, prt_t_horafechamento = _vhc_horafechamento, prt_b_encerraautomatico = _bit_encerraautomatico
            WHERE	prt_n_codigo = _int_codticket;
        ELSE
            SET _int_n = 4;
            UPDATE cas_prt_mexparametros SET prt_n_status = 0
            WHERE prt_n_codigo = _int_codticket;

            SET _int_n = 5;
            INSERT INTO cas_prt_mexparametros(prt_n_valor, prt_n_dias, prt_d_datavigencia, prt_b_impcompaddcred,
            prt_b_enviaremailcierredia, prt_b_operarnumerosinteiros, prt_b_emailcontfechamento, prt_b_contabilparcial,  prt_n_diascontabil,
            prt_b_enviapdfcontabil, prt_b_enviaxmlcontabil, prt_b_enviarpdfpagmanual, prt_b_enviarxmlpagmanual, prt_b_enviarpagmanualfechamento,
            prt_b_permitirsaldonegativo, prt_b_calcularvendas, prt_b_fecharticketpromocao, prt_b_enviarcontmod, prt_b_enviarcontfab, prt_n_status, prt_b_fechamentoconsolidado,
            prt_n_numeromaximojogadores, prt_b_horas,prt_t_horaabertura,prt_t_horafechamento,prt_b_encerraautomatico)
            VALUES(_bint_valor, _int_dias, _vch_vigencia, _bit_imprimecomprovante, 
            _bit_enviaemail, _bit_opernuminteiro, _bit_emailcontfechamento, _bit_contabilparcial, _int_diasexcontabil,
            _bit_enviapdfcontabil, _bit_enviaxmlcontabil, _bit_enviapdfpagmanual, _bit_enviaxmlpagmanual, _bit_emailpagmanualfechamento,
            _bit_valoresnegativos, _bit_calcularvendas, _bit_fecharticketpromo, _bit_enviarcontmod, _bit_enviarcontfab, 1, _bit_fechamentoconsolidado,
            _int_limitejogadores, _bit_Hora,_vhc_horaabertura,_vhc_horafechamento,_bit_encerraautomatico);
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_wmexatualizaimposto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_wmexatualizaimposto`(
    _int_tipo               INT,	
    _vch_nome               VARCHAR(50),	
    _dec_valor              DECIMAL(18,2),	
    _vch_vigencia           VARCHAR(10),
    _int_codigo             INT,	
    _int_status             INT,		
    _bit_operacaoinclusao	TINYINT(1)
)
BEGIN
    DECLARE _int_n, _int_impostotot INT;

    IF (_bit_operacaoinclusao = 1)	
    THEN
        SET _int_n = 7;
        SELECT IFNULL(Sum(imp_n_valor), 0)
        INTO _int_impostotot 
        FROM cas_imp_meximpostos
        WHERE imp_n_status = 1
        AND imp_n_tipo = _int_tipo;

        IF(_int_impostotot + _dec_valor) > 10000
        THEN
            CALL RaiseCustomError(261, null);
        END IF;

        SET _int_n = 1;
        INSERT INTO cas_imp_meximpostos(imp_n_tipo, imp_c_nome, imp_n_valor, imp_n_status,
        imp_d_datavigencia) VALUES (_int_tipo, _vch_nome, _dec_valor, _int_status,
        _vch_vigencia);
    ELSE
        SET _int_n = 9;
        SELECT IFNULL(Sum(imp_n_valor), 0)
        INTO _int_impostotot 
        FROM cas_imp_meximpostos
        WHERE imp_n_status = 1
        and imp_n_tipo = _int_tipo
        and imp_n_codigo <> _int_codigo;

        IF ((_int_impostotot + _dec_valor) > 10000)
        THEN
            CALL RaiseCustomError(261, null);
        END IF;

        SET _int_n = 2;
        IF (_vch_vigencia = CAST(CURDATE() as date))
        THEN
            SET _int_n = 3;
            UPDATE cas_imp_meximpostos 
            SET imp_n_valor = _dec_valor, imp_n_status = _int_status
            WHERE imp_n_codigo = _int_codigo;
        ELSE	
            SET _int_n = 5;
            UPDATE cas_imp_meximpostos SET imp_n_status = 0 
            WHERE imp_n_tipo = _int_tipo
            AND imp_d_datavigencia = _vch_vigencia;

            SET _int_n = 6;
            INSERT INTO cas_imp_meximpostos
            (imp_n_tipo, imp_c_nome, imp_n_valor, imp_n_status,imp_d_datavigencia) 
            VALUES (_int_tipo, _vch_nome, _dec_valor, _int_status,_vch_vigencia);
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_wmexcierrediaticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_wmexcierrediaticket`(
    _int_save	INT,	
    _vch_maquina	VARCHAR(16),	
    _int_iduser		INT,	
    _bit_calculacierre	TINYINT(1)
)
BEGIN
    DECLARE _int_n                       INT;
    DECLARE _num_Interes				   	DECIMAL;	
    DECLARE _num_wInteresFederal			DECIMAL(18,2);	
    DECLARE _num_wInteresEstatal			DECIMAL(18, 2);
    DECLARE _bint_InteresINT				   BIGINT;		
    DECLARE _bint_wInteresFederalINT		BIGINT;		
    DECLARE _bint_wInteresEstatalINT		BIGINT;	
    DECLARE _int_wDiasValidez				INT;
    DECLARE _int_param						   INT;	
    DECLARE _bint_EntradasTicketCaixa		BIGINT; 
    DECLARE _bint_EntradasTicket			BIGINT; 
    DECLARE _bint_EntradasDinheiro			BIGINT;
    DECLARE _bint_TotalEntradas				BIGINT; 
    DECLARE _bint_SalidasPgtoManual		BIGINT;
    DECLARE _bint_TotalSalidas				BIGINT; 
    DECLARE _bint_vSalidasAnt				BIGINT; 
    DECLARE _bint_vCortesiaDinero			BIGINT;
    DECLARE _bint_vCortesiaBebida			BIGINT; 
    DECLARE _bint_vCortesiaAverias			BIGINT; 
    DECLARE _bint_vEntradasMaquina			BIGINT;
    DECLARE _bint_TotalSaldo			   	BIGINT;
    DECLARE _bint_vRetenido60Dias			BIGINT; 
    DECLARE _bint_vPremiosPagos		   	BIGINT;
    DECLARE _bint_vRetenidoBorrados		BIGINT;     
    DECLARE _bint_EntradasCaixa				BIGINT; 
    DECLARE _bint_ReforcoCaixa				BIGINT;
    DECLARE _bint_RetiradaCaixa				BIGINT; 
    DECLARE _bint_EntradaPos			   	BIGINT; 
    DECLARE _bint_SaidaPos					BIGINT;
    DECLARE _bint_SaidaPosAnt				BIGINT;	    
    DECLARE _bint_promocoes					BIGINT;    
    DECLARE _bint_saidaspromocoes			BIGINT;
    DECLARE _bint_diferencapromocoes		BIGINT;	   
    DECLARE _bint_diferencaaux				BIGINT; 
    DECLARE _bint_wefectivo			   	BIGINT;
    DECLARE _bint_wcupomb				   	BIGINT; 
    DECLARE _bin_wretirosefectivo			BIGINT; 
    DECLARE _bint_wretiroscupomb			BIGINT;
    DECLARE _bint_saldopromodia				BIGINT;		
    DECLARE _bint_retidodevolucaoant		BIGINT;		
    DECLARE _bint_saldosaidapromo			BIGINT;
    DECLARE _num_wpercentualbonif			DECIMAL(5,2);
    DECLARE _num_wbonif						DECIMAL(18,4);	
    DECLARE _int_wdiascontabil				INT;
    DECLARE _bit_wexibecupomb				TINYINT(1);		
    DECLARE _bint_wcancelamento				BIGINT;		
    DECLARE _bit_wcalcularvendas			TINYINT(1);
    DECLARE _bit_wfecharticketpromocao	TINYINT(1);		
    DECLARE _bint_wpromocupomb				BIGINT;		
    DECLARE _vch_tmpcod						VARCHAR(8);
    DECLARE _int_wstatus					   INT;	
    DECLARE _bit_wexibirfabricantes	   TINYINT(1);		
    DECLARE _int_tmpcodpgtmanual			INT;
    DECLARE _bint_tmpsalida					BIGINT;		
    DECLARE _bint_tmpentrada			  	   BIGINT;		
    DECLARE _bint_tmpvalordinmaquina		BIGINT;
    DECLARE _int_tmpcortesia			   	INT;	
    DECLARE _int_tmppromocao			  	   INT;	
    DECLARE _dtm_wdtAbertura			   	DATETIME;
    DECLARE _int_cont					   	INT;	
    DECLARE _int_i						   	INT; 	
    DECLARE _int_widCasa				   	INT;
    DECLARE _bit_wfechamentoconsolidado 	TINYINT(1);
    DECLARE _bit_Horas                  	TINYINT(1);
    DECLARE _bint_DeducaoEntrada	    	BIGINT;
    DECLARE _int_numerocontrole				INT;


        DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN 
            RESIGNAL SET MYSQL_ERRNO = _int_n;
        END;

    SET _bint_EntradasTicketCaixa       = 0; 
    SET _bint_EntradasTicket            = 0; 
    SET _bint_EntradasDinheiro          = 0;
    SET _bint_TotalEntradas             = 0; 
    SET _bint_SalidasPgtoManual         = 0;
    SET _bint_TotalSalidas              = 0; 
    SET _bint_vSalidasAnt               = 0; 
    SET _bint_vCortesiaDinero           = 0;
    SET _bint_vCortesiaBebida           = 0; 
    SET _bint_vCortesiaAverias          = 0; 
    SET _bint_vEntradasMaquina          = 0;
    SET _bint_TotalSaldo                = 0;
    SET _bint_vRetenido60Dias           = 0; 
    SET _bint_vPremiosPagos             = 0;
    SET _bint_vRetenidoBorrados         = 0;     
    SET _bint_EntradasCaixa             = 0; 
    SET _bint_ReforcoCaixa              = 0;
    SET _bint_RetiradaCaixa             = 0; 
    SET _bint_EntradaPos                = 0; 
    SET _bint_SaidaPos                  = 0;
    SET _bint_SaidaPosAnt               = 0;	    
    SET _bint_promocoes                 = 0;    
    SET _bint_saidaspromocoes           = 0;
    SET _bint_diferencapromocoes        = 0;	   
    SET _bint_diferencaaux              = 0; 
    SET _bint_wefectivo                 = 0;
   --  SET _bint_wcupomb                = 0; 
    SET _bin_wretirosefectivo           = 0; 
   -- SET _bint_wretiroscupomb          = 0;

    SET _int_n = 1;

    SELECT  IFNULL(SUM(imp_n_valor), 0) / 100, IFNULL(SUM(imp_n_valor), 0)
    INTO _num_Interes, _Bint_InteresINT 
    FROM _cas_imp_meximpostos
    WHERE imp_n_tipo = 1
    AND	imp_n_status = 1
    AND	imp_d_datavigencia <= CAST(CURDATE() AS DATE);

    SET _int_n = 2;
    SELECT IFNULL(SUM(imp_n_valor), 0), IFNULL(SUM(imp_n_valor), 0)
    INTO _num_wInteresFederal , _bint_wInteresFederalINT 
    FROM _cas_imp_meximpostos
    WHERE imp_n_tipo = 2
    AND	imp_n_status = 1
    AND	imp_d_datavigencia <= CAST(CURDATE() AS DATE);

    SET _int_n = 3;
    SELECT IFNULL(SUM(imp_n_valor), 0), IFNULL(SUM(imp_n_valor), 0)
    INTO _num_wInteresEstatal, _bint_wInteresEstatalINT 
    FROM _cas_imp_meximpostos
    WHERE imp_n_tipo = 3
    AND	imp_n_status = 1
    AND	imp_d_datavigencia <= CAST(CURDATE() AS DATE);

        
    SET _int_n = 4;
    SELECT  prt_n_dias, prt_n_diascontabil,	 
            prt_b_calcularvendas, prt_b_fecharticketpromocao, 
            prt_b_enviarcontfab, prt_b_fechamentoconsolidado, prt_b_horas
    INTO    _int_wDiasValidez, _int_wdiascontabil,  
            _bit_wcalcularvendas, _bit_wfecharticketpromocao, 
            _bit_wexibirfabricantes , _bit_wfechamentoconsolidado , _bit_Horas 
    FROM _cas_prt_mexparametros
    WHERE prt_n_status = 1;

    SET _int_n = 5;
    SELECT MIN(mvi_d_fecha), IFNULL(SUM(mvi_n_valor), 0)
    INTO _dtm_wdtAbertura , _bint_EntradasCaixa 
    FROM _cas_mvi_mexmovimientos 
    WHERE mvi_n_tipomov = 10
    AND mvi_c_maquina = _vch_maquina;


    SET _int_n = 6;
    CREATE TEMPORARY TABLE _exectemp01(TotalEntradas BIGINT, TotalSalidas	BIGINT, vRetenidoHoy BIGINT, vRetenido60Dias BIGINT, vRetenidoBorrados BIGINT,
    vCortesiaDinero BIGINT, vCortesiaBebidas BIGINT, vCortesiaAverias BIGINT, vSalidasAnt BIGINT, vPremiosPagos BIGINT, vEntradasMaquina BIGINT,
    EntradasTicket BIGINT, EntradasDinheiro BIGINT,EntradasTicketCaixa BIGINT, SalidasPgtoManual BIGINT, EntradaCaixa BIGINT, ReforcoCaixa BIGINT,
    RetiradaCaixa BIGINT, EntradaPos BIGINT, SaidaPos BIGINT, Promocoes BIGINT, SaidasPromocoes BIGINT, DiferencaPromocoes BIGINT, NumeroControle INT, 
    dtabertura DATETIME, efectivo BIGINT, retirosefectivo BIGINT, retidodevolucaoant BIGINT);


    SET _int_n = 8;
    SELECT IFNULL(SUM(mvi_n_valor), 0)
    INTO _bint_EntradasTicket 
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 7
    AND	mvi_c_maquina = _vch_maquina;

    SET _int_n = 9;
    SELECT IFNULL(SUM(mvi_n_valor), 0)
    INTO _bint_SalidasPgtoManual 
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 9
    AND	mvi_c_maquina = _vch_maquina ;

    SET _int_n = 10;
    SELECT IFNULL(SUM(mvi_n_valor), 0)
    INTO _bint_EntradasDinheiro 
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 8
    AND	mvi_c_maquina = _vch_maquina;

    SET _int_n = 11;
    SELECT IFNULL(SUM(mvi_n_valor), 0)
    INTO _bint_TotalEntradas 
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 1
    AND	mvi_c_maquina = _vch_maquina;

    IF (_bit_calculacierre = 1)
    THEN
        SET _int_n = 12;
        SELECT IFNULL(SUM(mvi_n_valor), 0)
        INTO _bint_EntradaPos 
        FROM cas_mvi_mexmovimientos
        WHERE mvi_n_tipomov = 1
        AND mvi_c_pos <> '0'
        AND mvi_c_maquina = _vch_maquina;
    ELSE
        SET _bint_EntradaPos = 0;
    END IF;


    SET _bint_EntradasTicketCaixa = _bint_TotalEntradas;

        
    SET _bint_TotalEntradas = _bint_TotalEntradas + _bint_EntradasTicket + _bint_EntradasDinheiro;

        
    SET _bint_wefectivo = (((_bint_TotalEntradas) / 10) * 8);


    SET _int_n = 16;
    SELECT IFNULL(SUM(mvi_n_valor), 0)
    INTO _bint_TotalSalidas 
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 3
    AND	mvi_c_maquina = _vch_maquina;

    IF (_bit_calculacierre = 1)
    THEN

        SET _int_n = 17;
        SELECT IFNULL(SUM(mvi_n_valor), 0)
        INTO _bint_SaidaPos 
        FROM cas_mvi_mexmovimientos
        WHERE mvi_n_tipomov = 3
        AND mvi_c_pos <> '0'
        AND mvi_c_maquina = _vch_maquina;

        SET _int_n = 18;
        SELECT IFNULL(SUM(mvi_n_valor), 0)
        INTO _bint_SaidaPosAnt 
        FROM cas_mvi_mexmovimientos
        WHERE mvi_n_tipomov = 6
        AND mvi_c_pos <> '0'
        AND mvi_c_maquina = _vch_maquina;

        SET _bint_SaidaPos = _bint_SaidaPos + _bint_SaidaPosAnt;

            
        SET _int_n = 19;
        SELECT IFNULL(SUM(mvi_n_valor), 0)
        INTO _bint_vCortesiaDinero 
        FROM cas_mvi_mexmovimientos
        WHERE mvi_n_tipomov = 5
        AND	mvi_c_maquina = _vch_maquina;


        SET _int_n = 20;
        SELECT IFNULL(SUM(mvi_n_valor), 0)
        INTO _bint_promocoes 
        FROM cas_mvi_mexmovimientos
        WHERE (mvi_n_tipomov = 15 OR mvi_n_tipomov = 16)
        AND mvi_c_maquina = _vch_maquina;

        SET _int_n = 21;
        SELECT IFNULL(SUM(mvi_n_valor), 0)
        INTO _bint_saldopromodia   
        FROM cas_mvi_mexmovimientos
        WHERE mvi_n_tipomov = 15
        AND mvi_c_maquina = _vch_maquina;

        SET _int_n = 22;
        SELECT IFNULL(SUM(tck_n_entrada), 0)
        INTO _bint_saldosaidapromo 
        FROM cas_tck_mextickets INNER JOIN cas_mvi_mexmovimientos ON mvi_c_code = tck_c_code
        AND mvi_c_maquina = _vch_maquina
        AND (mvi_n_tipomov = 3 OR mvi_n_tipomov = 6)
        WHERE tck_n_promocao = 1 
        AND tck_n_activa = 0;

        SET _int_n = 23;
        SELECT IFNULL(SUM(tck_n_saldo), 0) - IFNULL(SUM(tck_n_saldoant), 0)
        INTO _bint_retidodevolucaoant 
        FROM (SELECT DISTINCT tck_c_code, tck_n_saldo, tck_n_saldoant
        FROM  cas_tck_mextickets INNER JOIN cas_mvi_mexmovimientos ON mvi_c_code = tck_c_code
        WHERE tck_c_maquina = _vch_maquina
        AND tck_n_actualdia = 0) AS tickets;

        SET _int_n = 24;
        SELECT IFNULL(SUM(m1.mvi_n_valor), 0)
        INTO _bint_saidaspromocoes 
        FROM cas_mvi_mexmovimientos m1 INNER JOIN cas_mvi_mexmovimientos m2 ON m1.mvi_c_code = m2.mvi_c_code
        WHERE m2.mvi_n_tipomov = 15
        AND (m1.mvi_n_tipomov = 3 OR m1.mvi_n_tipomov = 6)
        AND m1.mvi_c_maquina = _vch_maquina;
                    
        SET _int_n = 25;
        SELECT IFNULL(SUM(tck_n_saldo), 0), IFNULL(SUM(tck_n_entrada), 0)
        INTO _bint_diferencapromocoes, _bint_diferencaaux 
        FROM cas_tck_mextickets
        WHERE tck_n_actualdia = 1
        AND tck_n_activa = 1
        AND tck_n_promocao = 1
        AND tck_c_maquina = _vch_maquina
        AND tck_n_saldo < tck_n_entrada;

        SET _bint_diferencapromocoes = _bint_diferencaaux - _bint_diferencapromocoes;

        IF (_bit_wcalcularvendas = 1)
        THEN
            SET _int_n = 26;
            SELECT  IFNULL(SUM(tck_n_salida), 0)
            INTO _bint_wcancelamento
            FROM cas_tck_mextickets INNER JOIN cas_mvi_mexmovimientos ON mvi_c_code = tck_c_code
            WHERE mvi_c_maquina = _vch_maquina
            AND (mvi_n_tipomov = 3 OR mvi_n_tipomov = 6)
            AND tck_d_fechacierre > _dtm_wdtAbertura
            AND tck_n_activa = 0
            AND tck_n_promocao = 0
            AND tck_n_cortesia = 0
            AND tck_n_salida <= tck_n_entrada;
        ELSE
            SET _bint_wcancelamento = 0;
        END IF;
            
    ELSE	
        SET _bint_SaidaPos = 0;
        SET _bint_SaidaPosAnt = 0;
        SET _bint_vCortesiaDinero = 0;
        SET _bint_promocoes = 0;
        SET _bint_saidaspromocoes = 0;
        SET _bint_diferencapromocoes = 0;
        SET _bint_saldosaidapromo = 0;
        SET _bint_diferencaaux = 0;
        SET _bint_wcancelamento = 0;
        SET _bint_saldopromodia = 0;
        SET _bint_retidodevolucaoant = 0;
    END IF;


    SET _int_n = 27;
    SELECT IFNULL(SUM(mvi_n_valor), 0)
    INTO   _bint_vSalidasAnt   
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 6
    AND	mvi_c_maquina = _vch_maquina;

    IF (_bit_calculacierre = 1)
    THEN
        SET _int_n = 28;
        SELECT IFNULL(SUM(tck_n_saldo), 0)
        INTO _bint_vRetenido60Dias 
        FROM (SELECT tck_c_code, tck_n_saldo
        FROM cas_tck_mextickets
        WHERE tck_n_actualdia = 0
        AND tck_c_maquina = _vch_maquina 
        UNION
        SELECT tcm_c_code, tcm_n_saldo
        FROM cas_tcm_ticketsexcluidos
        WHERE tcm_n_actualdia = 0
        AND tcm_c_maquina = _vch_maquina) AS tickets;
    ELSE
        SET _bint_vRetenido60Dias = 0;
    END IF;
        
    SET _int_n = 29;

    SELECT IFNULL(SUM(mvi_n_valor), 0)
    INTO _bint_ReforcoCaixa 
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 11
    AND	mvi_c_maquina = _vch_maquina;
        
    SET _int_n = 30;
    SELECT IFNULL(SUM(mvi_n_valor), 0)
    INTO _bint_RetiradaCaixa 
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 12
    AND	mvi_c_maquina = _vch_maquina;

    IF (_bit_calculacierre = 1)
    THEN
        SET _int_n = 31;
        SELECT IFNULL(SUM(tck_n_saldo), 0)
        INTO _bint_TotalSaldo 
        FROM (SELECT DISTINCT tck_c_code, tck_n_saldo
        FROM cas_tck_mextickets INNER JOIN cas_mvi_mexmovimientos ON mvi_c_code = tck_c_code
        WHERE tck_n_actualdia = 1
        AND	tck_n_activa = 1
        AND tck_c_maquina = _vch_maquina) AS tickets;
    ELSE
        SET _bint_TotalSaldo = 0;
    END IF; 

    SET _int_n = 32;
    CREATE TEMPORARY TABLE _exectemp02(cod VARCHAR(8), 
                                       salida BIGINT, 
                                       entrada BIGINT, 
                                       valordinmaquina BIGINT, 
                                       promocao INT, 
                                       cortesia INT);

    SET _int_n = 33;
    INSERT INTO _exectemp02(cod, salida, entrada, valordinmaquina, promocao, cortesia)
    SELECT DISTINCT tck_c_code, tck_n_salida, tck_n_entrada, tck_n_valordinmaquina, tck_n_promocao, tck_n_cortesia
    FROM cas_tck_mextickets INNER JOIN cas_mvi_mexmovimientos ON mvi_c_code = tck_c_code
    AND mvi_c_maquina = _vch_maquina
    AND (mvi_n_tipomov = 3 OR mvi_n_tipomov = 6)
    WHERE tck_n_activa = 0;

    SELECT COUNT(*) 
    INTO _bint_TotalSaldo 
    FROM _exectemp02;
        
    SET _int_i = 0;
    WHILE _int_i < _int_cont 
    DO 
        SET _int_n = 34;
        SELECT  cod, 
                IFNULL(salida, 0), 
                IFNULL(entrada, 0), 
                IFNULL(valordinmaquina, 0), 
                IFNULL(promocao, 0), 
                IFNULL(cortesia, 0)
        INTO    _vch_tmpcod, 
                _bint_tmpsalida, 
                _bint_tmpentrada, 
                _bint_tmpvalordinmaquina, 
                _int_tmppromocao, 
                _int_tmpcortesia 
        FROM _exectemp02 LIMIT 1;

        IF (_bit_wexibecupomb = 1
        AND _int_tmpcortesia = 0
        AND _int_tmppromocao = 0)
        THEN
            IF (_bint_tmpsalida > _bint_tmpentrada)
            THEN
                SET _bint_tmpentrada = (_bint_tmpentrada / 10) * 8;
                SET _bint_tmpsalida = _bint_tmpsalida - _bint_tmpentrada;
            ELSE
                SET _bint_tmpsalida = _bint_tmpsalida - (_bint_tmpentrada + _bint_tmpvalordinmaquina);
            END IF;
        ELSE
            SET _bint_tmpsalida = _bint_tmpsalida - (_bint_tmpentrada + _bint_tmpvalordinmaquina);
        END IF;

        IF (_bint_tmpsalida > 0) THEN
            SET _bint_vPremiosPagos = _bint_vPremiosPagos + _bint_tmpsalida;
        END IF;

        SET _int_n = 35;
        DELETE FROM _exectemp02 
        WHERE cod = _vch_tmpcod;

        SET _int_i = _int_i + 1;

    END WHILE;

    SET _int_n = 36;
    CREATE TEMPORARY TABLE _exectemp03(cod INT, saida INT, entrada INT);

    SET _int_n = 37;
    INSERT INTO _exectemp03(cod, saida, entrada)
    SELECT DISTINCT pgt_n_codigo, pgt_n_saida, pgt_n_entrada
    FROM cas_pgt_mexpgtomanuais
    WHERE pgt_b_active = 1
    AND pgt_c_maquina = _vch_maquina;

    SELECT _int_cont = COUNT(*) FROM _exectemp03;

    SET _int_i = 0;
    WHILE _int_i < _int_cont
    DO
        SET _int_n = 38;
        SELECT cod, IFNULL(saida, 0), IFNULL(entrada, 0)
        INTO _int_tmpcodpgtmanual,_bint_tmpsalida, _bint_tmpentrada 
        FROM _exectemp03 LIMIT 1;

        SET _bint_tmpsalida = _bint_tmpsalida - _bint_tmpentrada;

        IF (_bint_tmpsalida > 0) THEN
            SET _bint_vPremiosPagos = _bint_vPremiosPagos + _bint_tmpsalida;
        END IF;

        SET _int_n = 39;

        DELETE FROM _exectemp03 
            WHERE cod = _int_tmpcodpgtmanual;

        SET _int_i = _int_i + 1;

    END WHILE;
                

    IF (_bit_calculacierre = 1)
    THEN

        SET _int_n = 40;

        IF (_bit_Horas = 1)
        THEN
                SELECT IFNULL(SUM(tck_n_saldo), 0)
                INTO _bint_vRetenidoBorrados 
                FROM (SELECT tck_c_code, tck_n_saldo
                FROM cas_tck_mextickets
                WHERE tck_c_maquina = _vch_maquina
                AND  DATE_ADD(tck_d_fecha, INTERVAL _int_wDiasValidez HOUR) < CURDATE()
            UNION
                SELECT tcm_c_code, tcm_n_saldo
                FROM cas_tcm_ticketsexcluidos
                WHERE tcm_c_maquina = _vch_maquina
                AND DATE_ADD(tcm_d_fecha, INTERVAL _int_wDiasValidez HOUR) < CURDATE()) AS tickets;
        ELSE
                SELECT IFNULL(SUM(tck_n_saldo), 0)
                INTO _bint_vRetenidoBorrados
                FROM (SELECT tck_c_code, tck_n_saldo
                FROM cas_tck_mextickets
                WHERE tck_c_maquina = _vch_maquina
                AND ABS(DATEDIFF(CURDATE() , tck_d_fecha)) >= _int_wDiasValidez
            UNION
                SELECT tcm_c_code, tcm_n_saldo
                FROM cas_tcm_ticketsexcluidos
                WHERE tcm_c_maquina = _vch_maquina
                AND ABS(DATEDIFF(CURDATE() , tcm_d_fecha)) >= _int_wDiasValidez) AS tickets;
        END IF;

                    
        SET _bint_vRetenido60Dias = _bint_vRetenido60Dias - _bint_vRetenidoBorrados;
                    
        IF (_bint_vRetenido60Dias < 0) THEN
            SET _bint_vRetenido60Dias = 0;
        END IF;

    ELSE
        SET _bint_vRetenidoBorrados = 0;
        SET _bint_vRetenido60Dias = 0;
    END IF;

    IF (_int_save <> 0)
    THEN
        SET _int_n = 41;
        CALL p_cas_i_atualizaticketmovimento(_vch_maquina, _int_wStatus);

        IF (_int_wStatus <> 0)
        THEN
            CALL RaiseCustomError(61, 'Erro Geral 1');
        END IF;

        SET _int_n = 43;
        CALL p_cas_i_mexcontabilidadetickets(_int_wStatus);

        IF (_int_wStatus <> 0)
        THEN
            CALL RaiseCustomError(61, 'Erro Geral 2');
        END IF;

        SET _int_n = 45;
        INSERT INTO cas_mci_mexcierres(
                                        mci_d_fecha, mci_n_interes, 
                                        mci_n_interesfederal, 
                                        mci_n_interesestatal, 
                                        mci_n_entrada, 
                                        mci_n_salida,
                                        mci_n_salidasant, 
                                        mci_n_premiospagos, 
                                        mci_n_entradasmaquinas,  
                                        mci_n_retenidohoy, 
                                        mci_n_retenido60dias, 
                                        mci_n_retenidoborrados, 
                                        mci_n_cortesiadinero, 
                                        mci_n_cortesiabebidas, 
                                        mci_n_cortesiaaverias, 
                                        mci_c_maquina, 
                                        mci_n_entradasticket,
                                        mci_n_entradasdinheiro, 
                                        mci_n_entradasticketcaixa, 
                                        mci_n_salidaspgtomanual, 
                                        mci_n_entradacaixa, 
                                        mci_n_reforcocaixa, 
                                        mci_n_retiradacaixa,
                                        mci_n_clicodigo, 
                                        mci_n_entradaspos, 
                                        mci_n_saidaspos, 
                                        mci_n_promocoes, 
                                        mci_n_saidaspromocoes, 
                                        mci_n_diferencapromocoes, 
                                        mci_d_abertura,
                                        mci_n_retirosefectivo, 
                                        -- mci_n_retiroscupomb, 
                                        mci_n_cancelamento, 
                                        mci_n_saldopromodia, 
                                        mci_n_retidodevolucaoant, 
                                        mci_n_saldosaidapromo)
        VALUES(
                                        CURDATE(), 
                                        _bint_InteresINT,	
                                        _bint_wInteresFederalINT, 
                                        _bint_wInteresEstatalINT, 
                                        _bint_TotalEntradas, 
                                        _bint_TotalSalidas,
                                        _bint_vSalidasAnt, 
                                        _bint_vPremiosPagos, 
                                        _bint_vEntradasMaquina,  
                                        _bint_TotalSaldo, 
                                        _bint_vRetenido60Dias,
                                        _bint_vRetenidoBorrados, 
                                        _bint_vCortesiaDinero, 
                                        _bint_vCortesiaBebida, 
                                        _bint_vCortesiaAverias, 
                                        _vch_maquina, 
                                        _bint_EntradasTicket,
                                        _bint_EntradasDinheiro, 
                                        _bint_EntradasTicketCaixa, 
                                        _bint_SalidasPgtoManual, 
                                        _bint_EntradasCaixa, 
                                        _bint_ReforcoCaixa, 
                                        _bint_RetiradaCaixa,
                                        _int_iduser, 
                                        _bint_EntradaPos, 
                                        _bint_SaidaPos, 
                                        _bint_promocoes, 
                                        _bint_saidaspromocoes, 
                                        _bint_diferencapromocoes, 
                                        _dtm_wdtAbertura,
                                        _bin_wretirosefectivo, 
                                        -- _bint_wretiroscupomb, 
                                        _bint_wcancelamento, 
                                        _bint_saldopromodia, 
                                        _bint_retidodevolucaoant, 
                                        _bint_saldosaidapromo);

        SET _int_param = IFNULL((SELECT MAX(mci_n_codigo) FROM cas_mci_mexcierres), 0);

        SET _int_n = 46;
        CALL p_cas_i_wcierrepos(_vch_maquina, _int_param,_int_wStatus);

        IF (_int_wStatus <> 0)
        THEN
            CALL RaiseCustomError(61, 'Erro Geral 3');
        END IF;
                        
        SET _int_param = IFNULL((SELECT MAX(mci_n_codigo) FROM cas_mci_mexcierres), 0);

        SET _int_n = 48;
        CALL p_cas_l_wlistarentalfab(1, _int_param, 0,_int_wStatus);

        IF (_int_wStatus <> 0)
        THEN
            CALL RaiseCustomError(61, 'Erro Geral 4');
        END IF;
                        
        SET _int_n = 50;
        UPDATE cas_pgt_mexpgtomanuais 
        SET pgt_b_active = 0
        WHERE pgt_c_maquina = _vch_maquina;


        SET _int_n = 51;
        INSERT INTO cas_mvh_movimentoshist
        (mvh_c_code, mvh_n_tipomov, mvh_n_valor, mvh_d_fecha, mvh_c_maquina, mvh_n_cierresofice, mvh_c_ip, mvh_c_pos, 
        mvh_c_transacao, mvh_n_modelo, mvh_n_secao)
        SELECT mvi_c_code, mvi_n_tipomov, mvi_n_valor, mvi_d_fecha, mvi_c_maquina, mvi_n_cierresofice, mvi_c_ip, 
        mvi_c_pos, mvi_c_transacao, mvi_n_modelo, mvi_n_secao
        FROM cas_mvi_mexmovimientos 
        WHERE mvi_c_maquina = _vch_maquina;
                        
        SET _int_n = 52;
        DELETE FROM cas_tck_mextickets 
        WHERE tck_c_maquina = _vch_maquina 
        AND  tck_n_promocao = 1 
        AND tck_c_code IN (SELECT DISTINCT mvi_c_code 
        FROM cas_mvi_mexmovimientos 
        WHERE mvi_n_tipomov = 15);

        SET _int_n = 53;
        DELETE FROM cas_mvi_mexmovimientos 
        WHERE mvi_n_tipomov = 10 
        AND mvi_c_maquina = _vch_maquina;

        SET _int_n = 54;
        UPDATE cas_tck_mextickets 
        SET tck_n_actualdia = 0 
        WHERE tck_n_actualdia = 1 
        AND tck_c_maquina = _vch_maquina;

        IF (_bit_wfechamentoconsolidado = 0)
        THEN
            SET _int_n = 55;
            UPDATE cas_cbi_contabilhetes 
            SET cbi_n_atual = 0 
            WHERE cbi_n_atual = 1;

            SET _int_n = 56;
            UPDATE cas_cpg_contapagomanual 
            SET cpg_n_atual = 0 
            WHERE cpg_n_atual = 1;

            SET _int_n = 57;
            UPDATE cas_mco_mexconta 
            SET mco_n_atual = 0 
            WHERE mco_n_atual = 1;

        END IF;
                                
        SET _int_n = 60;
        UPDATE cas_stp_systemtype SET stp_b_minimojogadores = 1;

        SET _int_n = 62;		
        DELETE FROM cas_ctr_controlejogadores;
    END IF;

    SET _int_n = 63;		

        
    IF (_bint_DeducaoEntrada < 0) THEN
        SET _bint_DeducaoEntrada = 0;
    END IF;

    IF (_int_save <> 0) THEN
        SET _int_numerocontrole = IFNULL((SELECT MAX(mci_n_codigo)
                                        FROM cas_mci_mexcierres), 0);
    ELSE
        SET _int_numerocontrole = 0;
    END IF;

    SET _int_n = 59;
        SELECT 	_bint_TotalEntradas AS TotalEntradas, 
            _bint_TotalSalidas AS TotalSalidas, 
            _bint_TotalSaldo AS vRetenidoHoy, 
            _bint_vRetenido60Dias AS vRetenido60Dias, 
            _bint_vRetenidoBorrados AS vRetenidoBorrados, 
            _bint_vCortesiaDinero AS vCortesiaDinero,
            _bint_vCortesiaBebida AS vCortesiaBebidas, 
            _bint_vCortesiaAverias AS vCortesiaAverias, 
            _bint_vSalidasAnt AS vSalidasAnt, 
            _bint_vPremiosPagos AS vPremiosPagos, 
            _bint_vEntradasMaquina AS vEntradasMaquina,
            CASE _bit_wcalcularvendas 
                    WHEN 1 THEN 
                        (	_bint_TotalSalidas + 
                            CAST(((_bint_vPremiosPagos / 100) *  ((_num_wInteresEstatal + _num_wInteresFederal) / 100)) AS UNSIGNED) 
                            + _bint_vSalidasAnt + _bint_SalidasPgtoManual
                        ) - _bint_wcancelamento
                        ELSE (	_bint_TotalSalidas + 
                            CAST(((_bint_vPremiosPagos / 100) *  ((_num_wInteresEstatal + _num_wInteresFederal) / 100)) AS UNSIGNED) 
                            + _bint_vSalidasAnt + _bint_SalidasPgtoManual) 
                 END AS SaidaTotal,
          ((_bint_TotalEntradas + (_bint_EntradasCaixa + _bint_ReforcoCaixa)) - (_bint_TotalSalidas + CAST(((_bint_vPremiosPagos / 100) *  ((_num_wInteresEstatal + _num_wInteresFederal) / 100)) AS UNSIGNED) + _bint_vSalidasAnt + _bint_SalidasPgtoManual + _bint_RetiradaCaixa)) AS Saldo,
            ((_bint_vPremiosPagos / 100) *  (_num_wInteresFederal / 100))  AS Deducao1,
            ((_bint_vPremiosPagos / 100) *  (_num_wInteresEstatal / 100)) AS Deducao2,
            (((_bint_TotalEntradas - _bint_EntradasDinheiro) + (_bint_EntradasCaixa + _bint_ReforcoCaixa)) - (_bint_TotalSalidas + _bint_vSalidasAnt + _bint_SalidasPgtoManual + _bint_RetiradaCaixa)) AS SaldoNet,
            _bint_DeducaoEntrada AS DeducaoEntrada,
            (_bint_TotalSalidas + CAST(((_bint_vPremiosPagos / 100) *  ((_num_wInteresEstatal + _num_wInteresFederal) / 100)) AS UNSIGNED)) AS SaidasHoje,
            _bint_EntradasTicket AS EntradasTicket, 
           _bint_EntradasDinheiro AS EntradasDinheiro, 
            _bint_EntradasTicketCaixa AS EntradasTicketCaixa, 
           _bint_SalidasPgtoManual AS SalidasPgtoManual,
            _bint_EntradasCaixa AS EntradaCaixa, 
           _bint_ReforcoCaixa AS ReforcoCaixa, 
            _bint_RetiradaCaixa AS RetiradaCaixa, 
           _bint_EntradaPos AS EntradaPos,
            _bint_SaidaPos AS SaidaPos, 
           IFNULL(_bint_saldopromodia, 0) AS Promocoes, 
           IFNULL(_bint_saidaspromocoes, 0) AS SaidasPromocoes,
            IFNULL(_bint_diferencapromocoes, 0) AS DiferencaPromocoes, 
           _bint_wcancelamento AS cancelamento, 
           '' as nomeusuario, 
            (_bint_TotalEntradas) - (_bint_TotalSalidas + _bint_vSalidasAnt + CAST(((_bint_vPremiosPagos / 100) *  ((_num_wInteresEstatal + _num_wInteresFederal) / 100)) AS UNSIGNED) + _bint_SalidasPgtoManual) AS Resultado,		
            _int_numerocontrole AS numerocontrole, 
           _dtm_wdtAbertura AS dtabertura,
            IFNULL(_bint_wefectivo, 0) AS efectivo, 
           -- IFNULL(_bint_wcupomb, 0) AS cupomb, 
           IFNULL(_bin_wretirosefectivo, 0) AS retirosefectivo,
            -- IFNULL(_bint_wretiroscupomb, 0) AS retiroscupomb, 
           -- _bit_wexibecupomb AS exibecupomb, 
            (_bint_TotalEntradas + IFNULL(CAST(_num_wbonif AS UNSIGNED), 0)) - (_bint_TotalSalidas + _bint_vSalidasAnt + IFNULL(_bint_saldosaidapromo, 0) + CAST(((_bint_vPremiosPagos / 100) *  ((_num_wInteresEstatal + _num_wInteresFederal) / 100)) AS UNSIGNED) + _bint_SalidasPgtoManual + (IFNULL(_bint_TotalSaldo,0) - IFNULL(_bint_saldopromodia,0)) + IFNULL(_bint_retidodevolucaoant, 0)) AS rentabcaixa,
            _bint_retidodevolucaoant AS retidodevolucaoant, 
           -- _bint_wpromocupomb AS promocupomb, 
           _bit_wexibirfabricantes AS exibirfabricantes, 
           '' As Fecha, 
           _int_widCasa As idtransacao, 
           '' as maquina, 
           '' as clinome, 
           0 as clicodigo;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_wmexcierreticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_wmexcierreticket`(
    _vch_code			VARCHAR(8),		  
    _vch_codebonif		VARCHAR(8),
    _int_save			INT,		        
    _vch_maquina		VARCHAR(16),	
    _bit_abertura		TINYINT(1),		  
    _bit_novaversao		TINYINT(1),
    _int_encriptcode	INT,		        
    _int_codecliente	INT
)
BEGIN
    DECLARE _int_n INT;
	DECLARE _num_totalentrada			    DECIMAL(18,2);	
	DECLARE _dtm_wdata					    DATETIME(6);
	DECLARE _int_block                      INT;	
	DECLARE _int_wdias					    INT;
	DECLARE _num_saldo					    DECIMAL(18,2);
	DECLARE _int_actualdia			        INT;
	DECLARE _num_wimpuesto				    DECIMAL(18,2);
	DECLARE _dtm_fecha					    DATETIME(6);
	DECLARE _int_wtipomov				    INT;
	DECLARE _num_winteresfederal		    DECIMAL(18,2);
	DECLARE _num_winteresestatal		    DECIMAL(18,2);	
	DECLARE _dtm_wfechacierre			    DATETIME(6);
	DECLARE _num_wentradadinheiro		    DECIMAL(18,2);
	DECLARE _num_wentradaticket			    DECIMAL(18,2);	
	DECLARE _num_wentradaticketcaixa	    DECIMAL(18,2);
	DECLARE _int_activa					    INT;
	DECLARE _num_premio					    DECIMAL(18,2);
	DECLARE _int_wPromo					    INT;
	DECLARE _int_wCortesia				    INT;
	DECLARE _dtm_wdt					    DATETIME;
	DECLARE _num_wefectivo				    DECIMAL(18,2);
	DECLARE _bit_wvaloresnegativos		    TINYINT(1);
	DECLARE _num_imposto				    DECIMAL(18,2);
	DECLARE _num_waposta				    DECIMAL(18,2);	
	DECLARE _bit_wfecharticketpromocao	    TINYINT(1);
	DECLARE _int_wpromonormal			    INT;		
	DECLARE _int_wapostaminima			    INT;
	DECLARE _bit_wrecargaticket			    TINYINT(1);
	DECLARE _dec_wsaldoant				    DECIMAL(18,2);
	DECLARE _int_wstatus                    INT;        
	DECLARE _bit_Horas					    TINYINT(1);
    DECLARE _dec_Premio                     DECIMAL(18,2);
    DECLARE _dec_Deducao1                   DECIMAL(18,2);
	
	SET _int_n = 1;
	SELECT   
        tck_d_fecha, tck_d_fecha,			
        tck_n_activa, tck_n_blocked, 
        tck_n_saldo, tck_n_entrada,
        tck_n_promocao, tck_n_cortesia,		
        tck_n_saldoant, tck_n_actualdia, 	
        tck_n_valorcredmaquina, tck_n_valordinmaquina, tck_n_valorentcaixa
   INTO
        _dtm_wdata, _dtm_fecha, _int_activa,  _int_block, _num_saldo, _num_totalentrada, 
        _int_wPromo, _int_wCortesia, _dec_wsaldoant, _int_actualdia, _num_wentradaticket, 
        _num_wentradadinheiro, _num_wentradaticketcaixa
	FROM 
		cas_tck_mextickets
	WHERE 
		tck_c_code = _vch_code;

	SET _dtm_fecha = _dtm_wdata;

   
	IF (NOW(6) < _dtm_wdata)
	THEN
      CALL RaiseCustomError(253, null);
	END IF;


	SET _int_n = 3;
    IF EXISTS(SELECT *
    FROM cas_prt_mexparametros
    WHERE CAST(prt_d_datavigencia AS DATE) = (SELECT CAST(MAX(prt_d_datavigencia) AS DATE)
    FROM cas_prt_mexparametros
    WHERE CAST(prt_d_datavigencia AS DATE) <= CAST(_dtm_wdata AS DATE)))
    THEN
		SET _int_n = 4;
        SELECT 
        prt_n_dias, prt_b_permitirsaldonegativo,
        prt_b_fecharticketpromocao, prt_b_horas
        INTO  _int_wdias , _bit_wvaloresnegativos , 
        _bit_wfecharticketpromocao ,_bit_Horas 
        FROM cas_prt_mexparametros
        WHERE CAST(prt_d_datavigencia AS DATE) = (SELECT CAST(MAX(prt_d_datavigencia) AS DATE)
        FROM cas_prt_mexparametros
        WHERE CAST(prt_d_datavigencia AS DATE) <= CAST(_dtm_wdata AS DATE));
	ELSE
        SET _int_n = 5;
        SELECT prt_n_dias, prt_b_permitirsaldonegativo, prt_b_fecharticketpromocao, prt_b_horas
        INTO    _int_wdias, _bit_wvaloresnegativos , _bit_wfecharticketpromocao,  _bit_Horas 
        FROM cas_prt_mexparametros
        WHERE CAST(prt_d_datavigencia AS DATE) = (SELECT CAST(MAX(prt_d_datavigencia) AS DATE)
        FROM cas_prt_mexparametros
        WHERE CAST(prt_d_datavigencia AS DATE) <= CAST(NOW(6) AS DATE));
   END IF;

   IF (_bit_Horas = 1)
    THEN        
        SET _dtm_wdt = DATE_ADD(_dtm_wdata, INTERVAL _int_wdias HOUR);

        IF (_dtm_wdt < NOW(6))
        THEN
            CALL RaiseCustomError(229, null);
        END IF;
    ELSE
        SET _int_wdias = _int_wdias + 1;
        
        SET _dtm_wdt = DATE_ADD(_dtm_wdata, INTERVAL _int_wdias DAY);

        IF (CAST(_dtm_wdt AS DATE) < CAST(NOW(6) AS DATE))
        THEN
            CALL RaiseCustomError(229, null);
        END IF;
        SET _int_wdias = _int_wdias - 1;
    END IF;

    SET _int_n = 7;
    SELECT IFNULL(SUM(IFNULL(imp_n_valor, 0)), 0)
    INTO _num_winteresfederal 
    FROM cas_imp_meximpostos
    WHERE imp_n_tipo = 2
    AND	imp_n_status = 1
    AND	imp_d_datavigencia <= CAST(NOW(6) AS DATE);

    SET _int_n = 8;
    SELECT IFNULL(SUM(IFNULL(imp_n_valor, 0)), 0)
    INTO _num_winteresestatal 
    FROM cas_imp_meximpostos
    WHERE imp_n_tipo = 3
    AND	imp_n_status = 1
    AND	imp_d_datavigencia <= CAST(NOW(6) AS DATE);

    SET _int_n = 9;
    CREATE TEMPORARY TABLE _exectemp(
                                Entrada		        DECIMAL(18,2), 
                                Salida		        DECIMAL(18,2),	
                                SaldoTotal		    DECIMAL(18,2),	
                                Fecha	            DATETIME(6), 
                                EntradaTicket	    DECIMAL(18,2), 
                                EntradaDinheiro	    DECIMAL(18,2),	
                                EntradaTicketCaixa	DECIMAL(18,2),	
                                Promocao	        DECIMAL(18,2),  
                                Efectivo		    DECIMAL(18,2),	
                                Aposta	            DECIMAL(18,2)
                                    );

    SET _int_n = 10;
    IF NOT EXISTS(SELECT * 
    FROM cas_tck_mextickets 
    WHERE tck_c_code = _vch_code)
    THEN
        CALL RaiseCustomError(142, null);
    END IF;

    IF (_int_activa = 0)
    THEN
        CALL RaiseCustomError(142, null);
    END IF;
   
    IF (_int_block = 1)
    THEN
        CALL RaiseCustomError(80, null);
    END IF;

	IF (_int_actualdia = 0)
	THEN
        SET _int_n = 14;
        SELECT stp_n_apostamin
        INTO _int_wapostaminima 
        FROM cas_stp_systemtype LIMIT 1;

        SET _int_n = 15;
        IF EXISTS (SELECT  *
        FROM cas_his_historicooperacao
        WHERE his_n_codigooperacao = 2
        AND his_c_numticket = _vch_code LIMIT 1)
        THEN
            SET _bit_wrecargaticket = 1;
        ELSE
            SET _bit_wrecargaticket = 0;
        END IF;

        SET _int_n = 17;
        IF EXISTS(SELECT  *
        FROM cas_his_historicooperacao
        WHERE his_n_codigooperacao = 70
        AND his_c_numticket = _vch_code LIMIT 1)
        THEN
            CALL RaiseCustomError(258, null);
        END IF;

        IF ((_dec_wsaldoant < _num_saldo)
        AND (_dec_wsaldoant > 0)
        AND (_dec_wsaldoant < _int_wapostaminima)
        AND (_bit_wrecargaticket = 0))
        THEN
            CALL RaiseCustomError(258, null);
        END IF;
    END IF;
	
   SET _num_wimpuesto = _num_saldo - (_num_totalentrada + _num_wentradadinheiro);

    IF (_num_wimpuesto > 0 AND (_num_winteresfederal <> 0 OR _num_winteresestatal <> 0))
    THEN
        SET _num_wimpuesto = ((_num_wimpuesto / 100) * ((_num_winteresfederal + _num_winteresestatal)/100));
    ELSE
        SET _num_wimpuesto = 0;
    END IF;

	SET _num_wimpuesto = _num_saldo - _num_wimpuesto;

	IF (_int_wPromo = 1)
	THEN
        SET _int_n = 18;
        IF EXISTS(SELECT *
        FROM cas_mvi_mexmovimientos
        WHERE mvi_n_tipomov = 15    
        AND mvi_c_code = _vch_code)
        THEN
            SET _int_wpromonormal = 1;
        ELSE
            SET _int_wpromonormal = 0;
        END IF;
    END IF;

	IF (_int_wPromo = 1) 
		AND ((_num_totalentrada + _num_wentradadinheiro) >= _num_wimpuesto)
	THEN
        CALL RaiseCustomError(240, null);
	END IF;

	IF ((_int_wPromo = 1)
		AND (_bit_wfecharticketpromocao = 0)
		AND (_int_wpromonormal = 1))
	THEN
		SET _int_n = 20;
        IF NOT EXISTS(SELECT *
        FROM cas_dpr_dataspromo
        WHERE CAST(dpr_d_data AS DATE) = CAST(NOW(6) AS DATE))
        THEN
            CALL RaiseCustomError(240, null);
        END IF;
	END IF;


    IF (_int_wPromo = 1)
        THEN SET _num_wimpuesto = _num_wimpuesto - (_num_totalentrada + _num_wentradadinheiro);
    END IF;

    IF (_int_save <> 0)
    THEN
		SET _dtm_wfechacierre = NOW(6);

        SET _int_n = 25;
        SELECT tck_n_activa
        INTO _int_activa 
        FROM cas_tck_mextickets
        WHERE tck_c_code = _vch_code;

		IF (_int_activa = 0) 
		THEN
         CALL RaiseCustomError(142, null);
		END IF;

        SET _int_n = 27;
        UPDATE  cas_tck_mextickets 
        SET     tck_n_saldo = 0, 
                tck_n_salida = _num_saldo, 
                tck_n_activa = 0, 
                tck_n_saldocierre = _num_saldo,
                tck_d_fechacierre = NOW(6)
        WHERE tck_c_code = _vch_code;

        IF (_int_actualdia = 0)
        THEN
            SET _int_wtipomov = 6; 
        ELSE
            SET _int_wtipomov = 3; 
        END IF;

        SET _int_n = 28;
        INSERT INTO cas_mvi_mexmovimientos(mvi_c_code, mvi_n_tipomov, mvi_n_valor, mvi_d_fecha, mvi_c_maquina) 
        VALUES (_vch_code, _int_wtipomov, _num_wimpuesto, _dtm_wfechacierre, _vch_maquina);

        -- Calcula o valor do premio
        SET _num_premio = _num_saldo - _num_totalentrada;		
        SET _num_imposto = _num_saldo - _num_wimpuesto;
        
        IF( _int_wPromo = 1)
        THEN
            SET _dec_Deducao1 = (_num_saldo - _num_wimpuesto) - (_num_totalentrada + _num_wentradadinheiro);
        ELSE
            SET _dec_Deducao1 = _num_saldo - (_num_totalentrada + _num_wentradadinheiro);
        END IF;
        

		IF (_num_premio > 0)
		THEN
            SET _int_n = 29;
            INSERT INTO cas_tpr_mexticketspremios(tpr_c_code, tpr_n_premio, tpr_n_imposto, tpr_d_fechacierre, tpr_n_saldoatual, tpr_c_maquina) 
            VALUES (_vch_code, _num_premio, _num_imposto, NOW(6), _num_saldo, _vch_maquina);
        END IF;
    END IF;

    SET _int_n = 31;
	INSERT INTO _exectemp(  Entrada, 
                            Salida, 
                            SaldoTotal,		
                            Fecha, 
                            EntradaTicket, 	
                            EntradaDinheiro,	
                            EntradaTicketCaixa,		
                            Promocao,			
                            Efectivo,	
                            Aposta) 
	VALUES               (
                            (_num_totalentrada + _num_wentradadinheiro), 
                            _num_saldo,         
                            _num_wimpuesto, 
                            _dtm_fecha,			                         
                            _num_wentradaticket,
                            _num_wentradadinheiro, 
                            _num_wentradaticketcaixa,
                            _int_wPromo,	
                            _num_wefectivo,		
                            _num_waposta);


	SET _int_n = 33;
    SELECT 
    IFNULL(Entrada, 0)                  AS entrada,			    IFNULL(Salida, 0)			AS salida, 
    IFNULL(SaldoTotal, 0)               AS saldototal,          Fecha                       AS fecha,
    IFNULL(EntradaTicket, 0)            AS entradaticket,		IFNULL(EntradaDinheiro, 0)	AS entradadinheiro, 
    IFNULL(EntradaTicketCaixa, 0)       AS entradaticketcaixa,	IFNULL(Promocao, 0)			AS promocao, 
    IFNULL(Efectivo, 0)                 AS efectivo, 
    IFNULL(Aposta, 0)                   AS aposta,		
    _int_wdias                          AS dias, 
    ''                                  As ID, 
    _num_premio                         As premio,
    _dec_Deducao1                       As deducao1
    FROM _exectemp;

    DROP TABLE _exectemp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_wmexnewmovement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_wmexnewmovement`(
    _vch_code           VARCHAR(8),		
    _dec_entrada        DECIMAL(18,2),	
    _dec_maxentrada     DECIMAL(18,2),	
    _int_tipomov        INT,	
    _vch_maquina        VARCHAR(16),
	 _vch_id             VARCHAR(21)
)
BEGIN 

	DECLARE 
			 _int_wActiva
			,_int_wPromo
			,_int_wDiasRestantes
			,_int_wTipoMov
			,_int_wCortesia
			,_int_wdias2
			INT;
	
    DECLARE _dec_wTotalEntrada
            ,_dec_wTotalEntradaCaixa
            ,_dec_wTotalEntrada2
            ,_dec_wSaldo
            DECIMAL(18,2);

	
	DECLARE 	 _dtm_wdt				
				,_dtm_datageracao
				,_dtm_wdata
				,_dtm_wDias		DATETIME;
				
	DECLARE _bit_Horas TINYINT(1);

   DECLARE _int_n INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	
    SET _int_n = 1;
    SELECT tck_d_fecha
    INTO _dtm_wdata
    FROM cas_tck_mextickets
    WHERE tck_c_code = _vch_code;

    SET _int_n = 2;
    IF EXISTS(SELECT *
    FROM cas_prt_mexparametros
    WHERE CAST(prt_d_datavigencia AS DATE) = (SELECT CAST(MAX(prt_d_datavigencia) AS DATE)
    FROM cas_prt_mexparametros
    WHERE CAST(prt_d_datavigencia AS DATE) <= CAST(_dtm_wdata AS DATE)))
    THEN
        SET _int_n = 3;
        SELECT  prt_n_dias, prt_b_horas
        INTO _int_wdias2, _bit_Horas 
        FROM cas_prt_mexparametros
        WHERE CAST(prt_d_datavigencia AS DATE) = (SELECT CAST(MAX(prt_d_datavigencia) AS DATE)
        FROM cas_prt_mexparametros
        WHERE CAST(prt_d_datavigencia AS DATE) <= CAST(_dtm_wdata AS DATE));
	ELSE
        SET _int_n = 4;
        SELECT prt_n_dias, prt_b_horas
        INTO _int_wdias2, _bit_Horas 
        FROM cas_prt_mexparametros
        WHERE CAST(prt_d_datavigencia AS DATE) = (SELECT CAST(MAX(prt_d_datavigencia) AS DATE)
        FROM cas_prt_mexparametros
        WHERE CAST(prt_d_datavigencia AS DATE) <= CAST(CURDATE() AS DATE));
	END IF;

    IF (_bit_Horas = 1)
    THEN
        SET _dtm_wdt = DATE_ADD(_dtm_wdata, INTERVAL _int_wdias2 HOUR);

        IF (_dtm_wdt < CURDATE())
        THEN
            CALL RaiseCustomError(229, null);
        END IF;
    ELSE
        SET _dtm_wdt = DATE_ADD(_dtm_wdata, INTERVAL _int_wdias2 DAY);

        IF (CAST(_dtm_wdt AS DATE) < CAST(CURDATE() AS DATE))
        THEN
            CALL RaiseCustomError(229, null);
        END IF;
    END IF;

    SET _int_n = 6;
    IF NOT EXISTS(SELECT * 
                FROM cas_tck_mextickets 
                WHERE tck_c_code = _vch_code)
    THEN
      CALL RaiseCustomError(142, null);
    END IF;

    SET _int_n = 8;
    SELECT  tck_n_activa, tck_n_promocao, tck_n_saldo, 
            tck_n_saldo, tck_n_entrada, tck_n_valorentcaixa, 
            tck_n_cortesia, tck_d_fecha
    INTO    _int_wActiva , _int_wPromo, _dec_wTotalEntrada, _dec_wSaldo , _dec_wTotalEntrada2 , 
            _dec_wTotalEntradaCaixa , _int_wCortesia, _dtm_datageracao
    FROM cas_tck_mextickets 
    WHERE tck_c_code = _vch_code;

	IF (_int_wActiva = 0)
	THEN
       CALL RaiseCustomError(20, null);
	END IF;

	IF (_int_wPromo = 1)
	THEN
        CALL RaiseCustomError(240, null);   
   END IF;

	IF (_int_wCortesia = 1)
	THEN
       CALL RaiseCustomError(208, null); 
	END IF;

    SET _int_n = 9;
    SET _dec_wTotalEntrada = _dec_wTotalEntrada + _dec_entrada;
    SET _dec_wTotalEntrada2 = _dec_wTotalEntrada2 + _dec_entrada;
    SET _dec_wTotalEntradaCaixa = _dec_wTotalEntradaCaixa + _dec_entrada;


    IF ((_dec_wSaldo + _dec_entrada) > _dec_maxentrada)
    THEN
        CALL RaiseCustomError(66, 'RN1');
    END IF;

	IF (_dec_wTotalEntrada < _dec_entrada)
	THEN
      CALL RaiseCustomError(66, 'Rn2');
	END IF;

	SET _dec_wTotalEntrada = _dec_entrada + _dec_wSaldo;

    SET _int_n = 17;
    UPDATE cas_tck_mextickets 
    SET tck_n_entrada = _dec_wTotalEntrada2, tck_n_valorentcaixa = _dec_wTotalEntradaCaixa,
    tck_n_saldo = _dec_wTotalEntrada
    WHERE tck_c_code = _vch_code;

    SET _int_n = 18;

    SELECT tck_d_fecha 
    INTO _dtm_wDias 
    FROM cas_tck_mextickets 
    WHERE tck_c_code = _vch_code;

    SET _int_wTipoMov = _int_tipomov;

    SET _int_n = 19;
    INSERT INTO cas_mvi_mexmovimientos(mvi_c_code, mvi_n_tipomov, mvi_n_valor, mvi_d_fecha, mvi_c_maquina, mvi_c_transacao)
    VALUES(_vch_code, _int_wTipoMov, _dec_entrada, NOW(6), _vch_maquina, _vch_id);

    IF (_bit_Horas = 1)
    THEN
        SET _int_wDiasRestantes = ABS(TIMESTAMPDIFF(HOUR,CURDATE(),_dtm_wDias));
    ELSE
        SET _int_wDiasRestantes = ABS(DATEDIFF( _dtm_wdt, CURDATE()));
    END IF;

   SET _int_n = 20;
	SELECT IFNULL(_dec_wTotalEntrada, 0) AS totalentrada, IFNULL(_int_wDiasRestantes, 0) AS dias, _dtm_datageracao AS datageracao;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_i_wmexnewticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_i_wmexnewticket`(
	_vch_code               VARCHAR(8),
	_dec_entrada            DECIMAL(18,2),
	_int_tipomovimento      INT,		
	_vch_maquina            VARCHAR(16),
	_vch_id                 VARCHAR(21),
	_int_codecliente        INT
)
BEGIN

    DECLARE _int_n INT;
    DECLARE _int_promocao, _int_cortesia INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

    SET _int_promocao = 0;
    SET _int_cortesia = 0;

    IF (_int_tipomovimento = 15) 
    THEN 
        SET _int_promocao = 1;  
    END IF;
 
    IF (_int_tipomovimento = 5) 
    THEN
		SET _int_cortesia = 1;  
    END IF;

	SET _int_n = 4; 
    
    INSERT INTO cas_tck_mextickets(tck_c_code, tck_n_entrada, tck_n_salida, tck_n_saldo,  tck_n_activa, tck_n_blocked, tck_d_fecha,
    tck_n_actualdia, tck_c_maquina, tck_n_valorcredmaquina, tck_n_valorcredoper, tck_n_valordinmaquina, tck_n_valorentcaixa, tck_n_promocao,
    tck_n_cortesia,  tck_n_codecliente) 
    VALUES 
    (_vch_code, _dec_entrada, 0, _dec_entrada,   1, 0, NOW(6), 1, _vch_maquina, 0, 0, 0,
    _dec_entrada, _int_promocao, _int_cortesia,  _int_codecliente);
	
	SET _int_n = 8;
    INSERT INTO cas_mvi_mexmovimientos(mvi_c_code, mvi_n_tipomov, mvi_n_valor, mvi_d_fecha, mvi_c_maquina, mvi_c_transacao)
    VALUES (_vch_code, _int_tipomovimento, _dec_entrada, NOW(6), _vch_maquina, _vch_id);
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_associacaoatendentepos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_associacaoatendentepos`(
    _int_operacao	INT
)
BEGIN
    DECLARE _int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;


   IF (_int_operacao = 1)
	THEN
		SET _int_n = 1;
		SELECT cli_n_codigo AS codigoatendente, (cli_c_name + ' [' + cli_c_usuario ++ ']') AS nome,
			pos_n_codigo AS codigopos, pos_c_identificacao AS pos
			FROM cas_aap_associaatendentexpos INNER JOIN cas_cli_clientes ON cli_n_codigo = aap_n_codigoatendente
				INNER JOIN	cas_pos_pos ON pos_c_identificacao = aap_c_codigopos
			WHERE	pos_b_status = 1;
	
	ELSE
	
		SET _int_n = 2;
		SELECT cli_n_codigo AS codigoatendente, (cli_c_name + ' [' + cli_c_usuario + ']') AS nome,
			pos_n_codigo AS codigopos, pos_c_identificacao AS pos
		FROM cas_aap_associaatendentexpos INNER JOIN cas_cli_clientes ON cli_n_codigo = aap_n_codigoatendente
			INNER JOIN cas_pos_pos ON pos_c_identificacao = aap_c_codigopos
		WHERE pos_b_status = 1;
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_AtualizaMacAddressTerminal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_AtualizaMacAddressTerminal`(
    _vch_macadressantigo	VARCHAR(50),	
    _vch_macadressnovo VARCHAR(50)
)
BEGIN
    DECLARE _int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

    
	SET _int_n = 1;		
	UPDATE cas_mci_mexcierres SET mci_c_maquina = _vch_macadressnovo
	WHERE  mci_c_maquina = _vch_macadressantigo;
	
	
	SET _int_n = 2;
	UPDATE cas_mvi_mexmovimientos SET mvi_c_maquina = _vch_macadressnovo
	WHERE  mvi_c_maquina = _vch_macadressantigo;

	
	SET _int_n = 3;
	UPDATE cas_mvh_movimentoshist SET mvh_c_maquina = _vch_macadressnovo
	WHERE  mvh_c_maquina = _vch_macadressantigo;
	
	
	SET _int_n = 4;
	UPDATE cas_pgt_mexpgtomanuais SET pgt_c_maquina = _vch_macadressnovo
	WHERE  pgt_c_maquina = _vch_macadressantigo;
	
	
	SET _int_n = 5;
	UPDATE cas_stp_systemtype SET stp_c_maquina = _vch_macadressnovo
	WHERE  stp_c_maquina = _vch_macadressantigo;
		
	
	SET _int_n = 6;
	UPDATE cas_tck_mextickets SET tck_c_maquina = _vch_macadressnovo
	WHERE  tck_c_maquina = _vch_macadressantigo;
	
	
	SET _int_n = 7;
	UPDATE cas_tpr_mexticketspremios SET tpr_c_maquina = _vch_macadressnovo
	WHERE  tpr_c_maquina = _vch_macadressantigo;
	
	
	SET _int_n = 8;
	UPDATE cas_cpo_compro SET cpo_c_maquina = _vch_macadressnovo
	WHERE  cpo_c_maquina = _vch_macadressantigo;    
	
	
	SET _int_n = 9;
	UPDATE cas_tcm_ticketsexcluidos SET tcm_c_maquina = _vch_macadressnovo
	WHERE  tcm_c_maquina = _vch_macadressantigo;
	
	
	SET _int_n = 10;
	UPDATE card_crd_mexcierrescard SET crd_c_maquina = _vch_macadressnovo
	WHERE  crd_c_maquina = _vch_macadressantigo;
	
	
	SET _int_n = 11;
	UPDATE card_ctf_cartoesfidelidade SET ctf_c_maquina = _vch_macadressnovo
	WHERE  ctf_c_maquina = _vch_macadressantigo;
	
	
	SET _int_n = 12;
	UPDATE card_cpr_mexcartoespremios SET cpr_c_maquina = _vch_macadressnovo
	WHERE  cpr_c_maquina = _vch_macadressantigo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultaconsolidado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultaconsolidado`(
    _vch_datainicio	VARCHAR(10),	_vch_datafinal		VARCHAR(10)
	
)
BEGIN
    DECLARE _int_n INT;
    DECLARE _bit_fechamentoconsolidado TINYINT(1);
    DECLARE _int_widcasa INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    SELECT 
    prt_b_fechamentoconsolidado
    INTO  _bit_fechamentoconsolidado
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));

    SET _int_n = 6;
    SELECT fco_n_codigo As Codigo, 
    (SELECT MIN(mci_d_abertura) 
     FROM cas_mci_mexcierres 
     WHERE mci_n_codigoconsolidado = fco_n_codigo) AS dataabertura,
     fco_d_data AS DataFechamento,	
     cli_c_usuario AS Usuario
     FROM		cas_fco_fechamentoconsolidado
     INNER JOIN 	cas_cli_clientes
     ON	cli_n_codigo = fco_n_clicodigo
     WHERE	CAST(fco_d_data AS DATE) >= CAST(_vch_datainicio AS DATE) AND CAST(fco_d_data AS DATE) <= CAST(_vch_datafinal AS DATE)
     ORDER BY	fco_n_codigo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultacontroleacesso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultacontroleacesso`(
    _int_codidioma      INT,	
    _int_tipo           INT,	
    _int_codperfil      INT,	
    _int_systemtype     INT,	
    _int_cartao         TINYINT(1)			
)
BEGIN
    DECLARE _int_n INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    SELECT cta_n_codigo As codigo, cta_c_descricao As descricao, cta_c_comando As comando, cta_n_nivel As nivel, 
    cta_n_codnivel1 As codnivel1, cta_n_codnivel2 As codnivel2, cta_n_codnivel3 As codnivel3
    FROM cas_cta_controlacesso
    WHERE cta_n_codidioma = _int_codidioma
    AND cta_n_tipo = _int_tipo
    AND	cta_n_codperfil = _int_codperfil
    AND	cta_n_systemtype = _int_systemtype
    ORDER BY cta_n_codigo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultacotacaosemmoedacasa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultacotacaosemmoedacasa`(
   _int_codigomoeda	INT 
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
    RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    SELECT lc.lot_n_codmoeda As codmoeda, lc.lot_n_valor As valor, m.moe_c_descricao As descricao
    FROM cas_lot_locaiscotacoes lc INNER JOIN cas_moe_moedas m ON lc.lot_n_codmoeda = m.moe_n_codmoeda
    WHERE lot_n_codmoeda <> _int_codigomoeda
    AND lot_d_datacotacao = (SELECT MAX(lot_d_datacotacao) FROM cas_lot_locaiscotacoes WHERE lot_n_codmoeda = lc.lot_n_codmoeda);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultafechamentonaoconsolidado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultafechamentonaoconsolidado`(
   _vch_datainicio	VARCHAR(10), 
   _vch_datafinal	VARCHAR(10)
)
BEGIN
    DECLARE _int_n INT;
    DECLARE _bit_fechamentoconsolidado TINYINT(1);
    DECLARE _int_idcasa INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
    RESIGNAL SET MYSQL_ERRNO = int_n;
    END;
        
    SET _int_n = 1;
    SELECT prt_b_fechamentoconsolidado
    INTO  _bit_fechamentoconsolidado
    FROM 
    cas_prt_mexparametros
    WHERE 
    prt_d_datavigencia			= (SELECT MAX(prt_d_datavigencia)
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));

    IF _bit_fechamentoconsolidado = 0
    THEN
    CALL RaiseCustomError(259, null);
    END IF;

    SET _int_n = 3;

    SELECT 
    mci_n_codigo	AS Codigo, 
    mci_d_abertura AS DataAbertura, 
    mci_d_fecha	AS DataFechamento,	
    cli_c_usuario	AS Usuario
    FROM	cas_mci_mexcierres
    LEFT JOIN 	cas_cli_clientes
    ON	cli_n_codigo = mci_n_clicodigo
    WHERE	CAST(mci_d_fecha AS DATE) >= CAST(_vch_datainicio AS DATE) AND CAST(mci_d_fecha AS DATE) <= _vch_datafinal
    AND mci_n_codigoconsolidado = 0
    ORDER BY mci_n_codigo;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultapos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultapos`(
    _vch_identificacao	VARCHAR(16),	
    _int_intstatus	TINYINT(1)
)
BEGIN
    DECLARE _int_n INT;
    DECLARE _bit_status	TINYINT(1);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _bit_status = _int_intstatus;

    IF (_vch_identificacao = '')
    THEN
        IF (_int_intstatus = 3 )
        THEN
            SET _int_n = 1;
            SELECT  pos_n_codigo AS codigo, pos_c_identificacao AS identificacao, cast(pos_d_datainclusao as CHAR(10)) AS datainclusao,
            CASE pos_b_status
            WHEN 1 THEN 'Ativo'
            WHEN 0 THEN 'Inativo'
            END AS STATUS
            FROM cas_pos_pos 
            WHERE pos_b_status = 1
            ORDER BY pos_d_datainclusao DESC;

            ELSE
            SET _int_n = 2;
            SELECT  pos_n_codigo AS codigo, pos_c_identificacao AS identificacao, CAST(pos_d_datainclusao AS CHAR(10)) AS datainclusao,
            CASE pos_b_status
            WHEN 1 THEN 'Ativo'
            WHEN 0 THEN 'Inativo'
            END as STATUS
            FROM cas_pos_pos
            WHERE pos_b_status = _bit_status
            AND pos_c_identificacao NOT IN(SELECT aap_c_codigopos 
            FROM cas_aap_associaatendentexpos)
            ORDER BY pos_d_datainclusao DESC;
        END IF;
    ELSE
        SET _int_n = 3;
        SELECT pos_n_codigo AS codigo, pos_c_identificacao AS identificacao, CAST(pos_d_datainclusao AS CHAR(10)) AS datainclusao,
        CASE pos_b_status
        WHEN 1 THEN 'Ativo'
        WHEN 0 THEN 'Inativo'
        END AS STATUS
        FROM cas_pos_pos
        WHERE Upper(pos_c_identificacao) LIKE CONCAT('%',Upper(_vch_identificacao),'%')
        AND	pos_c_identificacao NOT IN (SELECT aap_c_codigopos 
        FROM cas_aap_associaatendentexpos)
        ORDER BY pos_d_datainclusao DESC;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultapromocaocortesia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultapromocaocortesia`(
    _int_tipo	INT,	
    _int_situacao	INT,	
    _vch_dataini	VARCHAR(10),	    
    _vch_datafim	VARCHAR(10)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
    RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_int_tipo = 1 AND _int_situacao = 1) 
    THEN
        SET _int_n = 1;
        SELECT his_c_numticket AS ticket, his_d_datainclusao AS data, (CAST(his_n_valor AS DECIMAL(18,2)) / 100) AS valor, cli_c_name AS usuario
        FROM cas_his_historicooperacao
        LEFT JOIN cas_cli_clientes ON
        cli_c_cpf = his_c_cpf
        WHERE his_n_codigooperacao = 29
        AND CAST(his_d_datainclusao AS DATE) >= CAST(_vch_dataini AS DATE)
        AND CAST(his_d_datainclusao AS DATE) <= CAST(_vch_datafim AS DATE)
        ORDER BY his_d_datainclusao;
    ELSE
        IF (_int_tipo = 1 AND _int_situacao = 2) 
        THEN
            SET _int_n = 2;
            SELECT his_c_numticket AS ticket, his_d_datainclusao AS data, (CAST(his_n_valor AS DECIMAL(18,2)) / 100) AS valor, cli_c_name AS usuario
            FROM cas_his_historicooperacao
            LEFT JOIN cas_cli_clientes ON
            cli_c_cpf = his_c_cpf
            WHERE his_n_codigooperacao = 4 
            AND CAST(his_d_datainclusao AS DATE) >= CAST(_vch_dataini AS DATE)
            AND CAST(his_d_datainclusao AS DATE) <= CAST(_vch_datafim AS DATE)
            AND his_c_numticket IN (SELECT his_c_numticket 
            FROM cas_his_historicooperacao
            WHERE his_n_codigooperacao = 29)
            ORDER BY his_d_datainclusao;
        ELSE
            IF (_int_tipo = 2 AND _int_situacao = 1) 
            THEN
                SET _int_n = 3;
                SELECT his_c_numticket AS ticket, his_d_datainclusao AS data, (CAST(his_n_valor AS DECIMAL(18,2)) / 100) AS valor, cli_c_name AS usuario
                FROM cas_his_historicooperacao
                LEFT JOIN cas_cli_clientes ON
                cli_c_cpf = his_c_cpf
                WHERE his_n_codigooperacao = 3
                AND CAST(his_d_datainclusao AS DATE) >= CAST(_vch_dataini AS DATE)
                AND CAST(his_d_datainclusao AS DATE) <= CAST(_vch_datafim AS DATE)
                ORDER BY his_d_datainclusao;
            ELSE
                IF (_int_tipo = 2 AND _int_situacao = 2) 
                THEN
                    SET _int_n = 4;
                    SELECT his_c_numticket AS ticket, his_d_datainclusao AS data, (CAST(his_n_valor AS DECIMAL(18,2)) / 100) AS valor, cli_c_name AS usuario
                    FROM cas_his_historicooperacao
                    LEFT JOIN cas_cli_clientes ON
                    cli_c_cpf = his_c_cpf
                    WHERE his_n_codigooperacao = 4
                    AND CAST(his_d_datainclusao AS DATE) >= CAST(_vch_dataini AS DATE)
                    AND CAST(his_d_datainclusao AS DATE) <= CAST(_vch_datafim AS DATE)
                    AND his_c_numticket IN (SELECT his_c_numticket
                    FROM cas_his_historicooperacao 
                    WHERE his_n_codigooperacao = 3 and CAST(his_d_datainclusao AS DATE) > CAST(_vch_dataini AS DATE))
                    ORDER BY his_d_datainclusao;
                END IF;
            END IF;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultarDetalheSessaoTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultarDetalheSessaoTicket`(
    _int_sec_Sessao INT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;

    SELECT sec_d_data, top_c_descricao,(CAST(mvi_n_valor AS DECIMAL(18,2)) / 100) As mvi_n_valor 
    FROM
    (SELECT m.mvh_d_fecha AS sec_d_data, tpo.top_c_descricao, m.mvh_n_valor As mvi_n_valor FROM cas_mvh_movimentoshist m inner join  cas_sec_secao s 
    ON m.mvh_n_secao= s.sec_n_id 
    INNER JOIN cas_top_tipooperacao tpo ON m.mvh_n_tipomov = tpo.top_n_codigo
    WHERE s.sec_n_id = _int_sec_Sessao
    UNION 
    SELECT  m.mvi_d_fecha AS sec_d_data, tpo.top_c_descricao, m.mvi_n_valor As mvi_n_valor FROM cas_mvi_mexmovimientos m inner join  cas_sec_secao s 
    ON  m.mvi_n_secao= s.sec_n_id 
    INNER JOIN cas_top_tipooperacao tpo ON m.mvi_n_tipomov = tpo.top_n_codigo
    WHERE s.sec_n_id = _int_sec_Sessao) a
    ORDER BY sec_d_data;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultarHistoricoEventos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultarHistoricoEventos`(
    _vhc_ip         VARCHAR(20),
    _int_modelo     INT,
    _vch_CpuNumber  VARCHAR(16)
)
BEGIN

   DECLARE _int_n INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

    SET _int_n = 1;

    IF ((_vhc_ip IS NOT NULL) AND (_int_modelo IS NOT NULL))
    THEN
        SELECT e.hem_d_data AS hem_d_data, e.hem_c_cpunumber as hem_c_cpunumber, e.hem_c_historico as Descricao
        FROM cas_hem_hist_eventos_maq e 
        INNER JOIN cas_mdl_mexmodelos md on e.hem_n_modelo = md.mdl_n_codigo
        WHERE e.hem_n_modelo = _int_modelo AND e.hem_c_ip = _vhc_ip
        ORDER BY e.hem_d_data;
    ELSE 
        SELECT e.hem_d_data AS hem_d_data, md.mdl_c_descricao as mdlmodelo, e.hem_c_ip as hem_c_ip, e.hem_c_historico as Descricao2
        FROM cas_hem_hist_eventos_maq e 
        INNER JOIN cas_mdl_mexmodelos md on e.hem_n_modelo = md.mdl_n_codigo
        WHERE hem_c_cpunumber = _vch_CpuNumber
        ORDER BY e.hem_d_data;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultasenhaatendente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultasenhaatendente`(
_int_coduser	        INT,	
_vch_senha	        VARCHAR(50),	
_int_operacao       INT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    IF ((_int_operacao = 0) AND
    NOT EXISTS(SELECT cli_n_codigo 
    FROM cas_cli_clientes 
    WHERE cli_n_codigo = _int_coduser
    AND cli_c_senha = _vch_senha))
    THEN
        CALL RaiseCustomError(8, null);
    END IF;

    IF (_int_operacao = 1)
    THEN
        SET _int_n = 3;
        UPDATE cas_cli_clientes 
        SET cli_c_senha = _vch_senha
        WHERE cli_n_codigo = _int_coduser;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultaterminaispendentes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultaterminaispendentes`(
    _vch_maquina	VARCHAR(16) 
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    CREATE TEMPORARY TABLE _exectemp
    (maquina VARCHAR(16), fechado TINYINT(1), vendas BIGINT);

    SET _int_n = 2;
    INSERT INTO _exectemp
    SELECT DISTINCT A.mvi_c_maquina, 0, 
    (SELECT SUM(mvi_n_valor) 
    FROM cas_mvi_mexmovimientos B 
    WHERE B.mvi_n_tipomov = 1 
    AND B.mvi_c_maquina = A.mvi_c_maquina) As Vendas
    FROM cas_mvi_mexmovimientos A 
    WHERE mvi_n_tipomov = 10
    AND mvi_c_maquina <> _vch_maquina;

    SET _int_n = 3;
    INSERT INTO _exectemp
    SELECT mci_c_maquina, 1, mci_n_entrada
    FROM cas_mci_mexcierres 
    WHERE CAST(mci_d_fecha AS DATE) = CAST(GetDate() AS DATE)
    AND mci_c_maquina <> _vch_maquina;

    SET _int_n = 4;
    SELECT maquina AS terminal, fechado AS fechado, vendas AS Vendas
    FROM _exectemp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_consultaultimocodigoacesso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_consultaultimocodigoacesso`()
BEGIN
    DECLARE _int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

    SET _int_n = 1;
    SELECT MAX(cta_n_codigo) AS max
    FROM cas_cta_controlacesso;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_datasticketpromocao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_datasticketpromocao`(
    _vch_datainicio	VARCHAR(10),	_vch_datafinal		VARCHAR(10), _bit_all	TINYINT(1)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_bit_all = 1)
    THEN
        SET _int_n = 1;
        SELECT dpr_d_data AS dpr_d_data
        FROM cas_dpr_dataspromo
        ORDER BY dpr_d_data ASC;
    ELSE
        SET _int_n = 2;
        SELECT dpr_d_data AS dpr_d_data
        FROM cas_dpr_dataspromo
        WHERE dpr_d_data >= CAST(_vch_datainicio AS DATE)
        AND dpr_d_data <= CAST(_vch_datafinal AS DATE)
        ORDER BY dpr_d_data ASC;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_emailmodalidade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_emailmodalidade`(
    _int_codmodalidade	INT,	_int_codmodalidade2	INT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    IF (_int_codmodalidade = 0)
    THEN
        SET _int_n = 1;
        SELECT ema_c_email AS email, ema_n_codigo AS codigo
        FROM cas_ema_email
        WHERE ema_n_codigo NOT IN(SELECT amo_n_codemail 
        FROM cas_amo_associamodalidadesemail
        WHERE amo_n_codmodalidade = _int_codmodalidade2);
    ELSE
        SET _int_n = 2;
        SELECT ema_c_email AS email, ema_n_codigo AS codigo
        FROM cas_ema_email
        WHERE ema_n_codigo IN (SELECT amo_n_codemail 
        FROM cas_amo_associamodalidadesemail
        WHERE amo_n_codmodalidade = _int_codmodalidade);
    END IF; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_emailspendentes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_emailspendentes`()
BEGIN
    DECLARE _int_n INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

    SET _int_n = 1;
    SELECT emp_n_codigo AS codigo, emp_c_caminhofechamento AS caminhofechamento, emp_c_caminhodetalhe AS caminhofechamentodetalhe,
    emp_c_caminhocontabil AS caminhocontabil, emp_c_caminhocontabilpdf AS caminhocontabilpdf, emp_c_caminhocontabilpgmanual AS caminhocontabilpgmanual,
    emp_c_caminhocontabilpgmanualpdf AS caminhocontabilpgmanualpdf, emp_n_codmodalidade AS modalidade, 
    emp_c_caminhoticketsinvalidos AS caminhoticketsinvalidos, emp_b_fechamentoconsolidado As consolidado
    FROM cas_emp_emailpendentes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_fechamentosporperiodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_fechamentosporperiodo`(
    _vch_dtinicial	VARCHAR(10),	
    _vch_dtfinal	VARCHAR(10)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = int_n;
    END;

    SET _int_n = 1;
    SELECT mci_n_codigo AS value,  DATE_FORMAT(mci_d_fecha,'%d/%m/%Y') + ' ' + DATE_FORMAT(mci_d_fecha,GET_FORMAT(TIME,'ISO'))+ 
    ' - ' + IFNULL(cli_c_usuario, '') AS descricao
    FROM cas_mci_mexcierres LEFT JOIN cas_cli_clientes ON cli_n_codigo = mci_n_clicodigo
    WHERE CAST(mci_d_fecha AS DATE) >= CAST(_vch_dtinicial AS DATE)
    AND	CAST(mci_d_fecha AS DATE) <= CAST(_vch_dtfinal AS DATE);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_gerencialoginterminal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_gerencialoginterminal`(
    _int_codigo		INT,	
    _int_operacao	INT,	
    _vch_maquina	VARCHAR(16)
)
BEGIN
DECLARE _int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

    IF (_int_operacao <> 0)
    THEN
		SET _int_n = 1;
		IF EXISTS(SELECT * FROM cas_mcl_mexcontrolelogin 
					WHERE mcl_n_codigo = _int_codigo LIMIT 1)
		THEN
			SET _int_n = 2;
			IF NOT EXISTS(SELECT * FROM cas_mcl_mexcontrolelogin 
							WHERE mcl_n_codigo = _int_codigo 
								AND mcl_c_maquina = _vch_maquina LIMIT 1)
			THEN
            CALL RaiseCustomError(220, null);
				
		END IF; 		
		ELSE
			SET _int_n = 4;
            INSERT INTO cas_mcl_mexcontrolelogin(mcl_n_codigo, mcl_c_maquina) VALUES(_int_codigo, _vch_maquina); 
		END IF; 

    ELSE
		SET _int_n = 5;
        DELETE FROM cas_mcl_mexcontrolelogin WHERE mcl_n_codigo = _int_codigo;
        DELETE FROM cas_mcu_mexcontroleusuario WHERE mcu_n_codigousuario = _int_codigo;


	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_listaCpuNumber` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_listaCpuNumber`()
BEGIN

    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;

    SELECT  hem_c_cpunumber AS cpuNumber FROM cas_hem_hist_eventos_maq 
    UNION 
    SELECT '' AS cpuNumber;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_listahisEventoIPModelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_listahisEventoIPModelo`(
    _int_modelo INT
)
BEGIN
    DECLARE _int_n INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;

    IF (_int_modelo is null)
    THEN
        SELECT  hem_n_modelo as Codigo, md.mdl_c_descricao as Descricao FROM cas_hem_hist_eventos_maq e 
        INNER JOIN cas_mdl_mexmodelos md on e.hem_n_modelo = md.mdl_n_codigo
        UNION
        SELECT 0 as Codigo, ' ' as Descricao;
    ELSE
        SELECT DISTINCT hem_c_ip as IP from cas_hem_hist_eventos_maq where hem_n_modelo = _int_modelo;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_listarassociacoesipcodigo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_listarassociacoesipcodigo`()
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    SELECT amn_c_ip AS ip, amn_n_modelo AS modelo, amn_c_codigo AS codigo, mdl_c_descricao AS descricao 
    FROM cas_amn_associaipmaquina INNER JOIN cas_mdl_mexmodelos ON	mdl_n_codigo = amn_n_modelo
    ORDER BY amn_c_ip ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_listaratendentes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_listaratendentes`(
   _int_codatendente	INT 
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    IF (_int_codatendente = 0)
    THEN
        SET _int_n = 1;
        SELECT cli_n_codigo AS value, (cli_c_name + ' [' + cli_c_usuario + ']') AS name
        FROM cas_cli_clientes
        WHERE cli_n_tipologin = 4
        AND cli_n_codigo NOT IN(SELECT aap_n_codigoatendente
        FROM cas_aap_associaatendentexpos);
    ELSE
        SET _int_n = 2;
        SELECT cli_n_codigo AS value, (cli_c_name + ' [' + cli_c_usuario + ']') AS name
        FROM cas_cli_clientes
        WHERE cli_n_tipologin = 4
        AND cli_n_codigo NOT IN(SELECT aap_n_codigoatendente 
        FROM cas_aap_associaatendentexpos
        WHERE aap_n_codigoatendente <> _int_codatendente);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_listaripmodelos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_listaripmodelos`(_bit_all	TINYINT(1))
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    CREATE TEMPORARY TABLE _exectemp
    (ip VARCHAR(50),codmodelo	INT);

    SET _int_n = 2	;
    INSERT INTO _exectemp SELECT DISTINCT mco_c_ip, mco_n_modelo FROM cas_mco_mexconta;

    IF (_bit_all = 0)
    THEN
        SET _int_n = 3;
        SELECT ip, codmodelo, mdl_c_descricao AS modelo, (ip + ' / ' + mdl_c_descricao) AS desccombo
        FROM _exectemp INNER JOIN cas_mdl_mexmodelos ON	codmodelo = mdl_n_codigo
        WHERE ip NOT IN(SELECT amn_c_ip FROM cas_amn_associaipmaquina)
        ORDER BY ip ASC, mdl_c_descricao ASC;
    ELSE
        SET _int_n = 4;
        SELECT ip, codmodelo, mdl_c_descricao AS modelo, (ip + ' / ' + mdl_c_descricao) AS desccombo
        FROM exectemp INNER JOIN cas_mdl_mexmodelos ON codmodelo = mdl_n_codigo
        ORDER BY ip ASC, mdl_c_descricao ASC;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_listarpos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_listarpos`(_vch_codpos	VARCHAR(16))
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    IF (_vch_codpos = '')
    THEN
        SET _int_n = 1;
        SELECT pos_n_codigo AS value, pos_c_identificacao AS name
        FROM cas_pos_pos
        WHERE pos_b_status = 1
        AND pos_c_identificacao NOT IN(SELECT aap_c_codigopos
                                        FROM cas_aap_associaatendentexpos);
    ELSE
        SET _int_n = 2;
        SELECT pos_n_codigo AS value, pos_c_identificacao AS name
        FROM cas_pos_pos
        WHERE pos_b_status = 1
        AND pos_c_identificacao NOT IN(SELECT aap_c_codigopos
        FROM cas_aap_associaatendentexpos
        WHERE aap_c_codigopos != _vch_codpos);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_listarposassociado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_listarposassociado`()
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    SELECT pos_n_codigo AS value, pos_c_identificacao AS name
    FROM cas_pos_pos
    WHERE pos_b_status = 1
    AND pos_c_identificacao IN (SELECT aap_c_codigopos
    FROM cas_aap_associaatendentexpos);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_listaSessaoIPModelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_listaSessaoIPModelo`()
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    IF (_int_modelo IS NULL)
    THEN
        SET _int_n = 1;
        SELECT DISTINCT md.mdl_n_codigo AS Codigo, md.mdl_c_descricao as Descricao
        FROM cas_mdl_mexmodelos md 
        INNER JOIN cas_sec_secao sec ON  md.mdl_n_codigo = sec.sec_n_modelo
        UNION
        SELECT 0 as Codigo, ' ' as Descricao;
    ELSE
        SET _int_n = 2; 
        SELECT DISTINCT sec_c_ip as IP FROM cas_sec_secao WHERE sec_n_modelo = _int_modelo;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_macaddressutilizados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_macaddressutilizados`(_vch_maquina  VARCHAR(50))
BEGIN
    DECLARE _int_n INT;
	
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;        
    SELECT 
    DISTINCT mci_c_maquina As his_c_maquina 
    FROM cas_mci_mexcierres 
    WHERE mci_c_maquina NOT LIKE _vch_maquina ORDER BY mci_c_maquina;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_maquinauso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_maquinauso`()
BEGIN
    DECLARE _vch_TextoAguardando	VARCHAR(50);
    DECLARE _vch_TextoJogando		VARCHAR(50);
    DECLARE _vch_TextoUltrapassou	VARCHAR(50);
    DECLARE _int_n                 INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;


    SET _int_n = 1;
    SELECT _vch_TextoAguardando = p_cas_c_resultadows(277);

    SET _int_n = 2;
    SELECT _vch_TextoJogando	= p_cas_c_resultadows(278);

    SET _int_n = 3;
    SELECT _vch_TextoUltrapassou = p_cas_c_resultadows(279);

    SET _int_n = 4;
    CREATE TEMPORARY TABLE _listaespera(
    codigo			INT  NOT NULL AUTO_INCREMENT,   
    ip				varchar(50),
    data				Datetime);

    SET _int_n = 5;
    INSERT _listaespera(
    ip,
    data)
    (
    SELECT ctr_c_ip,
    ctr_d_data
    FROM cas_ctr_controlejogadores
    WHERE ctr_n_status = 2
    );

    SET _int_n = 6;
    CREATE TEMPORARY TABLE _temp(
    IP		VARCHAR(50),
    Data		DATETIME,	
    Status   INT, 
    Posicao  INT
    );
    SET _int_n = 7;
    INSERT _temp(
    IP,	
    Data,
    Status,
    Posicao)
    (
    SELECT ctr_c_ip,
    ctr_d_data,
    ctr_n_status,
    0
    FROM cas_ctr_controlejogadores
    WHERE ctr_n_status <> 2
    );

    SET _int_n = 8;
    INSERT _temp(
    IP,	
    Data,
    Status,
    Posicao)
    (
    SELECT	IP,
    Data,
    2,
    codigo	
    FROM _listaespera
    );

    SET _int_n = 9;
    SELECT IP, 
           Data,
           CASE 
            WHEN Status = 0 THEN _vch_TextoAguardando
            WHEN Status = 1 THEN _vch_TextoJogando
            ELSE _vch_TextoUltrapassou END As Status,
            Posicao As Fila
    FROM _temp
    ORDER BY Status, Data; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_mexconsultaclientecontexto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_mexconsultaclientecontexto`(   _vch_user			VARCHAR(50),	
    _bit_trocarsenha	TINYINT(1),	
    _vch_senha			VARCHAR(50),	
    _vch_senhadesc		VARCHAR(8))
BEGIN

    DECLARE _int_n              INT;
    DECLARE _bit_senhaexpirada	TINYINT(1);
    DECLARE _bit_expirasenha	   TINYINT(1);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    IF (_bit_trocarsenha = 1)
    THEN
        SET _int_n = 1;
        UPDATE cas_cli_clientes SET cli_c_senha = _vch_senha, cli_c_digitado = _vch_senhadesc, cli_d_datasenha = CURDATE() 
        WHERE cli_c_usuario = _vch_user;
    END IF;

    SET _bit_senhaexpirada = 0;

    SET _int_n = 2;
    IF EXISTS(SELECT cli_c_cpf 
    FROM	cas_cli_clientes 
    WHERE cli_c_usuario = _vch_user)
    THEN
        SET _int_n = 3;
        SELECT  
        CASE 
        WHEN DATE_ADD(cli_d_datasenha, INTERVAL cli_n_diasenha DAY) < CURDATE()
        THEN 1
        ELSE 0
        END, 
        cli_b_expirasenha
        INTO _bit_senhaexpirada, _bit_expirasenha 
        FROM cas_cli_clientes
        WHERE cli_c_usuario = _vch_user;
    END IF;

    SET _int_n = 4;
    SELECT cli_n_codigo As codigo, cli_c_usuario As usuario, cli_c_senha As senha, cli_c_tipopessoa As tipopessoa, 
    cli_c_cpf As cpf, cli_c_name As name, cli_c_nickname As nickname, 
    cli_c_street As street, cli_c_streetnum As streetnum, cli_c_complemento As complemento, cli_c_zona As zona, 
    cli_c_city As city, cli_c_state As state, cli_c_postalcode As postalcode, cli_c_birthday As birthday, cli_c_sex As sex, 
    cli_c_civilstate As civilstate, cli_c_profesion As profesion, cli_c_email As email, cli_c_codtelefon As codtelefon,
    cli_c_telefon As telefon, cli_c_codtelcelular As codtelcelular, cli_c_telcelular As telcelular, 
    cli_c_codtelcomercial As codtelcomercial, cli_c_telcomercial As telcomercial, cli_c_codfax As codfax, cli_c_fax As fax, 
    cli_c_lastfrombankerid As lastfrombankerid, cli_c_lastfromnumerocartao As lastfromnumerocartao, cli_c_rg As rg,	
    cli_c_clientedesde As clientedesde, cli_n_situacao As situacao, cli_n_creditosjogados As creditosjogados, 
    cli_n_pontos As pontos, cli_n_pontosusados As pontosusados, cli_c_data As data, cli_n_bloqueado As bloqueado,
    (SELECT	mcu_n_numerotentativa 
    FROM cas_mcu_mexcontroleusuario 
    WHERE mcu_n_codigousuario = cli_n_codigo
    AND	CAST(mcu_d_dataoperacao as date) = CAST(CURDATE() as date)) AS numerotentativa,
    _bit_senhaexpirada AS senhaexpirada
    FROM cas_cli_clientes
    WHERE cli_c_usuario = _vch_user;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_mexconsultadeducoesticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_mexconsultadeducoesticket`()
BEGIN
DECLARE _int_n INT;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN 
    RESIGNAL SET MYSQL_ERRNO = _int_n;
END;

SET _int_n = 1;
SELECT tpr_c_code AS code, (CAST(tpr_n_premio AS DECIMAL(18,2)) / 100) AS premio, tpr_d_fechacierre AS fechacierre, 
(CAST(tpr_n_imposto AS DECIMAL(18,2)) / 100) AS imposto
FROM cas_tpr_mexticketspremios
WHERE tpr_c_maquina = _vch_Maquina
AND 	CAST(tpr_d_fechacierre AS DATE) >= CAST(_vch_DataIni AS DATE)
AND	CAST(tpr_d_fechacierre As Date) <= CAST(_vch_DataFim AS DATE) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_mexcontrolelogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_mexcontrolelogin`(_int_codigo	INT,	_int_operacao	INT)
BEGIN
    DECLARE _int_TotLog         INT;
    DECLARE _sys_name           VARCHAR(128);
    DECLARE _sys_host           VARCHAR(128);
    DECLARE _vch_tmpstr         VARCHAR(2000);
    DECLARE _qry                VARCHAR(2000);
    DECLARE done                INT DEFAULT FALSE;

    DECLARE _int_n INT;

    DECLARE login_cursor CURSOR FOR
    SELECT user, host from mysql.user
    WHERE user not in
    ('root', ' ');

    -- Tratamento de Erros
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    SET _int_n = 1;

    DELETE FROM cas_mcu_mexcontroleusuario 
    WHERE CAST(mcu_d_dataoperacao AS DATE) <= CAST(DATE_SUB(CURDATE(), INTERVAL 1 day) AS DATE);
    -- INSERCAO USUARIO / REGISTRO TENTATIVAS
    IF (_int_operacao = 1)
    THEN
        SET _int_n = 2;
        IF EXISTS(SELECT mcu_n_codigousuario
        FROM cas_mcu_mexcontroleusuario
        WHERE mcu_n_codigousuario = _int_codigo
        AND CAST(mcu_d_dataoperacao AS DATE) = CAST(CURDATE() AS DATE))
        THEN
            SET _int_n = 4;
            UPDATE cas_mcu_mexcontroleusuario SET mcu_n_numerotentativa = mcu_n_numerotentativa + 1
            WHERE mcu_n_codigousuario = _int_codigo;

            SET _int_n = 5;

            SELECT mcu_n_numerotentativa
            INTO _int_TotLog 
            FROM cas_mcu_mexcontroleusuario
            WHERE mcu_n_codigousuario = _int_codigo
            AND	CAST(mcu_d_dataoperacao as date) = CAST(CURDATE() as date);

            SET _int_n = 6;
            IF (_int_TotLog >= 3) 
            THEN
                UPDATE cas_cli_clientes SET cli_n_bloqueado = 1 WHERE cli_n_codigo = _int_codigo;
            END IF;
        ELSE 
            SET _int_n = 8;
            INSERT INTO cas_mcu_mexcontroleusuario(mcu_n_codigousuario, mcu_n_numerotentativa) VALUES(_int_codigo, 1);
        END IF;
    END IF;

    -- Bloqueio automático do usuário em cas_cli_clientes
    IF (_int_operacao = 3)
    THEN
        SET _int_n = 9;
        UPDATE cas_cli_clientes SET cli_n_bloqueado = 1 WHERE cli_n_codigo = _int_codigo;
    END IF;

    -- Desbloqueio do usuario/ remoção seu registro em cas_mcu_mexcontroleusuario
    IF (_int_operacao = 2)
    THEN
    SET _int_n = 11;
        DELETE FROM cas_mcu_mexcontroleusuario WHERE mcu_n_codigousuario = _int_codigo;
        SET _int_n = 12;
        UPDATE cas_cli_clientes SET cli_n_bloqueado = 0 WHERE cli_n_codigo = _int_codigo;
    END IF;

    SET _int_n = 15;
    OPEN login_cursor;

    read_loop: LOOP
    FETCH login_cursor INTO _sys_name, _sys_host;
    IF done THEN
    LEAVE read_loop;
    END IF;

    -- Drop not expected user
    IF(_sys_host = '%') 
    THEN
    SET @stm_revoke = CONCAT('REVOKE ALL PRIVILEGES ON ticket.* FROM ',_sys_name,';');                  
    SET @stm_drop = CONCAT('DROP USER ',_sys_name,';');             
    ELSE
    SET @stm_revoke = CONCAT('REVOKE ALL PRIVILEGES ON ticket.* FROM ',_sys_name,'@',_sys_host,';'); 
    SET @stm_drop = CONCAT('DROP USER ',_sys_name,'@',_sys_host,';'); 
    END IF;

    SET _int_n = 16;
    -- Revoke Privileges from a not expected useR      
    PREPARE stmt_revoke FROM @stm_revoke; 
    EXECUTE stmt_revoke; 
    DEALLOCATE PREPARE stmt_revoke;

    SET _int_n = 17;

    PREPARE stmt_drop FROM @stm_drop; 
    EXECUTE stmt_drop; 
    DEALLOCATE PREPARE stmt_drop;

    END LOOP;

    SET _int_n = 19;
    CLOSE login_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_mexmodalidades` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_mexmodalidades`(
    _int_codmodalidade	INT, _vch_descricao	VARCHAR(50)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
    RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    IF (_int_codmodalidade = 0 AND _vch_descricao = '') 
    THEN
        SET _int_n = 1;
        SELECT mod_n_codigo AS codigo, mod_c_descricao AS descricao
        FROM cas_mod_modalidades
        ORDER BY mod_c_descricao ASC;
    END IF;

    IF (_int_codmodalidade > 0 AND _vch_descricao = '') 
    THEN
        SET _int_n = 2;
        SELECT mod_n_codigo AS codigo, mod_c_descricao AS descricao
        FROM cas_mod_modalidades
        WHERE mod_n_codigo = _int_codmodalidade
        ORDER BY mod_c_descricao ASC;
    END IF;

    IF (_int_codmodalidade = 0 AND _vch_descricao <> '')
    THEN
        SET _int_n = 3;	
        SELECT mod_n_codigo AS codigo, mod_c_descricao AS descricao
        FROM cas_mod_modalidades
        WHERE UPPER(mod_c_descricao) LIKE CONCAT('%',UPPER(_vch_descricao),'%')
        ORDER BY mod_c_descricao ASC;
    END IF;

    IF (_int_codmodalidade > 0 AND _vch_descricao <> '')
    THEN
        SET _int_n = 4;
        SELECT mod_n_codigo AS codigo, mod_c_descricao AS descricao
        FROM cas_mod_modalidades
        WHERE UPPER(mod_c_descricao) LIKE CONCAT('%',UPPER(_vch_descricao),'%')
        AND	mod_n_codigo = _int_codmodalidade
        ORDER BY mod_c_descricao ASC;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_mexmodelos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_mexmodelos`(
   _int_codmodelo	INT,	_vch_descricao	VARCHAR(50)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    IF (_int_codmodelo = 0 AND _vch_descricao = '') 
    THEN
        SET _int_n = 1;
        SELECT mdl_n_codigo AS codigo, mdl_c_descricao AS descricao, mdl_d_datainclusao AS data, mod_c_descricao AS Modalidade,
        mod_n_codigo AS CodModalidade, pfb_n_codigo AS codfabricante, pfb_c_descricao AS fabricante
        FROM cas_mdl_mexmodelos LEFT JOIN cas_mod_modalidades ON mdl_n_codmodalidade = mod_n_codigo
        LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
        ORDER BY mdl_c_descricao ASC;
    END IF;

    IF (_int_codmodelo > 0 AND _vch_descricao = '') 
    THEN
        SET _int_n = 2;
        SELECT mdl_n_codigo AS codigo, mdl_c_descricao AS descricao, mdl_d_datainclusao AS data, mod_c_descricao AS Modalidade,
        mod_n_codigo AS CodModalidade, pfb_n_codigo AS codfabricante, pfb_c_descricao AS fabricante
        FROM cas_mdl_mexmodelos LEFT JOIN cas_mod_modalidades ON mdl_n_codmodalidade = mod_n_codigo
        LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
        WHERE mdl_n_codigo = _int_codmodelo
        ORDER BY mdl_c_descricao ASC;
    END IF;

    IF (_int_codmodelo = 0 AND _vch_descricao <> '') 
    THEN
        SET _int_n = 3;
        SELECT mdl_n_codigo AS codigo, mdl_c_descricao AS descricao, mdl_d_datainclusao AS data, mod_c_descricao AS Modalidade,
        mod_n_codigo AS CodModalidade, pfb_n_codigo AS codfabricante, pfb_c_descricao AS fabricante
        FROM cas_mdl_mexmodelos	LEFT JOIN cas_mod_modalidades ON mdl_n_codmodalidade = mod_n_codigo
        LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
        WHERE UPPER(mdl_c_descricao) LIKE CONCAT('%',UPPER(_vch_descricao),'%')
        ORDER BY mdl_c_descricao ASC;
    END IF;

    IF (_int_codmodelo > 0 AND _vch_descricao <> '') 
    THEN
        SET _int_n = 4;
        SELECT mdl_n_codigo AS codigo, mdl_c_descricao AS descricao, mdl_d_datainclusao AS data, mod_c_descricao AS Modalidade,
        mod_n_codigo AS CodModalidade, pfb_n_codigo AS codfabricante, pfb_c_descricao AS fabricante
        FROM cas_mdl_mexmodelos LEFT JOIN cas_mod_modalidades ON mdl_n_codmodalidade = mod_n_codigo
        LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
        WHERE UPPER(mdl_c_descricao) LIKE CONCAT('%',UPPER(_vch_descricao),'%')
        AND	mdl_n_codigo = _int_codmodelo
        ORDER BY mdl_c_descricao ASC;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_modalidades` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_modalidades`(
    
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    SELECT mod_n_codigo As codigo, mod_c_descricao As modalidade
    FROM cas_mod_modalidades
    ORDER BY mod_c_descricao;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_modelos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_modelos`(
    _int_codmodalidade	INT,	_int_codfabricante	INT
)
BEGIN

    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    IF (_int_codmodalidade = -1
    AND  _int_codfabricante = -1)  
    THEN
        SET _int_n = 1;
        SELECT DISTINCT mdl_n_codigo AS codigo, mdl_c_descricao AS modelo
        FROM cas_mdl_mexmodelos INNER JOIN cas_mco_mexconta	ON mco_n_modelo = mdl_n_codigo;
    ELSE
        IF (_int_codmodalidade > 0
        AND _int_codfabricante = -1)
        THEN
            SET _int_n = 2;
            SELECT DISTINCT mdl_n_codigo AS codigo, mdl_c_descricao AS modelo
            FROM cas_mdl_mexmodelos INNER JOIN cas_mco_mexconta ON mco_n_modelo = mdl_n_codigo
            WHERE mdl_n_codmodalidade = _int_codmodalidade;
        ELSE
            IF (_int_codmodalidade = -1
            AND _int_codfabricante > 0)
            THEN
                SET _int_n = 3;
                SELECT DISTINCT mdl_n_codigo AS codigo, mdl_c_descricao AS modelo
                FROM cas_mdl_mexmodelos INNER JOIN cas_mco_mexconta ON mco_n_modelo = mdl_n_codigo
                WHERE mdl_n_codfabricante = _int_codfabricante;
            ELSE
                SET _int_n = 4;
                SELECT DISTINCT mdl_n_codigo AS codigo, mdl_c_descricao AS modelo
                FROM cas_mdl_mexmodelos INNER JOIN cas_mco_mexconta ON mco_n_modelo = mdl_n_codigo
                WHERE mdl_n_codfabricante = _int_codfabricante
                AND mdl_n_codmodalidade = _int_codmodalidade ;
            END IF;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_operacoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_operacoes`(
    _int_idioma		int
)
BEGIN
    DECLARE _int_n INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

    	SET _int_n = 1;
      SELECT ope_c_descricao AS descricao, ope_n_codigo AS value
		FROM cas_ope_operacoes
		WHERE ope_n_idioma = _int_idioma
		ORDER BY ope_n_codigo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_ticketsbloqueados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_ticketsbloqueados`(
      _vch_DtInicio	VARCHAR(8),   _vch_DtFinal	VARCHAR(8)
)
BEGIN
    DECLARE _int_n    INT;    
    DECLARE _int_code   VARCHAR(10);
    DECLARE _vch_maquina    VARCHAR(50);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    CREATE TEMPORARY TABLE _movimentos(
    ticket VARCHAR(8),
    data	 DATETIME,
    ip	 VARCHAR(20));

    SET _int_n = 2;
    INSERT _movimentos(
    ticket,
    data,
    ip)
    (
        SELECT mvi_c_code, null, null
        FROM cas_mvi_mexmovimientos
        WHERE mvi_n_tipomov = 4
        AND mvi_d_fecha >= CAST(_vch_DtInicio AS DATE) 
        AND mvi_d_fecha < DATE_ADD(CAST(_vch_DtFinal AS DATE), INTERVAL 1 DAY)
    );

    INSERT _movimentos(
    ticket,
    data,
    ip)
    (
        SELECT mvh_c_code, null, null
        FROM cas_mvh_movimentoshist 
        WHERE mvh_n_tipomov = 4
        AND mvh_d_fecha >= CAST(_vch_DtInicio AS DATE) 
        AND mvh_d_fecha < DATE_ADD(CAST(_vch_DtFinal AS DATE), INTERVAL 1 DAY)
    );

    SET _int_n = 3;
    UPDATE _movimentos SET data = (SELECT MAX(mvi_d_fecha) 
    FROM ( SELECT mvi_c_code, mvi_d_fecha
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 4
    AND mvi_d_fecha >=  CAST(_vch_DtInicio AS DATE) 
    AND mvi_d_fecha <   DATE_ADD(CAST(_vch_DtFinal AS DATE), INTERVAL 1 DAY)
    AND mvi_c_code = ticket
    UNION
    SELECT mvh_c_code, mvh_d_fecha
    FROM cas_mvh_movimentoshist 
    WHERE mvh_n_tipomov = 4
    AND mvh_d_fecha >=  CAST(_vch_DtInicio AS DATE) 
    AND mvh_d_fecha <   DATE_ADD(CAST(_vch_DtFinal AS DATE), INTERVAL 1 DAY)
    AND mvh_c_code =	ticket) AS Data);

    SET _int_n = 4;
    UPDATE _movimentos SET ip = (SELECT mvi_c_ip			
    FROM(SELECT mvi_c_code,mvi_c_ip,mvi_d_fecha
    FROM cas_mvi_mexmovimientos
    WHERE mvi_n_tipomov = 4
    AND mvi_c_code = ticket
    AND mvi_d_fecha = data
    UNION
    SELECT mvh_c_code, mvh_c_ip, mvh_d_fecha
    FROM cas_mvh_movimentoshist 
    WHERE mvh_n_tipomov = 4
    AND mvh_c_code = ticket
    AND mvh_d_fecha = data) AS Data);

    SET _int_n = 5;
    SELECT  tck.tck_c_code AS NumTicket,
    tck.tck_n_entrada As Entrada,
    tck.tck_n_saldo As Saldo,
    tck.tck_d_fecha DataCriacao,
    IFNULL(mov.ip, '') As IpMaquina,
    tck_c_maquina As MacAddress,
    MAX(IFNULL(mov.data, null)) as HoraInseriu,
    cli.cli_c_name As CriouTicket
    FROM  cas_tck_mextickets as tck
    LEFT JOIN _movimentos as mov on  
    mov.ticket = tck.tck_c_code 
    INNER JOIN cas_his_historicooperacao as his	on  
    his.his_c_numticket = tck.tck_c_code 
    and his_n_codigooperacao = 1 
    and his_d_datainclusao >=  CAST(_vch_DtInicio AS DATE)
    and his_d_datainclusao < DATE_ADD(CAST(_vch_DtFinal AS DATE), INTERVAL 1 DAY)
    INNER JOIN cas_cli_clientes as cli	on  
    cli.cli_c_cpf = his.his_c_cpf
    WHERE tck.tck_d_fecha >=  CAST(_vch_DtInicio AS DATE) 
    and tck_n_activa = 1 
    and tck.tck_n_blocked = 1
    GROUP BY
    tck.tck_c_code,
    tck.tck_n_entrada,
    tck.tck_n_saldo,
    tck.tck_d_fecha,
    mov.ip,
    tck_c_maquina,
    cli.cli_c_name
    ORDER BY tck.tck_c_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_ticketsnaoutilizados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_ticketsnaoutilizados`(
    _vch_dtinicio	VARCHAR(8),	
    _vch_dtfinal	VARCHAR(8)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    IF (_vch_dtinicio = '' or _vch_dtinicio IS NULL) 
    THEN
        SET _vch_dtinicio = '19000101';

        IF (_vch_dtfinal = '' or _vch_dtfinal IS NULL) 
        THEN 
            SET _vch_dtfinal = '21000101';

            SET _int_n = 1;
            SELECT 
            tck_c_code			AS ticket,		
            (tck_n_entrada	/ 100)	AS deposito, 
            (tck_n_saldo	/ 100)	AS saldo,
            tck_d_fecha			AS datageracao,
            cli_c_name			AS usuariogerador,
            tck_c_maquina			AS maquina
            FROM cas_tck_mextickets
            LEFT JOIN cas_cli_clientes ON 
            cli_n_codigo = tck_n_codecliente
            LEFT JOIN cas_mco_mexconta ON
            tck_c_code   = mco_c_code
            WHERE tck_n_entrada = tck_n_saldo
            AND CAST(tck_d_fecha AS DATE) >= CAST(_vch_dtinicio AS DATE)
            AND CAST(tck_d_fecha AS DATE) <= CAST(_vch_dtfinal  AS DATE)
            AND mco_c_code IS NULL;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_ticketsporusuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_ticketsporusuario`(
_vch_dtinicio           VARCHAR(8),		
_vch_dtfinal            VARCHAR(8),		
_vch_statusticket       VARCHAR(50),	
_vch_ativo              VARCHAR(50),	
_vch_fechado            VARCHAR(50),	
_vch_bloqueado          VARCHAR(50),
_int_codeusuario        INT
)
BEGIN

   DECLARE _int_n INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;


    IF (_vch_dtinicio = '' or _vch_dtinicio IS NULL) 
	 THEN SET _vch_dtinicio = '19000101';
    END IF;

	IF (_vch_dtfinal = '' or _vch_dtfinal IS NULL) 
	THEN SET _vch_dtfinal = '21000101';
   END IF;

	IF (_vch_statusticket = 'Todos')
	THEN SET _vch_statusticket = NULL;
   END IF;

	SET _int_n = 1;
	CREATE TABLE _exectemp(tck_c_code		VARCHAR(8),		tck_n_entrada		INT,	tck_n_saldo		INT,		tck_d_fecha		DATETIME,
					   tck_d_fechacierre	DATETIME,		tck_n_salida		INT,	tck_c_maquina	VARCHAR (50),  tck_n_usuario	INT,	
					   tck_c_usuario		VARCHAR(100),	tck_c_statusticket	VARCHAR (50));

	SET _int_n = 2;
	INSERT INTO _exectemp(tck_c_code,tck_n_entrada,tck_n_saldo,tck_d_fecha,tck_d_fechacierre,tck_n_salida,tck_n_usuario,
					tck_c_usuario,tck_c_maquina,tck_c_statusticket)
	SELECT 
		IFNULL(tck_c_code, '')						AS tck_c_code,			
		(CAST(IFNULL(tck_n_entrada, 0) AS DECIMAL(18,2)) / 100) AS tck_n_entrada,		
		(CAST(IFNULL(tck_n_saldo, 0) AS DECIMAL(18,2)) / 100)	AS tck_n_saldo,		
		tck_d_fecha									AS tck_d_fecha,		
		tck_d_fechacierre							AS tck_d_fechacierre,	
		(CAST(IFNULL(tck_n_salida, 0) AS DECIMAL(18,2)) / 100)	AS tck_n_salida,		
		cli_n_codigo								AS tck_n_usuario,
		cli_c_name									AS tck_c_usuario,
		tck_c_maquina								AS tck_c_maquina,
		CASE		
			WHEN tck_n_activa = 1 AND tck_n_blocked = 0 THEN _vch_ativo
			WHEN tck_n_activa = 1 AND tck_n_blocked = 1 THEN _vch_bloqueado
			ELSE _vch_fechado
		END										AS tck_c_statusticket
	FROM cas_tck_mextickets
		LEFT JOIN cas_cli_clientes ON
			tck_n_codecliente = cli_n_codigo
	WHERE tck_d_fecha	>= CAST(_vch_dtinicio AS DATE)
	  AND tck_d_fecha	<  DATE_ADD(CAST(_vch_dtfinal  AS DATE), INTERVAL 1 DAY);

	IF (_int_codeusuario IS NULL OR _int_codeusuario = 0) 
    THEN 	
            SET _int_n = 3;
            SELECT tck_c_code,		
                  tck_n_entrada,	
                  tck_n_saldo,		
                  tck_d_fecha,		
                  tck_d_fechacierre,
                  tck_n_salida,		
                  tck_c_usuario,	
                  tck_c_maquina,	
                  tck_c_statusticket
            FROM _exectemp
            WHERE tck_c_statusticket = IFNULL(_vch_statusticket, tck_c_statusticket);
    ELSE
            SELECT tck_c_code,		
                  tck_n_entrada,	
                  tck_n_saldo,		
                  tck_d_fecha,		
                  tck_d_fechacierre,
                  tck_n_salida,		
                  tck_c_usuario,	
                  tck_c_maquina,	
                  tck_c_statusticket
            FROM _exectemp
            WHERE tck_c_statusticket = IFNULL(_vch_statusticket, tck_c_statusticket)
              AND tck_n_usuario		 = _int_codeusuario;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_usuarios`(_int_login INT)
BEGIN

    DECLARE  _int_hierarquia, _int_tipologinlogado INT;
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SELECT IFNULL(cli_n_tipologin, 2) 
    INTO _int_tipologinlogado 
    FROM cas_cli_clientes 
    WHERE cli_n_codigo = _int_login;

    SET _int_n = 1;

    CREATE TEMPORARY TABLE _tablehierarquia(tipologin	INT,
    hierarquia	INT);

    INSERT INTO _tablehierarquia (tipologin, hierarquia) VALUES (2, 1);
    INSERT INTO _tablehierarquia (tipologin, hierarquia) VALUES (8, 2);
    INSERT INTO _tablehierarquia (tipologin, hierarquia) VALUES (6, 3);
    INSERT INTO _tablehierarquia (tipologin, hierarquia) VALUES (7, 4);
    INSERT INTO _tablehierarquia (tipologin, hierarquia) VALUES (1, 5);
    INSERT INTO _tablehierarquia (tipologin, hierarquia) VALUES (5, 6);
    INSERT INTO _tablehierarquia (tipologin, hierarquia) VALUES (3, 7);

    SET _int_n = 2;
    CREATE TEMPORARY TABLE _tableuser(
    codigo	INT,
    name	VARCHAR(100),
    tipologin INT);

    SET _int_n = 3;
    INSERT INTO _tableuser (codigo, name, tipologin) values (0, 'Todos', NULL);	

    SET _int_n = 4;
    INSERT INTO _tableuser 
    SELECT  cli_n_codigo, cli_c_usuario, cli_n_tipologin
    FROM cas_cli_clientes
    ORDER BY cli_c_name;

    SET _int_n = 5;
    SELECT t1.codigo, t1.name
    FROM _tableuser t1
    LEFT join _tablehierarquia t2 ON
    t1.tipologin = t2.tipologin
    WHERE t2.hierarquia >= (SELECT t3.hierarquia FROM _tablehierarquia t3 WHERE t3.tipologin = _int_tipologinlogado)
    OR t2.hierarquia IS NULL
    ORDER BY 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_verificarcabecalho` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_verificarcabecalho`()
BEGIN

    DECLARE _int_n              INT;
    DECLARE _bit_wcabecalho     TINYINT(1);
    DECLARE _bit_wrodape        TINYINT(1);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    CREATE TEMPORARY TABLE _Tmp_Ret (
    bit_wcabecalho		TINYINT(1),
    bit_wrodape			TINYINT(1)
    );
    SET _int_n = 3;

    SET _bit_wcabecalho = 1;	
    SELECT 
    CASE 
    WHEN msw_c_cabnomecasa IS NULL THEN 0
    WHEN msw_c_cabnomecasa = '0' THEN 0
    ELSE 1
    END
    INTO _bit_wcabecalho 
    FROM cas_msw_mensagem LIMIT 1;

    IF (_bit_wcabecalho <> 0 ) THEN
    SELECT 
    CASE 
    WHEN msw_c_cablinha1 IS NULL THEN 0
    WHEN msw_c_cablinha1 = '0' THEN 0
    ELSE 1
    END
    INTO _bit_wcabecalho 
    FROM cas_msw_mensagem LIMIT 1;
    END IF;

    UPDATE _Tmp_Ret SET bit_wcabecalho = _bit_wcabecalho;

    SET _int_n = 4;

    SELECT 
    CASE 
    WHEN msw_c_relinfo1 IS NULL THEN 0
    WHEN msw_c_relinfo1 = '0' THEN 0
    ELSE 1
    END
    INTO _bit_wrodape 
    FROM cas_msw_mensagem LIMIT 1;

    UPDATE _Tmp_Ret SET bit_wrodape = _bit_wrodape;

    SET _int_n = 5;
    SELECT bit_wcabecalho, bit_wrodape
    FROM  _Tmp_Ret;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wconsultabilhetes01` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wconsultabilhetes01`(
   _dtm_DataInicial			DATETIME,
   _dtm_DataFinal				DATETIME,
	_int_Pais					   INT
)
BEGIN
    
   DECLARE _int_n INT;

   DECLARE _NOTA1 VARCHAR(50);
	DECLARE _NOTA2 VARCHAR(50);
   DECLARE _NOTA3 VARCHAR(50);	
	DECLARE _NOTA4 VARCHAR(50);    
	DECLARE _NOTA5 VARCHAR(50);	
	DECLARE _NOTA6 VARCHAR(50);	
	DECLARE _NOTA7 VARCHAR(50);	
	DECLARE _COMANDO VARCHAR(800);

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

   SET _int_n = 1;

	SELECT  IFNULL(dno_c_nota1, 'nd') INTO _NOTA1 FROM cas_dno_notas_paises WHERE dno_n_pais_id = _int_Pais   LIMIT 1;
	SELECT  IFNULL(dno_c_nota2, 'nd') INTO _NOTA2 FROM cas_dno_notas_paises WHERE dno_n_pais_id = _int_Pais	LIMIT 1;
	SELECT  IFNULL(dno_c_nota3, 'nd') INTO _NOTA3 FROM cas_dno_notas_paises WHERE dno_n_pais_id = _int_Pais	LIMIT 1;
	SELECT  IFNULL(dno_c_nota4, 'nd') INTO _NOTA4 FROM cas_dno_notas_paises WHERE dno_n_pais_id = _int_Pais	LIMIT 1;			
	SELECT  IFNULL(dno_c_nota5, 'nd') INTO _NOTA5 FROM cas_dno_notas_paises WHERE dno_n_pais_id = _int_Pais	LIMIT 1;				
	SELECT  IFNULL(dno_c_nota6, 'nd') INTO _NOTA6 FROM cas_dno_notas_paises WHERE dno_n_pais_id = _int_Pais	LIMIT 1;					
	SELECT  IFNULL(dno_c_nota7, 'nd') INTO _NOTA7 FROM cas_dno_notas_paises WHERE dno_n_pais_id = _int_Pais	LIMIT 1;						

    SET _int_n = 2;

    SELECT M.mdl_c_descricao As NomeJogo, P.cbi_c_ip As Ip, IFNULL(SUM(P.cbi_n_bilhete1), 0) AS NOTA1
    ,IFNULL(SUM(P.cbi_n_bilhete2), 0) AS Nota2
    ,IFNULL(SUM(P.cbi_n_bilhete3), 0) AS Nota3
    ,IFNULL(SUM(P.cbi_n_bilhete4), 0) AS Nota4
    ,IFNULL(SUM(P.cbi_n_bilhete5), 0) AS Nota5
    ,IFNULL(SUM(P.cbi_n_bilhete6), 0) AS Nota6
    ,IFNULL(SUM(P.cbi_n_bilhete7), 0) AS Nota7
    ,_NOTA1 As DescNota1
    ,_NOTA2 As DescNota2	 
    ,_NOTA3 As DescNota3	 	 
    ,_NOTA4 As DescNota4	 	 	 
    ,_NOTA5 As DescNota5	 	 	 	 
    ,_NOTA6 As DescNota6
    ,_NOTA7 As DescNota7	 	 	 	 	 	 	 	 	 	 
    FROM cas_cbi_contabilhetes P  
    INNER JOIN cas_mdl_mexmodelos M ON mdl_n_codigo = cbi_n_modelo  
    WHERE P.cbi_d_data >=  _dtm_DataInicial  AND P.cbi_d_data <=  _dtm_DataFinal
    GROUP BY M.mdl_c_descricao, P.cbi_c_ip  
    ORDER BY M.mdl_c_descricao, P.cbi_c_ip;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wconsultacontabilidade02` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wconsultacontabilidade02`(
    _tim_Hora_Abertura      TIME, 
    _tim_Hora_Fechamento    TIME,
	 _dt_DateProc            DATE
)
BEGIN
   DECLARE _int_n INT;
	DECLARE _dtm_Data_Proc_Inicial				DATETIME;
	DECLARE _dtm_Data_Proc_Final				DATETIME;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

    SET _int_n = 1;
    
    SET _dtm_Data_Proc_Inicial = Cast(Cast(_dt_DateProc As CHAR) + ' ' + Cast(_tim_Hora_Abertura As CHAR(8)) As Datetime);

    SET _int_n = 2;
    IF (_tim_Hora_Fechamento <= _tim_Hora_Abertura)
    THEN
        SET _dtm_Data_Proc_Final = Cast(Cast(date_add(_dt_DateProc, INTERVAL 1 DAY) As CHAR) + ' ' + Cast(_tim_Hora_Fechamento As CHAR) As Datetime);
    ELSE
        SET _dtm_Data_Proc_Final = Cast(Cast(_dt_DateProc As CHAR) + ' ' + Cast(_tim_Hora_Fechamento As CHAR(8)) As Datetime);
    END IF;

    SET _int_n = 3;
    SELECT DISTINCT P.mco_c_ip As IP, P.mco_n_pentradas As EntradasParcial, P.mco_n_totalentradas As TotalEntradas, 
    P.mco_n_psalidas As SaidasParcial, P.mco_n_totalsalidas As TotalSaidas, 
    mdl_c_descricao As NomeJogo, P.mco_n_jugadoparcial As JogadoParcial, P.mco_n_totaljugado As TotalJogado, 
    P.mco_n_ganadoparcial As GanadoParcial, P.mco_n_totalganado As TotalGanado, 
    P.mco_n_totalacumulado As TotalAcumulado, P.mco_d_fecha As Data, amn_c_codigo As CodigoGabinete,
    mco_n_modelo As Modelo,  P.mco_n_acumulado As AcumuladoParcial, p.mco_c_cpunumber As CPUNumber
    FROM cas_mco_mexconta P	INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo
    LEFT JOIN cas_amn_associaipmaquina ON P.mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
    LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
    WHERE P.mco_d_fecha = 
    (SELECT MAX(mco_d_fecha) FROM cas_mco_mexconta WHERE mco_c_ip = P.mco_c_ip and mco_d_fecha >= _dtm_Data_Proc_Inicial and mco_d_fecha <= _dtm_Data_Proc_Final )
    AND mco_d_fecha >= _dtm_Data_Proc_Inicial AND mco_d_fecha <= _dtm_Data_Proc_Final
    ORDER BY P.mco_c_ip, mco_d_fecha DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wconsultacontabilidade03` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wconsultacontabilidade03`(
   _int_Fechamento	INT
)
BEGIN
    DECLARE _dtm_Data_Proc_Inicial      DATETIME;
    DECLARE _dtm_Data_Proc_Final        DATETIME;

    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    IF(_int_Fechamento > 0)
    THEN
        SET _int_n = 1; 
        SELECT _dtm_Data_Proc_Inicial = mci_d_abertura, _dtm_Data_Proc_Final = mci_d_fecha from
        cas_mci_mexcierres where mci_n_codigo = _int_Fechamento;

        SET _int_n = 2;
        SELECT  P.mco_c_ip As IP, Sum(P.mco_n_entradas) As Entradas, Sum(P.mco_n_salidas) As Saidas, M.mdl_c_descricao As NomeJogo, 
        Sum(P.mco_n_jugado) As Jogado, Sum(P.mco_n_ganado) As Ganhado, Max(P.mco_n_saldo_acumulado) As SaldoAcumulado, SUM(mco_n_saida_sirprize) As SaidaSirPrize
        FROM cas_mco_mexconta P	INNER JOIN cas_mdl_mexmodelos M ON mdl_n_codigo = mco_n_modelo
        WHERE P.mco_d_fecha >= _dtm_Data_Proc_Inicial AND P.mco_d_fecha <= _dtm_Data_Proc_Final
        GROUP BY M.mdl_c_descricao, P.mco_c_ip
        ORDER BY M.mdl_c_descricao, P.mco_c_ip;
    ELSE
        SET _int_n = 3;
        SELECT  P.mco_c_ip As IP, Sum(P.mco_n_entradas) As Entradas, Sum(P.mco_n_salidas) As Saidas, M.mdl_c_descricao As NomeJogo, 
        Sum(P.mco_n_jugado) As Jogado, Sum(P.mco_n_ganado) As Ganhado, Max(P.mco_n_saldo_acumulado) As SaldoAcumulado, SUM(mco_n_saida_sirprize) As SaidaSirPrize
        FROM cas_mco_mexconta P	INNER JOIN cas_mdl_mexmodelos M ON mdl_n_codigo = mco_n_modelo
        WHERE P.mco_n_atual = 1
        GROUP BY M.mdl_c_descricao, P.mco_c_ip
        ORDER BY M.mdl_c_descricao, P.mco_c_ip;
    END IF;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wconsultacontabilmaquina_anal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wconsultacontabilmaquina_anal`(

    _vch_wdatainicio	VARCHAR(10),	_vch_wdatafinal	VARCHAR(10),	
	_int_tiporelatorio	INT,		_int_codmodalidade	INT,	
	_int_codfabricante	INT

)
BEGIN
		DECLARE _int_n            INT;
		DECLARE _int_cont		    INT;
		DECLARE _int_codmodelo    INT;
		DECLARE _dt_dataaux		 DATE;	
		DECLARE _dt_wperfim	    DATE;
		DECLARE _dt_wperini	    DATE;
		DECLARE _int_nummaquina	 INT;
		DECLARE _int_codigo	    INT;
      DECLARE _int_i            INT;

		
		DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN 
			RESIGNAL SET MYSQL_ERRNO = _int_n;
		END;
  
		SET _int_n = 1;

		CREATE TEMPORARY TABLE _contabilRel(codmodelo INT, modelo VARCHAR(50), dias DATE, entradas BIGINT, salidas BIGINT, beneficio BIGINT, totaljugado BIGINT,
		totalganado BIGINT, jackpotganado BIGINT, hasta50 INT, hasta51 INT, hasta100 INT, hasta250 INT, hasta500 INT, hasta1000 INT,
		status TINYINT(1), nummaquina INT);

		SET _int_n = 2;

		CREATE TEMPORARY TABLE _contabilRel2(codmodelo INT, modelo VARCHAR(50), dias DATE, entradas BIGINT, salidas BIGINT, beneficio BIGINT, totaljugado BIGINT,
		totalganado BIGINT, jackpotganado BIGINT, hasta50 INT, hasta51 INT, hasta100 INT, hasta250 INT, hasta500 INT, hasta1000 INT,
		status TINYINT(1), nummaquina INT);

		IF (_int_tiporelatorio = 1) 
		THEN
			IF (_int_codmodalidade = -1 AND _int_codfabricante = -1)
			THEN

				SET _int_n = 3;

				INSERT INTO _contabilRel2
				SELECT DISTINCT Con.mco_n_modelo, Model.mdl_c_descricao, CAST(Con.mco_d_fecha AS DATE), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
				FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
				WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
				AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
				GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_d_fecha;

			ELSE
				IF (_int_codmodalidade > 0 AND _int_codfabricante = -1)
				THEN

					SET _int_n = 4;

					INSERT INTO _contabilRel2
					SELECT DISTINCT Con.mco_n_modelo, Model.mdl_c_descricao, CAST(Con.mco_d_fecha AS DATE), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
					FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
					GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_d_fecha;

				ELSE

					IF (_int_codmodalidade = -1 AND _int_codfabricante > 0)
					THEN

						SET _int_n = 5;
						INSERT INTO _contabilRel2
						SELECT DISTINCT Con.mco_n_modelo, Model.mdl_c_descricao, CAST(Con.mco_d_fecha AS DATE), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
						FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
						GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_d_fecha;

					ELSE

						SET _int_n = 6;

						INSERT INTO _contabilRel2
						SELECT DISTINCT Con.mco_n_modelo, Model.mdl_c_descricao, CAST(Con.mco_d_fecha AS DATE), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0
						FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
						GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_d_fecha;

					END IF;
				END IF;
			END IF;

			SET _int_n = 7;

			INSERT INTO _contabilRel
			SELECT DISTINCT Con.codmodelo, Model.mdl_c_descricao,
			CAST(Con.dias AS DATE),
			(SELECT SUM(Sub.mco_n_entradas) 
			FROM cas_mco_mexconta Sub 
			WHERE Sub.mco_n_modelo = Con.codmodelo 
			AND CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Entradas,
			(SELECT SUM(Sub.mco_n_salidas) 
			FROM cas_mco_mexconta Sub 
			WHERE Sub.mco_n_modelo = Con.codmodelo 
			AND CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) As Saidas,
			((SELECT SUM(Sub.mco_n_entradas) 
			FROM cas_mco_mexconta Sub 
			WHERE Sub.mco_n_modelo = Con.codmodelo 
			AND CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) - 
			(SELECT SUM(Sub.mco_n_salidas) 
			FROM cas_mco_mexconta Sub 
			WHERE Sub.mco_n_modelo = Con.codmodelo 
			AND CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE))) AS Beneficio,
			(SELECT SUM(Sub.mco_n_jugado)
			FROM cas_mco_mexconta Sub 
			WHERE Sub.mco_n_modelo = Con.codmodelo
			AND CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Jugado,
			(SELECT SUM(Sub.mco_n_ganado)
			FROM cas_mco_mexconta Sub 
			WHERE Sub.mco_n_modelo = Con.codmodelo
			AND CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Ganado,
			(SELECT SUM(Sub.mco_n_acumulado)
			FROM cas_mco_mexconta Sub 
			WHERE Sub.mco_n_modelo = Con.codmodelo
			AND CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Totalsacumulado,
			(SELECT SUM(tkc_n_hasta50)
			FROM cas_tkc_mexcontabilidadetickets tky
			WHERE tky.tkc_n_codmodelo = Con.codmodelo
			AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
			AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta50,
			(SELECT SUM(tkc_n_hasta51)
			FROM cas_tkc_mexcontabilidadetickets tky
			WHERE tky.tkc_n_codmodelo = Con.codmodelo
			AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
			AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta51,
			(SELECT SUM(tkc_n_hasta100)
			FROM cas_tkc_mexcontabilidadetickets tky
			WHERE tky.tkc_n_codmodelo = Con.codmodelo
			AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
			AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta100,
			(SELECT SUM(tkc_n_hasta250)
			FROM cas_tkc_mexcontabilidadetickets tky
			WHERE tky.tkc_n_codmodelo = Con.codmodelo
			AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
			AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta250,
			(SELECT SUM(tkc_n_hasta500) 
			FROM cas_tkc_mexcontabilidadetickets tky
			WHERE tky.tkc_n_codmodelo = Con.codmodelo
			AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
			AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta500,
			(SELECT SUM(tkc_n_hasta1000)
			FROM cas_tkc_mexcontabilidadetickets tky
			WHERE tky.tkc_n_codmodelo = Con.codmodelo
			AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
			AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta1000,				
			1,
			NULL
			FROM _contabilRel2 Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.codmodelo;
			
		ELSE

		   IF (_int_codmodalidade = -1 AND _int_codfabricante = -1)
		   THEN
            SET _int_n = 8;
            INSERT INTO _contabilRel2
				SELECT DISTINCT 0, '', CAST(Con.mco_d_fecha AS DATE), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL
				FROM cas_mco_mexconta Con
				WHERE  CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
				AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
				GROUP BY Con.mco_d_fecha;

			ELSE

                IF (_int_codmodalidade > 0 AND _int_codfabricante = -1)
                THEN

                    SET _int_n = 9;

					INSERT INTO _contabilRel2
					SELECT DISTINCT   	0, '', CAST(Con.mco_d_fecha AS DATE), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL
					FROM  cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
					GROUP BY Con.mco_d_fecha;

                ELSE

                    IF (_int_codmodalidade = -1 AND _int_codfabricante > 0)
                    THEN

                        SET _int_n = 10;
                        INSERT INTO _contabilRel2
						SELECT DISTINCT 0, '', CAST(Con.mco_d_fecha AS DATE), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL
						FROM  cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE  CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
						GROUP BY Con.mco_d_fecha;

                    ELSE

						SET _int_n = 11;
						INSERT INTO _contabilRel2
						SELECT DISTINCT 0, '', CAST(Con.mco_d_fecha AS DATE), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL
						FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
						GROUP BY Con.mco_d_fecha;

                    END IF;
                END IF;
			END IF;


			IF (_int_codmodalidade = -1 AND _int_codfabricante = -1) 
			THEN

				SET _int_n = 12;
				INSERT INTO _contabilRel
				SELECT DISTINCT 0, '', CAST(Con.dias AS DATE),

				(SELECT SUM(Sub.mco_n_entradas)
				FROM cas_mco_mexconta Sub 
				WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Entradas,
				(SELECT SUM(Sub.mco_n_salidas)
				FROM cas_mco_mexconta Sub 
				WHERE  CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Saidas,
				((SELECT SUM(Sub.mco_n_entradas)
				FROM cas_mco_mexconta Sub 
				WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) - 
				(SELECT SUM(Sub.mco_n_salidas) 
				FROM cas_mco_mexconta Sub 
				WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE))) AS Beneficio,
				(SELECT SUM(Sub.mco_n_jugado)
				FROM cas_mco_mexconta Sub
				WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Jugado,
				(SELECT SUM(Sub.mco_n_ganado)
				FROM cas_mco_mexconta Sub 
				WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Ganado,
				(SELECT SUM(Sub.mco_n_acumulado)
				FROM cas_mco_mexconta Sub 
				WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Totalsacumulado,
				(SELECT SUM(tkc_n_hasta50)
				FROM cas_tkc_mexcontabilidadetickets tky
				WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
				AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta50,
				(SELECT SUM(tkc_n_hasta51)
				FROM cas_tkc_mexcontabilidadetickets tky
				WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
				AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta51,
				(SELECT SUM(tkc_n_hasta100)
				FROM cas_tkc_mexcontabilidadetickets tky
				WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
				AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta100,
				(SELECT SUM(tkc_n_hasta250)
				FROM cas_tkc_mexcontabilidadetickets tky
				WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
				AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta250,
				(SELECT SUM(tkc_n_hasta500)
				FROM cas_tkc_mexcontabilidadetickets tky
				WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
				AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta500,
				(SELECT SUM(tkc_n_hasta1000)
				FROM cas_tkc_mexcontabilidadetickets tky
				WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
				AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta1000,
				1,
				NULL
				FROM _contabilRel2 Con;

			ELSE

				IF (_int_codmodalidade > 0 AND _int_codfabricante = -1) 
				THEN

					SET _int_n = 13;

					INSERT INTO _contabilRel
					SELECT DISTINCT 0, '', CAST(Con.dias AS DATE),
					(SELECT SUM(Sub.mco_n_entradas)
					FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Entradas,
					(SELECT SUM(Sub.mco_n_salidas)
					FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Saidas,
					((SELECT SUM(Sub.mco_n_entradas)
					FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) - 
					(SELECT SUM(Sub.mco_n_salidas)
					FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE))) AS Beneficio,
					(SELECT SUM(Sub.mco_n_jugado)
					FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Jugado,
					(SELECT SUM(Sub.mco_n_ganado)
					FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Ganado,
					(SELECT SUM(Sub.mco_n_acumulado)
					FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo
					AND Model.mdl_n_codmodalidade = _int_codmodalidade 
					WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Totalsacumulado,
					(SELECT SUM(tkc_n_hasta50)
					FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta50,
					(SELECT SUM(tkc_n_hasta51)
					FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta51,
					(SELECT SUM(tkc_n_hasta100)
					FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta100,
					(SELECT SUM(tkc_n_hasta250)
					FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta250,
					(SELECT SUM(tkc_n_hasta500)
					FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta500,
					(SELECT SUM(tkc_n_hasta1000)
					FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta1000,
					1,
					NULL
					FROM _contabilRel2 Con;

                ELSE

                    IF (_int_codmodalidade = -1 AND _int_codfabricante > 0) 
                    THEN
						SET _int_n = 14;
						INSERT INTO _contabilRel
						SELECT DISTINCT 0, '', CAST(Con.dias AS DATE),
						(SELECT SUM(Sub.mco_n_entradas) 
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Entradas,
						(SELECT SUM(Sub.mco_n_salidas)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Saidas,
						((SELECT SUM(Sub.mco_n_entradas) 
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) - 
						(SELECT SUM(Sub.mco_n_salidas)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE))) AS Beneficio,
						(SELECT SUM(Sub.mco_n_jugado)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Jugado,
						(SELECT SUM(Sub.mco_n_ganado)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Ganado,
						(SELECT SUM(Sub.mco_n_acumulado)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante 
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Totalsacumulado,
						(SELECT SUM(tkc_n_hasta50)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta50,
						(SELECT SUM(tkc_n_hasta51)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta51,
						(SELECT SUM(tkc_n_hasta100)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta100,
						(SELECT SUM(tkc_n_hasta250)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta250,
						(SELECT SUM(tkc_n_hasta500)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta500,
						(SELECT SUM(tkc_n_hasta1000)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo
						AND Model.mdl_n_codfabricante = _int_codfabricante
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta1000,
						1,
						NULL
						FROM _contabilRel2 Con ;

					ELSE

						SET _int_n = 15;
						INSERT INTO _contabilRel
						SELECT DISTINCT 0, '', CAST(Con.dias AS DATE),
						(SELECT SUM(Sub.mco_n_entradas)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Entradas,
						(SELECT SUM(Sub.mco_n_salidas)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Saidas,
						((SELECT SUM(Sub.mco_n_entradas)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) - 
						(SELECT SUM(Sub.mco_n_salidas)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE))) AS Beneficio,
						(SELECT SUM(Sub.mco_n_jugado)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Jugado,
						(SELECT SUM(Sub.mco_n_ganado)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Ganado,
						(SELECT SUM(Sub.mco_n_acumulado)
						FROM cas_mco_mexconta Sub INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Sub.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante 
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(Sub.mco_d_fecha AS DATE) = CAST(Con.dias AS DATE)) AS Totalsacumulado,
						(SELECT SUM(tkc_n_hasta50)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta50,
						(SELECT SUM(tkc_n_hasta51)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta51,
						(SELECT SUM(tkc_n_hasta100)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(tkc_d_datafechamento As DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta100,
						(SELECT SUM(tkc_n_hasta250)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta250,
						(SELECT SUM(tkc_n_hasta500)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) AS hasta500,
						(SELECT SUM(tkc_n_hasta1000)
						FROM cas_tkc_mexcontabilidadetickets tky INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = tky.tkc_n_codmodelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(tkc_d_datafechamento AS DATE) >= CAST(Con.dias AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(Con.dias AS DATE)) As hasta1000,
						1,
						NULL
						FROM _contabilRel2 Con;
					END IF; 
				END IF; 
            END IF; 
		END IF; 

        SET _int_n = 16;

        CREATE TEMPORARY TABLE _periodos(codmodelo INT, data DATE, codperiodo INT NOT NULL AUTO_INCREMENT);

        IF (_int_tiporelatorio = 1) 
		THEN 

			IF (_int_codmodalidade = -1 AND _int_codfabricante = -1) 
			THEN

				SET _int_n = 17;

				
				INSERT INTO _periodos
				SELECT DISTINCT Con.mco_n_modelo, CAST(Con.mco_d_fecha AS DATE)
				FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
				WHERE CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE);

			ELSE 

				IF (_int_codmodalidade > 0 AND _int_codfabricante = -1) 
				THEN

					SET _int_n = 18;

					INSERT INTO _periodos
					SELECT DISTINCT Con.mco_n_modelo, CAST(Con.mco_d_fecha AS DATE)
					FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
					WHERE Model.mdl_n_codmodalidade = _int_codmodalidade
					AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE);

				ELSE 

					IF (_int_codmodalidade = -1 AND _int_codfabricante > 0) 
					THEN

						SET _int_n = 19;
						
						INSERT INTO _periodos
						SELECT DISTINCT Con.mco_n_modelo, CAST(Con.mco_d_fecha AS DATE)
						FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
						WHERE Model.mdl_n_codfabricante = _int_codfabricante
						AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE);

					ELSE 

						SET _int_n = 20;

						INSERT INTO _periodos
						SELECT DISTINCT Con.mco_n_modelo, CAST(Con.mco_d_fecha AS DATE)
						FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
						WHERE Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE);

					END IF; 
				END IF;    
			END IF;          
		
        SET _int_n = 21;
        SELECT COUNT(*)
        INTO _int_cont 
        FROM _contabilRel;

        SET _int_n = 22;
			
        SELECT codmodelo, dias, dias
        INTO _int_codmodelo, _dt_dataaux, _dt_wperfim 
        FROM _contabilRel LIMIT 1;

        SET _int_n = 23;
        SELECT codperiodo
        INTO _int_codigo 
        FROM _periodos 
        WHERE data = _dt_wperfim
        AND codmodelo = _int_codmodelo LIMIT 1;

        IF (_int_codigo > 1) 
        THEN
            SET _int_n = 24;
            SELECT codmodelo, data 
            INTO _int_codigo , _dt_wperini 
            FROM _periodos 
            WHERE codperiodo = _int_codigo - 1;

            IF (_int_codigo <> _int_codmodelo)
            THEN 
                SET _dt_wperini = DATE_SUB(_dt_wperfim, INTERVAL 1 DAY);
            END IF;
        ELSE 
				SET _dt_wperini = DATE_SUB(_dt_wperfim, INTERVAL 1 DAY);
				SET _int_i = 0;

				WHILE _int_i < _int_cont 
				DO
                SET _int_n = 25;
                SELECT count(*) 
                INTO _int_nummaquina 
                FROM(   SELECT distinct mco_c_ip
                        FROM cas_mco_mexconta
                        WHERE mco_n_modelo = _int_codmodelo AND
                        CAST(mco_d_fecha AS DATE) =  _dt_dataaux ) as nummaquina;

					SET _int_n = 26;

					UPDATE _contabilRel
					SET nummaquina = _int_nummaquina
					WHERE codmodelo = _int_codmodelo
					AND dias = _dt_dataaux;
					
					SET _int_n = 27;

                SELECT  codmodelo, dias, dias
                INTO _int_codmodelo, _dt_dataaux, _dt_wperfim  
                FROM _contabilRel
                WHERE nummaquina IS NULL LIMIT 1;

					SET _int_n = 28;

					SELECT codperiodo
                INTO _int_codigo 
					FROM _periodos
					WHERE data = _dt_dataaux
					AND codmodelo = _int_codmodelo LIMIT 1;

					IF (_int_codigo > 1)  
					THEN
						SET _int_n = 29;

                SELECT codmodelo, data
                INTO _int_codigo, _dt_wperini 
                FROM _periodos 
                WHERE codperiodo = (_int_codigo - 1);

                IF (_int_codigo <> _int_codmodelo)
                THEN
                    SET _dt_wperini = DATE_SUB(_dt_wperfim, INTERVAL 1 DAY);
                ELSE
                    SET _dt_wperini = DATE_ADD(_dt_wperini, INTERVAL 1 DAY);
                END IF;
                ELSE 
                    SET _dt_wperini = DATE_SUB(_dt_wperfim, INTERVAL 1 DAY);
                END IF;

					SET _int_i = _int_i + 1;
				END WHILE; 
			END IF; 
		ELSE 
			IF (_int_codmodalidade = -1 AND _int_codfabricante = -1)  
			THEN
				SET _int_n = 30 ;
				
				INSERT INTO _periodos
				SELECT DISTINCT NULL, CAST(Con.mco_d_fecha AS DATE)
				FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
				WHERE CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE);
			ELSE 
				IF (_int_codmodalidade > 0 AND _int_codfabricante = -1) 
				THEN

					SET _int_n = 31;

					INSERT INTO _periodos 
					SELECT DISTINCT NULL, CAST(Con.mco_d_fecha AS DATE)
					FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
					WHERE Model.mdl_n_codmodalidade = _int_codmodalidade
					AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE);

				ELSE 
					IF (_int_codmodalidade = -1 AND _int_codfabricante > 0) 
					THEN
						SET _int_n = 32;
						INSERT INTO _periodos
						SELECT DISTINCT NULL, CAST(Con.mco_d_fecha AS DATE)
						FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
						WHERE Model.mdl_n_codfabricante = _int_codfabricante
						AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE);

					ELSE 
						SET _int_n = 33;

						INSERT INTO _periodos
						SELECT DISTINCT NULL, CAST(Con.mco_d_fecha AS DATE)
						FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
						WHERE Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						AND CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE);	
					END IF;
				END IF; 
			END IF; 

            SET _int_n = 34;
            SELECT COUNT(*)
            INTO _int_cont 
            FROM _contabilRel;

            SET _int_n = 35;
            SELECT  dias, dias
            INTO _dt_dataaux, _dt_wperfim  
            FROM _contabilRel LIMIT 1;

            SET _int_n = 36;
            SELECT codperiodo
            _int_codigo     
            FROM _periodos 
            WHERE data = _dt_wperfim LIMIT 1;

            IF (_int_codigo > 1)
            THEN
                SET _int_n = 37;
                SELECT data 
                _dt_wperini 
                FROM _periodos 
                WHERE codperiodo = _int_codigo - 1;
            ELSE
            SET _dt_wperini = DATE_SUB(_dt_wperfim, INTERVAL 1 DAY);
            END IF;

			SET _int_i = 0;
			
			WHILE _int_i < _int_cont
			DO
				IF (_int_codmodalidade = -1 AND _int_codfabricante = -1) 
				THEN
					SET _int_n = 38;
					
            SELECT count(*) 
            INTO _int_nummaquina 
            FROM(   SELECT distinct mco_c_ip
                    FROM cas_mco_mexconta
                    WHERE  CAST(mco_d_fecha AS DATE) =  _dt_dataaux ) as nummaquina;

				ELSE 
					IF (_int_codmodalidade > 0 AND _int_codfabricante = -1) 
					THEN
						SET _int_n = 39;
						SELECT count(*) 
                   INTO _int_nummaquina 
                   FROM  (  SELECT distinct mco_c_ip
                            FROM cas_mco_mexconta INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = mco_n_modelo 
                            WHERE  Model.mdl_n_codmodalidade = _int_codmodalidade AND CAST(mco_d_fecha AS DATE) =  _dt_dataaux ) as nummaquina;
					ELSE 
                    IF (_int_codmodalidade = -1 AND _int_codfabricante > 0) 
                    THEN

							SET _int_n = 40;
							SELECT count(*) 
                      INTO _int_nummaquina 
                      FROM  
                        (   SELECT distinct mco_c_ip
                            FROM cas_mco_mexconta INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = mco_n_modelo
                            WHERE Model.mdl_n_codfabricante = _int_codfabricante
                            AND CAST(mco_d_fecha AS DATE) =  _dt_dataaux ) as nummaquina;					   
						ELSE 

							SET _int_n = 41;
							SELECT count(*) 
                      INTO _int_nummaquina 
                      FROM ( SELECT distinct mco_c_ip
							FROM cas_mco_mexconta INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = mco_n_modelo
							WHERE Model.mdl_n_codfabricante = _int_codfabricante
							AND Model.mdl_n_codmodalidade = _int_codmodalidade
							AND  CAST(mco_d_fecha AS DATE) =  _dt_dataaux ) as nummaquina;

							END IF; 
					END IF;      
				END IF;         

				
				SET _int_n = 42;

				UPDATE _contabilRel 
				SET nummaquina = _int_nummaquina
				WHERE dias = _dt_dataaux;

            SET _int_n = 43;
            SELECT dias, dias
            INTO _dt_dataaux,_dt_wperfim  
            FROM _contabilRel
            WHERE nummaquina IS NULL LIMIT 1;

				SET _int_n = 44;

            SELECT codperiodo
            _int_codigo 
            FROM _periodos 
            WHERE data = _dt_dataaux LIMIT 1;

				IF (_int_codigo > 1)
				THEN
                SET _int_n = 45;
                SELECT DATE_ADD(data, INTERVAL 1 DAY)
                INTO _dt_wperini 
                FROM _periodos 
                WHERE codperiodo = _int_codigo - 1;
				ELSE
					SET _dt_wperini = DATE_SUB(_dt_wperfim, INTERVAL 1 DAY);
				END IF;

				SET _int_i = _int_i + 1;	 
			END WHILE;
		END IF; 

            IF (_int_tiporelatorio = 1) 
            THEN
                SET _int_n = 46;

                SELECT codmodelo, modelo, dias As Data, entradas, salidas, beneficio, totaljugado, totalganado, jackpotganado, hasta50, hasta51, hasta100,
                hasta250, hasta500, hasta1000, nummaquina, '' As IPmaquina
                FROM _contabilRel

                ORDER BY modelo, dias ASC;
            ELSE 

				SET _int_n = 47;
				SELECT dias As Data, SUM(entradas) AS entradas, SUM(salidas) AS salidas, SUM(beneficio) AS beneficio, SUM(totaljugado) AS totaljugado,
				SUM(totalganado) AS totalganado, SUM(jackpotganado) AS jackpotganado, SUM(hasta50) AS hasta50, SUM(hasta51) AS hasta51,
				SUM(hasta100) AS hasta100, SUM(hasta250) AS hasta250, SUM(hasta500) AS hasta500, SUM(hasta1000) AS hasta1000, SUM(nummaquina) AS nummaquina,
				'' As IPmaquina, 0 As Codmodelo, '' As Modelo
				FROM _contabilRel
				GROUP BY dias
				ORDER BY dias ASC;
            END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wconsultacontabilmaquina_sint` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wconsultacontabilmaquina_sint`(
    _vch_wdatainicio        VARCHAR(10),	
    _vch_wdatafinal         VARCHAR(10),	
    _int_tiporelatorio      INT,		
    _int_codmodalidade      INT,	
    _int_codfabricante      INT 
)
BEGIN
		DECLARE _int_n           INT;
		DECLARE _int_i           INT;
		DECLARE _int_cont        INT;
		DECLARE _int_nummaquina	 INT;
		DECLARE _int_codmodelo	 INT;

        DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN 
            RESIGNAL SET MYSQL_ERRNO = _int_n;
        END;

    SET _int_n = 1;
    CREATE TABLE _contabilRel(codmodelo BIGINT, modelo VARCHAR(50), ipmaquina VARCHAR(50), entradas DECIMAL(18,2), salidas DECIMAL(18,2),
    beneficio BIGINT,
    totaljugado BIGINT, totalganado DECIMAL(18,2), jackpotganado DECIMAL(18,2), 
    hasta50 INT, hasta51 INT, hasta100 INT, hasta250 INT,
    hasta500 INT, hasta1000 INT, nummaquina INT, codigomaq VARCHAR(20));
		
		IF (_int_tiporelatorio = 1)
		THEN
			IF (_int_codmodalidade = -1 AND _int_codfabricante = -1)
			THEN
				SET _int_n = 2;
				INSERT INTO _contabilRel
				SELECT Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_c_ip, SUM(Con.mco_n_entradas), SUM(Con.mco_n_salidas),
				(SUM(Con.mco_n_entradas) - SUM(Con.mco_n_salidas)) AS beneficio, SUM(Con.mco_n_jugado), SUM(Con.mco_n_ganado),	SUM(Con.mco_n_acumulado), 
				(SELECT SUM(tkc_n_hasta50)
				FROM cas_tkc_mexcontabilidadetickets
				WHERE tkc_c_ipmaquina = Con.mco_c_ip
				AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
				AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta50,
				(SELECT SUM(tkc_n_hasta51)
				FROM cas_tkc_mexcontabilidadetickets
				WHERE tkc_c_ipmaquina = Con.mco_c_ip
				AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
				AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta51,
				(SELECT SUM(tkc_n_hasta100)
				FROM cas_tkc_mexcontabilidadetickets
				WHERE tkc_c_ipmaquina = Con.mco_c_ip
				AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
				AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta100,
				(SELECT SUM(tkc_n_hasta250)
				FROM cas_tkc_mexcontabilidadetickets
				WHERE tkc_c_ipmaquina = Con.mco_c_ip
				AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
				AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta250,
				(SELECT SUM(tkc_n_hasta500)
				FROM cas_tkc_mexcontabilidadetickets
				WHERE tkc_c_ipmaquina = Con.mco_c_ip
				AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
				AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta500,
				(SELECT SUM(tkc_n_hasta1000)
				FROM cas_tkc_mexcontabilidadetickets
				WHERE tkc_c_ipmaquina = Con.mco_c_ip
				AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
				AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta1000,
				null, Amn.amn_c_codigo
				FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
				LEFT JOIN cas_amn_associaipmaquina Amn ON mco_c_ip = amn_c_ip and mco_n_modelo = amn_n_modelo
				WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
				AND	CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
				GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_c_ip, amn.amn_c_codigo;
			ELSE
				IF (_int_codmodalidade > 0 AND _int_codfabricante = -1)
				THEN
					SET _int_n = 3;
					
					INSERT INTO _contabilRel
					SELECT Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_c_ip, SUM(Con.mco_n_entradas), SUM(Con.mco_n_salidas),
					(SUM(Con.mco_n_entradas) - SUM(Con.mco_n_salidas)) AS beneficio, SUM(Con.mco_n_jugado), SUM(Con.mco_n_ganado), SUM(Con.mco_n_acumulado),
					(SELECT SUM(tkc_n_hasta50)
					FROM cas_tkc_mexcontabilidadetickets
					WHERE tkc_c_ipmaquina = Con.mco_c_ip
					AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta50,
					(SELECT SUM(tkc_n_hasta51)
					FROM cas_tkc_mexcontabilidadetickets
					WHERE tkc_c_ipmaquina = Con.mco_c_ip
					AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta51,
					(SELECT SUM(tkc_n_hasta100)
					FROM cas_tkc_mexcontabilidadetickets
					WHERE tkc_c_ipmaquina = Con.mco_c_ip
					AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta100,
					(SELECT SUM(tkc_n_hasta250)
					FROM cas_tkc_mexcontabilidadetickets
					WHERE tkc_c_ipmaquina = Con.mco_c_ip
					AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta250,
					(SELECT SUM(tkc_n_hasta500)
					FROM cas_tkc_mexcontabilidadetickets
					WHERE tkc_c_ipmaquina = Con.mco_c_ip
					AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta500,
					(SELECT SUM(tkc_n_hasta1000)
					FROM cas_tkc_mexcontabilidadetickets
					WHERE tkc_c_ipmaquina = Con.mco_c_ip
					AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta1000,
					null, Amn.amn_c_codigo
					FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo 
					AND Model.mdl_n_codmodalidade = _int_codmodalidade
					LEFT JOIN cas_amn_associaipmaquina Amn ON mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
					WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND	CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
					GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_c_ip, amn.amn_c_codigo;

				ELSE
					IF (_int_codmodalidade = -1 AND _int_codfabricante > 0)
					THEN
						SET _int_n = 4;
						
						INSERT INTO _contabilRel
						SELECT Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_c_ip, SUM(Con.mco_n_entradas), SUM(Con.mco_n_salidas),
						(SUM(Con.mco_n_entradas) - SUM(Con.mco_n_salidas)) AS beneficio, SUM(Con.mco_n_jugado), SUM(Con.mco_n_ganado), SUM(Con.mco_n_acumulado),
						(SELECT SUM(tkc_n_hasta50)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta50,
						(SELECT SUM(tkc_n_hasta51)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta51,
						(SELECT SUM(tkc_n_hasta100)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta100,
						(SELECT SUM(tkc_n_hasta250)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta250,
						(SELECT SUM(tkc_n_hasta500)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta500,
						(SELECT SUM(tkc_n_hasta1000)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta1000,
						null, Amn.amn_c_codigo
						FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo 
						AND Model.mdl_n_codfabricante = _int_codfabricante
						LEFT JOIN cas_amn_associaipmaquina Amn ON mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
						WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND	CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
						GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_c_ip, amn.amn_c_codigo;
					ELSE
				
						SET _int_n = 5;
						
						INSERT INTO _contabilRel
						SELECT Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_c_ip, SUM(Con.mco_n_entradas), SUM(Con.mco_n_salidas), 
						(SUM(Con.mco_n_entradas) - SUM(Con.mco_n_salidas)) AS beneficio, SUM(Con.mco_n_jugado), SUM(Con.mco_n_ganado), SUM(Con.mco_n_acumulado),
						(SELECT SUM(tkc_n_hasta50)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta50,
						(SELECT SUM(tkc_n_hasta51)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta51,
						(SELECT SUM(tkc_n_hasta100)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta100,
						(SELECT SUM(tkc_n_hasta250)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta250,
						(SELECT SUM(tkc_n_hasta500)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta500,
						(SELECT SUM(tkc_n_hasta1000)
						FROM cas_tkc_mexcontabilidadetickets
						WHERE tkc_c_ipmaquina = Con.mco_c_ip
						AND CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta1000,
						null, Amn.amn_c_codigo
						FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
						AND Model.mdl_n_codfabricante = _int_codfabricante
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						LEFT JOIN cas_amn_associaipmaquina Amn ON mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
						WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND	CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
						GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao, Con.mco_c_ip, amn.amn_c_codigo;
					END IF;
				END IF;
			END IF;

			SET _int_n = 17;

        SELECT COUNT(*) 
        INTO _int_cont 
        FROM _contabilRel;

			SET _int_n = 18;

        SELECT codmodelo  
        INTO _int_codmodelo 
        FROM _contabilRel LIMIT 1;

			SET _int_i = 0;

			WHILE _int_i < _int_cont
			DO
				SET _int_n = 19;
				
				SELECT  count(*) INTO _int_nummaquina FROM ( SELECT distinct mco_c_ip
				FROM cas_mco_mexconta
				WHERE mco_n_modelo = _int_codmodelo
				AND CAST(mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE) 
				AND CAST(mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)) as nummaquina;
				
				SET _int_n = 20;
				
				UPDATE _contabilRel 
				SET nummaquina = _int_nummaquina
				WHERE codmodelo = _int_codmodelo;

				SET _int_n = 21;
				
				SELECT  codmodelo 
            INTO _int_codmodelo 
				FROM _contabilRel 
				WHERE nummaquina IS NULL LIMIT 1;
				
				SET _int_i = _int_i + 1;
			END WHILE;

			SET _int_n = 6;

			SELECT codmodelo, modelo, ipmaquina, SUM(entradas) AS entradas, SUM(salidas) AS salidas, SUM(beneficio) AS beneficio, SUM(totaljugado) AS totaljugado,
			SUM(totalganado) AS totalganado, SUM(jackpotganado) AS jackpotganado, SUM(hasta50) AS hasta50, SUM(hasta51) AS hasta51, SUM(hasta100) AS hasta100,
			SUM(hasta250) AS hasta250, SUM(hasta500) AS hasta500, SUM(hasta1000) AS hasta1000, nummaquina, codigomaq
			FROM _contabilRel
			GROUP BY ipmaquina, modelo, codmodelo, nummaquina, codigomaq
			ORDER BY modelo ASC;


			
		ELSE
			IF (_int_tiporelatorio = 2)
			THEN				
				IF (_int_codmodalidade = -1 AND _int_codfabricante = -1)
				THEN
					SET _int_n = 7;
					
					INSERT INTO _contabilRel
					SELECT Con.mco_n_modelo, Model.mdl_c_descricao, 0, SUM(Con.mco_n_entradas), SUM(Con.mco_n_salidas),
					(SUM(Con.mco_n_entradas) - SUM(Con.mco_n_salidas)) AS beneficio, SUM(Con.mco_n_jugado), SUM(Con.mco_n_ganado), SUM(Con.mco_n_acumulado),
					(SELECT SUM(tkc_n_hasta50) 
					FROM cas_tkc_mexcontabilidadetickets tky
					WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
					AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta50,
					(SELECT SUM(tkc_n_hasta51)
					FROM cas_tkc_mexcontabilidadetickets tky
					WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
					AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta51,
					(SELECT SUM(tkc_n_hasta100) 
					FROM cas_tkc_mexcontabilidadetickets tky
					WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
					AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta100,
					(SELECT SUM(tkc_n_hasta250) 
					FROM cas_tkc_mexcontabilidadetickets tky
					WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
					AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta250,
					(SELECT SUM(tkc_n_hasta500) 
					FROM cas_tkc_mexcontabilidadetickets tky
					WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
					AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta500,
					(SELECT SUM(tkc_n_hasta1000) 
					FROM cas_tkc_mexcontabilidadetickets tky
					WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
					AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta1000,
					null,	Null
					FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
					WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
					AND	CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
					GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao;
				ELSE
					IF (_int_codmodalidade > 0 AND _int_codfabricante = -1)
					THEN
						SET _int_n = 8;

						INSERT INTO _contabilRel
						SELECT Con.mco_n_modelo, Model.mdl_c_descricao, 0, SUM(Con.mco_n_entradas), SUM(Con.mco_n_salidas), 
						(SUM(Con.mco_n_entradas) - SUM(Con.mco_n_salidas)) AS beneficio, SUM(Con.mco_n_jugado), SUM(Con.mco_n_ganado), SUM(Con.mco_n_acumulado),
						(SELECT SUM(tkc_n_hasta50) 
						FROM cas_tkc_mexcontabilidadetickets tky
						WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
						AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta50,
						(SELECT SUM(tkc_n_hasta51) 
						FROM cas_tkc_mexcontabilidadetickets tky
						WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
						AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta51,
						(SELECT SUM(tkc_n_hasta100) 
						FROM cas_tkc_mexcontabilidadetickets tky
						WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
						AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta100,
						(SELECT SUM(tkc_n_hasta250) 
						FROM cas_tkc_mexcontabilidadetickets tky
						WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
						AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta250,
						(SELECT SUM(tkc_n_hasta500) 
						FROM cas_tkc_mexcontabilidadetickets tky
						WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
						AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta500,
						(SELECT SUM(tkc_n_hasta1000) 
						FROM cas_tkc_mexcontabilidadetickets tky
						WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
						AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta1000,
						null,	Null
						FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
						AND Model.mdl_n_codmodalidade = _int_codmodalidade
						WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
						AND	CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
						GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao;
					ELSE
						IF (_int_codmodalidade = -1 AND _int_codfabricante > 0) THEN
							
							SET _int_n = 9;
							
							INSERT INTO _contabilRel
							SELECT Con.mco_n_modelo, Model.mdl_c_descricao, 0, SUM(Con.mco_n_entradas), SUM(Con.mco_n_salidas),
							(SUM(Con.mco_n_entradas) - SUM(Con.mco_n_salidas)) AS beneficio, SUM(Con.mco_n_jugado), SUM(Con.mco_n_ganado), 	SUM(Con.mco_n_acumulado),
							(SELECT SUM(tkc_n_hasta50) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta50,
							(SELECT SUM(tkc_n_hasta51) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta51,
							(SELECT SUM(tkc_n_hasta100) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta100,
							(SELECT SUM(tkc_n_hasta250) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta250,
							(SELECT SUM(tkc_n_hasta500) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta500,
							(SELECT SUM(tkc_n_hasta1000) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta1000,
							null,	Null
							FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
							AND Model.mdl_n_codfabricante = _int_codfabricante
							WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
							GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao;
						ELSE
							SET _int_n = 10;
							
							INSERT INTO _contabilRel
							SELECT Con.mco_n_modelo, Model.mdl_c_descricao, 0, SUM(Con.mco_n_entradas), SUM(Con.mco_n_salidas),
							(SUM(Con.mco_n_entradas) - SUM(Con.mco_n_salidas)) AS beneficio, SUM(Con.mco_n_jugado), SUM(Con.mco_n_ganado), SUM(Con.mco_n_acumulado),
							(SELECT SUM(tkc_n_hasta50) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta50,
							(SELECT SUM(tkc_n_hasta51) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta51,
							(SELECT SUM(tkc_n_hasta100) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta100,
							(SELECT SUM(tkc_n_hasta250) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta250,
							(SELECT SUM(tkc_n_hasta500) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta500,
							(SELECT SUM(tkc_n_hasta1000) 
							FROM cas_tkc_mexcontabilidadetickets tky
							WHERE tky.tkc_n_codmodelo = Con.mco_n_modelo
							AND	CAST(tkc_d_datafechamento AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(tkc_d_datafechamento AS DATE) <= CAST(_vch_wdatafinal AS DATE)) AS hasta1000,
							null,	Null
							FROM cas_mco_mexconta Con INNER JOIN cas_mdl_mexmodelos Model ON Model.mdl_n_codigo = Con.mco_n_modelo
							AND Model.mdl_n_codfabricante = _int_codfabricante
							AND Model.mdl_n_codmodalidade = _int_codmodalidade
							WHERE CAST(Con.mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
							AND	CAST(Con.mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
							GROUP BY Con.mco_n_modelo, Model.mdl_c_descricao;
						END IF;
					END IF;
				END IF;
			END IF;
		END IF;	
				
		SET _int_n = 11;
		
		SELECT COUNT(*) 
      INTO _int_cont 
		FROM _contabilRel;

		SET _int_n = 12;

		SELECT  codmodelo 
      INTO _int_codmodelo 
		FROM _contabilRel LIMIT 1;
			
		SET _int_i = 0;
		
		WHILE _int_i < _int_cont
		DO
			SET _int_n = 13;
			
			select count(*) INTO _int_nummaquina from ( SELECT distinct mco_c_ip
			FROM cas_mco_mexconta
			WHERE mco_n_modelo = _int_codmodelo
			AND CAST(mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE) 
			AND CAST(mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE))as nummaquina;
			
			SET _int_n = 14;
			
			UPDATE _contabilRel 
			SET nummaquina = _int_nummaquina
			WHERE codmodelo = _int_codmodelo;

			SET _int_n = 15;
			
			SELECT  _int_codmodelo = codmodelo 
			FROM _contabilRel 
			WHERE nummaquina IS NULL LIMIT 1;
			
			SET _int_i = _int_i + 1;
		END WHILE;

		SET _int_n = 16;
		
		SELECT codmodelo, modelo, SUM(entradas) AS entradas, SUM(salidas) AS salidas, SUM(beneficio) AS beneficio, SUM(totaljugado) AS totaljugado,
		SUM(totalganado) AS totalganado, SUM(jackpotganado) AS jackpotganado, SUM(hasta50) AS hasta50, SUM(hasta51) AS hasta51, SUM(hasta100) AS hasta100,
		SUM(hasta250) AS hasta250, SUM(hasta500) AS hasta500, SUM(hasta1000) AS hasta1000, SUM(nummaquina) AS nummaquina, '' As ipmaquina, '' As codigomaq 
		FROM _contabilRel
		GROUP BY codmodelo, modelo, nummaquina
		ORDER BY modelo ASC;
	
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wconsultafechamentoconsolidado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wconsultafechamentoconsolidado`(
    _int_codigoinicio		       INT, 
    _int_codigofinal	          INT,    
    _int_codigoconsolidado	    INT
  
)
BEGIN
	DECLARE _bit_wcalcularvendas	TINYINT(1);
	DECLARE _vch_wnomecasa			VARCHAR(50);
	DECLARE _int_winteres			   INT;
	DECLARE _int_winteresfederal	INT;
	DECLARE _int_winteresestatal	INT;
	DECLARE _dtm_wfecha				DATETIME;
	DECLARE _int_wclicodigo			INT;
	DECLARE _vch_wusuario			   varchar(50);
	DECLARE _int_wcodigo			   INT ;
	DECLARE _int_idCasa				INT;
	DECLARE _dtm_wabertura			DATETIME;

   DECLARE _int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

    SET _int_n = 1;
    SELECT prt_b_calcularvendas
    INTO _bit_wcalcularvendas 
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
                                FROM cas_prt_mexparametros
                                WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));

	
	SET _int_n = 2;
	IF EXISTS(SELECT * 
					FROM cas_pcb_perbonus LIMIT 1) 
	THEN
        SET _int_n = 3;
        SELECT pcb_n_idcasa
        INTO _int_idCasa 
        FROM cas_pcb_perbonus;
	END IF;

    SET _int_n = 4;
    SELECT msw_c_cabnomecasa 
    INTO _vch_wnomecasa 
    FROM cas_msw_mensagem LIMIT 1;
	
	SET _int_n = 5;
	CREATE TEMPORARY TABLE _exectemp(totalentradas INT, totalsalidas INT, vretenidohoy INT, vretenido60dias INT, vretenidoborrados INT,
		vcortesiadinero INT, vcortesiabebidas INT, vcortesiaaverias INT, vsalidasant INT, vpremiospagos INT, ventradasmaquina INT,
		vintereslocal DECIMAL(18,2), vinteresfederal DECIMAL(18,2), vinteresestatal DECIMAL(18,2),  fecha DATETIME, entradasticket INT,
		entradasdinheiro INT, entradasticketcaixa INT, salidaspgtomanual INT, entradacaixa INT, reforcocaixa INT, retiradacaixa INT,
		codigousuario INTEGER, nomeusuario VARCHAR(100), entradapos INT, saidapos INT, promocoes INT, saidaspromocoes INT, 
		diferencapromocoes INT, numerocontrole INTEGER, dtabertura DATETIME, nomecasa VARCHAR(50), resultado INT, retirosefectivo INT,
		cancelamento INT, retidodevolucaoant INT, saldopromodia INT, saldosaidapromo INT);

    
    IF (int_codigoconsolidado = 0)
    THEN
        SET _int_n = 6;
        SELECT Min(mci_d_abertura)	   
        INTO _dtm_wabertura 
        FROM	cas_mci_mexcierres
        WHERE mci_n_codigo >= int_codigoinicio and mci_n_codigo <= int_codigofinal;

        SET _int_n = 7;

        SELECT 	
        mci_n_interes,		
        mci_n_interesfederal, 
        mci_n_interesestatal
        INTO _int_winteres, _int_winteresfederal, _int_winteresestatal
        FROM	cas_mci_mexcierres
        WHERE mci_n_codigo = int_codigofinal;

        SET _dtm_wfecha = CURDATE();
        SET _int_wcodigo = 0;
        SET _int_wclicodigo = 0;
        SET _vch_wusuario = '';

        SET _int_n = 8;
		
        INSERT INTO _exectemp(
        totalentradas,
        totalsalidas,
        vretenidohoy,
        vretenido60dias,
        vretenidoborrados,
        vcortesiadinero,
        vcortesiabebidas,
        vcortesiaaverias,
        vsalidasant,
        vpremiospagos,
        ventradasmaquina,
        vintereslocal,
        vinteresfederal,
        vinteresestatal,
        fecha,
        entradasticket,
        entradasdinheiro,
        entradasticketcaixa,
        salidaspgtomanual,
        entradacaixa,
        reforcocaixa,
        retiradacaixa,
        codigousuario,
        nomeusuario,
        entradapos,
        saidapos,
        promocoes,
        saidaspromocoes,
        diferencapromocoes,
        numerocontrole,
        dtabertura,
        nomecasa,
        retirosefectivo,
        cancelamento,
        retidodevolucaoant,
        saldopromodia,
        saldosaidapromo
        )
        (SELECT
        IFNULL(SUM(mci_n_entrada), 0), 
        IFNULL(SUM(mci_n_salida), 0),
        IFNULL(SUM(mci_n_retenidohoy), 0),
        IFNULL(SUM(mci_n_retenido60dias), 0),
        IFNULL(SUM(mci_n_retenidoborrados), 0),
        IFNULL(SUM(mci_n_cortesiadinero), 0),
        IFNULL(SUM(mci_n_cortesiabebidas), 0),
        IFNULL(SUM(mci_n_cortesiaaverias), 0),
        IFNULL(SUM(mci_n_salidasant), 0),
        IFNULL(SUM(mci_n_premiospagos), 0),
        IFNULL(SUM(mci_n_entradasmaquinas), 0),
        int_winteres,
        int_winteresfederal,
        int_winteresestatal,

        _dtm_wfecha,
        IFNULL(SUM(mci_n_entradasticket), 0),
        IFNULL(SUM(mci_n_entradasdinheiro), 0),
        IFNULL(SUM(mci_n_entradasticketcaixa), 0),
        IFNULL(SUM(mci_n_salidaspgtomanual), 0),
        IFNULL(SUM(mci_n_entradacaixa), 0),
        IFNULL(SUM(mci_n_reforcocaixa), 0),
        IFNULL(SUM(mci_n_retiradacaixa), 0),
        int_wclicodigo,
        vch_wusuario,
        IFNULL(SUM(mci_n_entradaspos), 0),
        IFNULL(SUM(mci_n_saidaspos), 0),
        IFNULL(SUM(mci_n_promocoes), 0),
        IFNULL(SUM(mci_n_saidaspromocoes), 0),
        IFNULL(SUM(mci_n_diferencapromocoes), 0),
        int_wcodigo,
        dtm_wabertura,
        vch_wnomecasa,
        IFNULL(SUM(mci_n_retirosefectivo), 0),
        IFNULL(SUM(mci_n_cancelamento), 0),
        IFNULL(SUM(mci_n_retidodevolucaoant), 0),
        IFNULL(SUM(mci_n_saldopromodia), 0),
        IFNULL(SUM(mci_n_saldosaidapromo), 0));

        ELSE
        SET _int_n = 9;
        SELECT Min(mci_d_abertura)   
        INTO _dtm_wabertura 
        FROM	cas_mci_mexcierres
        WHERE mci_n_codigoconsolidado = _int_codigoconsolidado;

        SET _int_n = 10;
        SELECT 
        mci_n_interes,mci_n_interesfederal, mci_n_interesestatal
        INTO _int_winteres, _int_winteresfederal, _int_winteresestatal
        FROM	cas_mci_mexcierres
        WHERE mci_n_codigoconsolidado = _int_codigoconsolidado;

        SET _int_n = 11;
        SELECT fco_d_data, fco_n_clicodigo, cli_c_usuario
        INTO _dtm_wfecha , _int_wclicodigo, _vch_wusuario 
        FROM cas_fco_fechamentoconsolidado
        LEFT JOIN cas_cli_clientes
        ON	fco_n_clicodigo = cli_n_codigo
        WHERE fco_n_codigo = _int_codigoconsolidado;

        SET _int_wcodigo = _int_codigoconsolidado;
        SET _int_n = 12;

        INSERT INTO _exectemp(
        totalentradas,
        totalsalidas,
        vretenidohoy,
        vretenido60dias,
        vretenidoborrados,
        vcortesiadinero,
        vcortesiabebidas,
        vcortesiaaverias,
        vsalidasant,
        vpremiospagos,
        ventradasmaquina,
        vintereslocal,
        vinteresfederal,
        vinteresestatal,
        fecha,
        entradasticket,
        entradasdinheiro,
        entradasticketcaixa,
        salidaspgtomanual,
        entradacaixa,
        reforcocaixa,
        retiradacaixa,
        codigousuario,
        nomeusuario,
        entradapos,
        saidapos,
        promocoes,
        saidaspromocoes,
        diferencapromocoes,
        numerocontrole,
        dtabertura,
        nomecasa,
        retirosefectivo,
        cancelamento,
        retidodevolucaoant,
        saldopromodia,
        saldosaidapromo
        )
        (SELECT

        IFNULL(SUM(mci_n_entrada), 0), 
        IFNULL(SUM(mci_n_salida), 0),
        IFNULL(SUM(mci_n_retenidohoy), 0),
        IFNULL(SUM(mci_n_retenido60dias), 0),
        IFNULL(SUM(mci_n_retenidoborrados), 0),
        IFNULL(SUM(mci_n_cortesiadinero), 0),
        IFNULL(SUM(mci_n_cortesiabebidas), 0),
        IFNULL(SUM(mci_n_cortesiaaverias), 0),
        IFNULL(SUM(mci_n_salidasant), 0),
        IFNULL(SUM(mci_n_premiospagos), 0),
        IFNULL(SUM(mci_n_entradasmaquinas), 0),
        _int_winteres,
        _int_winteresfederal,
        _int_winteresestatal,
        _dtm_wfecha,
        IFNULL(SUM(mci_n_entradasticket), 0),
        IFNULL(SUM(mci_n_entradasdinheiro), 0),
        IFNULL(SUM(mci_n_entradasticketcaixa), 0),
        IFNULL(SUM(mci_n_salidaspgtomanual), 0),
        IFNULL(SUM(mci_n_entradacaixa), 0),
        IFNULL(SUM(mci_n_reforcocaixa), 0),
        IFNULL(SUM(mci_n_retiradacaixa), 0),
        _int_wclicodigo,
        _vch_wusuario,
        IFNULL(SUM(mci_n_entradaspos), 0),
        IFNULL(SUM(mci_n_saidaspos), 0),
        IFNULL(SUM(mci_n_promocoes), 0),
        IFNULL(SUM(mci_n_saidaspromocoes), 0),
        IFNULL(SUM(mci_n_diferencapromocoes), 0),
        _int_wcodigo,
        _dtm_wabertura,
        _vch_wnomecasa,
        IFNULL(SUM(mci_n_retirosefectivo), 0),
        IFNULL(SUM(mci_n_cancelamento), 0),
        IFNULL(SUM(mci_n_retidodevolucaoant), 0),
        IFNULL(SUM(mci_n_saldopromodia), 0),
        IFNULL(SUM(mci_n_saldosaidapromo), 0)
        FROM	cas_mci_mexcierres
        LEFT JOIN 	cas_cli_clientes
        ON	cli_n_codigo = mci_n_clicodigo
        WHERE mci_n_codigoconsolidado = _int_codigoconsolidado);

    END IF;

    SET _int_n = 13;
    SELECT IFNULL(totalentradas, 0) AS totalentradas, IFNULL(totalsalidas, 0) AS salidas, IFNULL(vretenidohoy, 0) AS vretenidohoy,
    IFNULL(vretenido60dias, 0) AS vretenido60dias, IFNULL(vretenidoborrados, 0) AS vretenidoborrados, IFNULL(vcortesiadinero, 0) AS vcortesiadinero,
    IFNULL(vcortesiabebidas, 0) AS vcortesiabebidas, IFNULL(vcortesiaaverias, 0) AS vcortesiaaverias, IFNULL(vsalidasant, 0) AS vsalidasant,
    IFNULL(vpremiospagos, 0) AS vpremiospagos, IFNULL(ventradasmaquina, 0) AS ventradasmaquina, 
    CASE _bit_wcalcularvendas 
    WHEN 1 THEN (IFNULL(totalsalidas, 0) + 
    CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED) + 
    IFNULL(vsalidasant, 0) + IFNULL(salidaspgtomanual, 0)) - cancelamento
    ELSE (IFNULL(totalsalidas, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED) + 
    IFNULL(vsalidasant, 0) + IFNULL(salidaspgtomanual, 0)) 
    END AS saidatotal,

    ((IFNULL(totalentradas, 0) + IFNULL(entradacaixa, 0) + IFNULL(reforcocaixa, 0)) - 
    (IFNULL(totalsalidas, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED) + 
    IFNULL(vsalidasant, 0) + IFNULL(salidaspgtomanual, 0) + IFNULL(retiradacaixa, 0))) AS saldo,
    (((IFNULL(vpremiospagos, 0) / 100) * vinteresfederal) / 100) AS deducao1,
    (((IFNULL(vpremiospagos, 0) / 100) * vinteresestatal) / 100) AS deducao2,

    ((IFNULL((totalentradas - entradasdinheiro), 0) + IFNULL(entradacaixa, 0) + IFNULL(reforcocaixa, 0)) - 
    (IFNULL(totalsalidas, 0) + IFNULL(vsalidasant, 0) + IFNULL(salidaspgtomanual, 0) + IFNULL(retiradacaixa, 0))) AS saldonet,
    CASE _bit_wexibecupomb
    WHEN 1 THEN CASE WHEN (((((IFNULL(TotalEntradas, 0) * 8) / 10) / 100) * vintereslocal) / 100) < 0 THEN 0 ELSE (((((IFNULL(TotalEntradas, 0) * 8) / 10) / 100) * vintereslocal) / 100) END
    WHEN 0 THEN CASE WHEN ((((IFNULL(totalentradas, 0) - cancelamento) / 100) * vintereslocal) / 100) < 0 THEN 0 ELSE ((((IFNULL(totalentradas, 0) - cancelamento) / 100) * vintereslocal) / 100) END
    ELSE CASE WHEN (((IFNULL(totalentradas, 0) / 100) * vintereslocal) / 100) < 0 THEN 0 ELSE (((IFNULL(totalentradas, 0) / 100) * vintereslocal) / 100) END
    END AS DeducaoEntrada,
    (DATE_FORMAT(fecha, '%d-%m-%Y')) AS data, IFNULL(totalsalidas, 0) AS totalsalidas, IFNULL(entradasticket, 0) AS entradasticket,
    IFNULL(entradasdinheiro, 0) AS entradasdinheiro, IFNULL(entradasticketcaixa, 0) AS entradasticketcaixa,
    IFNULL(salidaspgtomanual, 0) AS salidaspgtomanual, (IFNULL(totalentradas, 0) - IFNULL(totalsalidas, 0)) AS valor7,
    (((IFNULL(vpremiospagos, 0) / 100) * vinteresfederal) / 100) AS valor8, (((IFNULL(vpremiospagos, 0) / 100) * vinteresestatal) / 100) AS valor9,
    ((IFNULL(vretenidohoy, 0) - vpremiospagos) * ((vinteresfederal + vinteresestatal) / 100)) AS valor10,
    (((IFNULL(totalentradas, 0) / 100) * vintereslocal) / 100) AS valor11,
    (IFNULL(totalsalidas, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED)) AS saidashoje,
    IFNULL(entradacaixa, 0) AS entradacaixa, IFNULL(reforcocaixa, 0) AS reforcocaixa, IFNULL(retiradacaixa, 0) AS retiradacaixa,
    codigousuario AS codigousuario, nomeusuario AS nomeusuario, IFNULL(entradapos, 0) AS entradapos, IFNULL(saidapos, 0) AS saidapos,
    IFNULL(saldopromodia,0) AS promocoes, IFNULL(saidaspromocoes, 0) AS saidaspromocoes, IFNULL(diferencapromocoes, 0) AS diferencapromocoes,
    numerocontrole AS numerocontrole, dtabertura AS dtabertura, nomecasa AS nomecasa, fecha AS fecha,
    (IFNULL(totalentradas, 0)) - (IFNULL(totalsalidas, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED) + 
    IFNULL(vSalidasAnt, 0) + IFNULL(SalidasPgtoManual, 0)) AS resultado, (((IFNULL(TotalEntradas, 0) * 8) / 10)) AS efectivo, retirosefectivo AS retirosefectivo,
    cancelamento AS cancelamento, (IFNULL(TotalEntradas, 0) + bonif) - (IFNULL(TotalSalidas, 0) + IFNULL(vSalidasAnt, 0) + IFNULL(saldosaidapromo, 0) + 
    CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED) + 
    IFNULL(SalidasPgtoManual, 0) + (IFNULL(vRetenidoHoy,0) - IFNULL(saldopromodia,0)) + IFNULL(retidodevolucaoant, 0)) AS rentabcaixa,
    retidodevolucaoant AS retidodevolucaoant, 0 As exibirfabricantes,
    IFNULL(_int_idCasa, 0)	As idtransacao,
    '' as maquina, '' as clinome, 0 as clicodigo			  							
    FROM _exectemp
    ORDER BY fecha ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wconsultarentalintervalo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wconsultarentalintervalo`(
    _vch_dtinicio           CHAR(10),       	
    _int_intervalo          INT, 
    _bit_total              TINYINT(1),			
    _int_codmodalidade		INT, 
    _int_codfabricante      INT
)
BEGIN
    DECLARE _int_n INT;
    DECLARE _dt_datafim			DATE;		
    DECLARE _dt_datafim2		   DATE;
    DECLARE _dt_datatempinicio	DATE;
    DECLARE _dt_datatempfim		DATE;
    DECLARE _int_cont			    INT;	
    DECLARE _int_periodo		    INT;	
    DECLARE _int_i				    INT;
    DECLARE _bint_valorentrada	 INT;		
    DECLARE _bing_valorsaida	 INT;
    DECLARE _bint_acumulado		 INT;
    DECLARE _int_qtd			    INT;
    DECLARE _int_codmodelo		 INT;	
    DECLARE _vch_descmodelo		 VARCHAR(50);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _dt_datafim  = DATE_ADD(CAST(_vch_dtinicio AS DATE), INTERVAL _int_intervalo DAY);
    SET _dt_datafim2 = DATE_ADD(CAST(_vch_dtinicio AS DATE), INTERVAL _int_intervalo*5 DAY);

    SET _int_n = 1;
    CREATE TEMPORARY TABLE _temprelatorio(codmodelo INT, descmodelo VARCHAR(50), DATA DATE, 
    entradas INT, saidas INT, qtd INT, acumulado INT, ativo INT);

    IF(_int_codmodalidade = -1 AND _int_codfabricante = -1)
    THEN
        SET _int_n = 2;
        INSERT INTO _temprelatorio(codmodelo, descmodelo, data, entradas, saidas, qtd, acumulado, ativo)
        SELECT DISTINCT mco_n_modelo, mdl_c_descricao, '19000101', 0, 0, 0, 0, 1
        FROM cas_mco_mexconta INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo
        WHERE CAST(mco_d_fecha AS DATE) >= CAST(_vch_dtinicio AS DATE)
        AND	CAST(mco_d_fecha AS DATE) <= _dt_datafim2;
    ELSE
        IF (_int_codmodalidade > 0 AND _int_codfabricante = -1)
        THEN
            SET _int_n = 3;
            INSERT INTO _temprelatorio(codmodelo, descmodelo, data, entradas, saidas, qtd, acumulado, ativo)
            SELECT DISTINCT mco_n_modelo, mdl_c_descricao, '19000101', 0, 0, 0, 0, 1
            FROM cas_mco_mexconta INNER JOIN cas_mdl_mexmodelos	ON mdl_n_codigo = mco_n_modelo
            WHERE mdl_n_codmodalidade = _int_codmodalidade
            AND CAST(mco_d_fecha AS DATE) >= CAST(_vch_dtinicio AS DATE)
            AND	CAST(mco_d_fecha AS DATE) <= _dt_datafim2;
        ELSE
            IF (_int_codmodalidade = -1 AND _int_codfabricante > 0)
            THEN
                SET _int_n = 4;
                INSERT INTO _temprelatorio(codmodelo, descmodelo, data, entradas, saidas, qtd, acumulado, ativo)
                SELECT DISTINCT mco_n_modelo, mdl_c_descricao, '19000101', 0, 0, 0, 0, 1
                FROM cas_mco_mexconta INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo
                WHERE mdl_n_codfabricante = _int_codfabricante
                AND CAST(mco_d_fecha AS DATE) >= CAST(_vch_dtinicio AS DATE)
                AND	CAST(mco_d_fecha AS DATE) <= _dt_datafim2;
            ELSE
                SET _int_n = 5;
                INSERT INTO _temprelatorio(codmodelo, descmodelo, data, entradas, saidas, qtd, acumulado, ativo)
                SELECT DISTINCT mco_n_modelo, mdl_c_descricao, '19000101', 0, 0, 0, 0, 1
                FROM cas_mco_mexconta INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo
                WHERE mdl_n_codfabricante = _int_codfabricante
                AND mdl_n_codmodalidade = _int_codmodalidade
                AND CAST(mco_d_fecha AS DATE) >= CAST(_vch_dtinicio AS DATE)
                AND	CAST(mco_d_fecha AS DATE) <= _dt_datafim2;
            END IF;
        END IF;
    END IF;

    SET _int_n = 6;
    SELECT COUNT(*)
    INTO _int_cont 
    FROM _temprelatorio;

    SET _dt_datatempinicio = CAST(_vch_dtinicio AS DATE),	
        _dt_datatempfim = _dt_datafim,	
        _int_periodo = 0,	
        _int_i = 0;

    WHILE _int_i < _int_cont
    DO

        SET _bint_valorentrada = 0,	_bing_valorsaida = 0, _bint_acumulado = 0;

        SET _int_n = 7;
        SELECT codmodelo, descmodelo
        INTO _int_codmodelo,_vch_descmodelo  
        FROM _temprelatorio 
        WHERE ativo = 1 LIMIT 1;

        IF (_int_periodo < 5)
        THEN
            IF (_bit_total = 1)
            THEN
                SET _int_n = 8;
                SELECT  SUM(mco_n_totalentradas), 
                        SUM(mco_n_totalsalidas), 
                        SUM(mco_n_totalacumulado)
                INTO    _bint_valorentrada, 
                        _bing_valorsaida , 
                        _bint_acumulado 
                FROM    cas_mco_mexconta
                WHERE   CAST(mco_d_fecha AS DATE) >= _dt_datatempinicio
                AND     CAST(mco_d_fecha AS DATE) <= _dt_datatempfim
                AND     mco_n_modelo = _int_codmodelo;
            ELSE
                SET _int_n = 9;
                SELECT  SUM(mco_n_entradas), 
                        SUM(mco_n_salidas), 
                        SUM(mco_n_acumulado)
                INTO _bint_valorentrada , _bing_valorsaida, _bint_acumulado 
                FROM cas_mco_mexconta
                WHERE CAST(mco_d_fecha AS DATE) >= _dt_datatempinicio
                AND CAST(mco_d_fecha AS DATE) <= _dt_datatempfim
                AND mco_n_modelo = _int_codmodelo;
            END IF;

            SET _int_n = 10;
            SELECT COUNT(*)
            INTO _int_qtd 
            FROM (SELECT DISTINCT mco_c_ip
            FROM cas_mco_mexconta
            WHERE CAST(mco_d_fecha AS DATE) >= _dt_datatempinicio
            AND	CAST(mco_d_fecha AS DATE) <= _dt_datatempfim
            AND mco_n_modelo = _int_codmodelo
            AND IFNULL(mco_n_entradas, 0) > 0) AS MAQIP;

            SET _int_n = 11;
            INSERT INTO _temprelatorio(codmodelo, descmodelo, data, entradas, saidas, qtd, acumulado, 	ativo)
            VALUES(_int_codmodelo, _vch_descmodelo, _dt_datatempinicio, _bint_valorentrada, _bing_valorsaida, _int_qtd, _bint_acumulado, 0);

            SET _dt_datatempinicio = DATE_ADD(_dt_datatempfim, INTERVAL 1 DAY);
            SET _dt_datatempfim = DATE_ADD(_dt_datatempinicio, INTERVAL 1 DAY);

            SET _int_periodo = _int_periodo + 1;
            ELSE
            SET _int_n = 12;
            UPDATE _temprelatorio
            SET ativo = 0
            WHERE codmodelo = _int_codmodelo;

            SET _int_n = 13;
            SELECT _int_i = _int_i + 1, _int_periodo = 0, _dt_datatempinicio = CAST(_vch_dtinicio AS DATE), _dt_datatempfim = _dt_datafim;
        END IF;
    END WHILE;

    SET _int_n = 14;
    DELETE FROM _temprelatorio 
    WHERE data = '19000101';

    SET _int_n = 15;
    SELECT codmodelo, descmodelo, CAST(data AS CHAR(30)) AS data, IFNULL(entradas, 0) AS entradas, IFNULL(saidas, 0) AS saidas,
    (IFNULL(entradas, 0) - IFNULL(saidas, 0)) AS saldo, IFNULL(qtd, 0) AS qtd, IFNULL(acumulado, 0) AS acumulado
    FROM _temprelatorio
    ORDER BY descmodelo, data;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wconsultarentalperiodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wconsultarentalperiodo`(
    _vch_wdatainicio	VARCHAR(10),	
    _vch_wdatafinal	VARCHAR(10),	
    _int_modelo	INT,	
    _int_codmodalidade	INT,	
    _int_codfabricante	BIGINT
)
BEGIN
    DECLARE _int_n                  INT;
    DECLARE _int_i                  INT;
    DECLARE _int_cont               INT;	
    DECLARE _vch_ip                 VARCHAR(50);
    DECLARE _int_codmodelo          INT;
    DECLARE _bint_valorentrada      BIGINT;
    DECLARE _bint_valorsaida        BIGINT;
    DECLARE _bint_acumulado         BIGINT;
    DECLARE _dtm_wdataleitura       DATETIME;
    DECLARE _int_qtd                INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

    SET _bint_valorentrada = 0;
    SET _bint_valorsaida = 0;
    SET _bint_acumulado = 0;

    SET _int_n = 1;

	CREATE TEMPORARY TABLE _exectemp(codigo INT, modelo VARCHAR(50), entradas BIGINT, saidas BIGINT, 
		ativo INT, qtd INT, acumulado BIGINT, ip VARCHAR(50), codigomaq VARCHAR(20));
	
	IF (_int_modelo > 0)
	THEN
        SET _int_n = 2;

        INSERT INTO _exectemp(codigo, modelo, entradas, saidas, qtd, acumulado, ativo, ip, codigomaq)
        SELECT distinct	0, 0, 0, 0, 0, 0, 1, mco_c_ip, amn_c_codigo
        FROM cas_mdl_mexmodelos INNER JOIN cas_mco_mexconta ON mco_n_modelo = mdl_n_codigo
        LEFT JOIN cas_amn_associaipmaquina ON mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
        WHERE mco_n_modelo = _int_modelo
        AND CAST(mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
        AND CAST(mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE);

        SELECT _int_cont = COUNT(*) 
        FROM _exectemp;

        SET _int_i = 0;

        WHILE _int_i < _int_cont
        DO
            SET _int_n = 3;
            SELECT  _vch_ip = ip 
            FROM _exectemp 
            WHERE ativo = 1 LIMIT 1;

            SET _int_n = 4;
            SELECT SUM(mco_n_entradas), SUM(mco_n_salidas), SUM(mco_n_acumulado)
            INTO _bint_valorentrada, _bint_valorsaida, _bint_acumulado 
            FROM cas_mco_mexconta
            WHERE CAST(mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
            AND	CAST(mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
            AND mco_c_ip = _vch_ip;

            SET _int_n = 5;
            UPDATE _exectemp 
            SET entradas = _bint_valorentrada, saidas = _bint_valorsaida, acumulado = _bint_acumulado, ativo = 0
            WHERE ip = _vch_ip;

            SET _int_i = _int_i + 1;

        END WHILE;
    ELSE
        IF(_int_codmodalidade = -1 AND _int_codfabricante = -1)
        THEN
            SET _int_n = 6;
            INSERT INTO _exectemp(codigo, modelo, entradas, saidas, qtd, acumulado, ativo, ip, codigomaq)
            SELECT DISTINCT mdl_n_codigo, mdl_c_descricao, 0, 0, 0, 0, 1, '', ''
            FROM cas_mdl_mexmodelos INNER JOIN cas_mco_mexconta ON mco_n_modelo = mdl_n_codigo;
        ELSE
            IF(_int_codmodalidade > 0 AND _int_codfabricante = -1)
            THEN
                SET _int_n = 7;
                INSERT INTO _exectemp(codigo, modelo, entradas, saidas, qtd, acumulado, ativo, ip, codigomaq)
                SELECT DISTINCT mdl_n_codigo, mdl_c_descricao, 0, 0, 0, 0, 1, '', ''
                FROM cas_mdl_mexmodelos INNER JOIN cas_mco_mexconta ON mco_n_modelo = mdl_n_codigo
                WHERE mdl_n_codmodalidade = _int_codmodalidade;
            ELSE
                IF(_int_codmodalidade = -1 AND _int_codfabricante > 0)
                THEN
                    SET _int_n = 8;
                    INSERT INTO _exectemp(codigo, modelo, entradas, saidas, qtd, acumulado, ativo, ip, codigomaq)
                    SELECT DISTINCT mdl_n_codigo, mdl_c_descricao, 0, 0, 0, 0, 1, '', ''
                    FROM cas_mdl_mexmodelos INNER JOIN cas_mco_mexconta ON mco_n_modelo = mdl_n_codigo
                    WHERE mdl_n_codfabricante = _int_codfabricante ;
                ELSE
                    SET _int_n = 9;
                    INSERT INTO _exectemp(codigo, modelo, entradas, saidas, qtd, acumulado, ativo, ip, codigomaq)
                    SELECT DISTINCT mdl_n_codigo, mdl_c_descricao, 0, 0, 0, 0, 1, '', ''
                    FROM cas_mdl_mexmodelos INNER JOIN cas_mco_mexconta ON mco_n_modelo = mdl_n_codigo
                    WHERE mdl_n_codfabricante = _int_codfabricante 
                    AND mdl_n_codmodalidade = _int_codmodalidade;
                END IF;
            END IF;
        END IF;

            SELECT COUNT(*) 
            INTO _int_cont 
            FROM _exectemp;

            SET _int_i = 0;

            WHILE _int_i < _int_cont
            DO

                SET _int_n = 10;
                SELECT  ip, codigo 
                INTO _vch_ip, _int_codmodelo  
                FROM _exectemp 
                WHERE ativo = 1 LIMIT 1;

                SET _int_n = 11;
                SELECT mco_d_fecha
                INTO _dtm_wdataleitura 
                FROM cas_mco_mexconta
                WHERE CAST(mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
                AND	CAST(mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
                AND mco_n_modelo = _int_codmodelo 
                ORDER BY mco_d_fecha DESC LIMIT 1;

                SET _int_n = 12;
                SELECT SUM(mco_n_entradas), SUM(mco_n_salidas),SUM(mco_n_acumulado)
                INTO _bint_valorentrada, _bint_valorsaida, _bint_acumulado 
                FROM cas_mco_mexconta
                WHERE CAST(mco_d_fecha AS DATE) >= CAST(_vch_wdatainicio AS DATE)
                AND	CAST(mco_d_fecha AS DATE) <= CAST(_vch_wdatafinal AS DATE)
                AND mco_n_modelo = _int_codmodelo;

                SET _int_n = 13;
                SELECT COUNT(*) 
                INTO _int_qtd 
                FROM (SELECT DISTINCT mco_c_ip
                FROM cas_mco_mexconta
                WHERE CAST(mco_d_fecha AS DATE) = CAST(_dtm_wdataleitura AS DATE)
                AND mco_n_modelo = _int_codmodelo
                AND IFNULL(mco_n_entradas, 0) > 0) AS IPMAQ;

                SET _int_n = 14;
                UPDATE _exectemp 
                SET entradas = _bint_valorentrada, saidas = _bint_valorsaida, qtd = _int_qtd, acumulado = _bint_acumulado, ativo = 0
                WHERE codigo = _int_codmodelo;

                SET _int_i = _int_i + 1;
            END WHILE;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wconsultaticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wconsultaticket`(
    _vch_datainicio	VARCHAR(8),	_vch_datafim	VARCHAR(8),	_vch_codeticket	VARCHAR(8),	
	_vch_ativo		VARCHAR(50),	_vch_fechado	VARCHAR(50),	_vch_bloqueado		VARCHAR(50)
)
BEGIN
    DECLARE _int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;
    
    IF (_vch_codeticket = '')
    THEN
		SET _vch_codeticket = NULL;
    END IF;

	IF (_vch_datainicio = '' or _vch_datainicio IS NULL) 
	THEN SET _vch_datainicio = '19000101';
   END IF;

	IF (_vch_datafim = '' or _vch_datafim IS NULL) 
	THEN SET _vch_datafim = '21000101';
   END IF;

	SET _int_n = 1;
	SELECT IFNULL(tck_c_code, '') AS tck_c_code, (CAST(IFNULL(tck_n_entrada, 0) AS DECIMAL(18,2)) / 100) AS tck_n_entrada,
		(CAST(IFNULL(tck_n_salida, 0) AS DECIMAL(18,2)) / 100) AS tck_n_salida,
		(CAST(IFNULL(tck_n_saldo, 0) AS DECIMAL(18,2)) / 100) AS tck_n_saldo,
		IFNULL(tck_n_activa, 0) AS tck_n_activa, IFNULL(tck_n_blocked, 0) AS tck_n_blocked,
		(CAST(IFNULL(tck_n_saldoant, 0) AS DECIMAL(18,2)) / 100) AS tck_n_saldoant, tck_d_fecha AS tck_d_fecha,
		CASE
			WHEN tck_n_activa = 1 AND tck_n_blocked = 0 THEN _vch_ativo
			WHEN tck_n_activa = 1 AND tck_n_blocked = 1 THEN _vch_bloqueado
			ELSE _vch_fechado
		END AS statusinfor,
		Cli.cli_c_name As Name		
		FROM cas_tck_mextickets As Tck
		Inner Join cas_cli_clientes As Cli
		on
			Tck.tck_n_codecliente = Cli.cli_n_codigo
		WHERE tck_c_code = IFNULL(_vch_codeticket, tck_c_code)
		AND	tck_d_fecha >= Cast(_vch_datainicio As DATE)
		AND tck_d_fecha <= DATE_ADD(Cast(_vch_datafim As DATE), INTERVAL 1 DAY);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wconsultaticketdetalhe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wconsultaticketdetalhe`(
    _vch_codeticket	VARCHAR(8)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    CREATE TEMPORARY TABLE _exectemp(code	VARCHAR(8), tipomov INT, valor INT, fecha DATETIME, codigo VARCHAR(100), modelo VARCHAR(50));

    SET _int_n = 2;
    INSERT INTO _exectemp
    SELECT mvi_c_code, mvi_n_tipomov, mvi_n_valor, mvi_d_fecha, IFNULL(amn_c_codigo, mvi_c_ip), mdl_c_descricao
    FROM cas_mvi_mexmovimientos	
    LEFT JOIN cas_amn_associaipmaquina ON mvi_c_ip = amn_c_ip
    LEFT JOIN cas_mdl_mexmodelos ON mdl_n_codigo = amn_n_modelo
    WHERE mvi_c_code = _vch_codeticket;

    SET _int_n = 3;
    INSERT INTO _exectemp
    SELECT mvh_c_code, mvh_n_tipomov, mvh_n_valor, mvh_d_fecha, IFNULL(amn_c_codigo, mvh_c_ip), mdl_c_descricao
    FROM cas_mvh_movimentoshist 
    LEFT JOIN cas_amn_associaipmaquina ON mvh_c_ip = amn_c_ip
    LEFT JOIN cas_mdl_mexmodelos ON mdl_n_codigo = amn_n_modelo
    WHERE mvh_c_code = _vch_codeticket;

    SET _int_n = 4;
    SELECT DISTINCT code, tipomov, valor, fecha, codigo, modelo		
    FROM _exectemp
    ORDER BY fecha;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wlistarentalfab` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wlistarentalfab`(
    _bit_gravadados             TINYINT(1),	
    _int_codigo                 INT,	
    _bit_consultargravado       TINYINT(1)
)
BEGIN

    DECLARE _bit_wimprimir              TINYINT(1);
    DECLARE _bint_wsoma                 BIGINT;
    DECLARE _bit_wenviadadosfabricante  TINYINT(1);
    DECLARE _int_wcount                 INT;
    DECLARE _int_n                      INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    SELECT prt_b_enviarcontfab
    INTO _bit_wenviadadosfabricante 
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));

    SET _int_n = 2;
    SELECT _int_wcount = COUNT(*)
    FROM cas_pfb_posfabricantes 
    WHERE pfb_b_status = 1;

    IF (_int_wcount = 0)
    THEN
    SET _int_n = 3;
    DELETE FROM cas_pfb_posfabricantes;

    SET _int_n = 4;
    INSERT INTO cas_pfb_posfabricantes(pfb_n_codigo, pfb_c_descricao, pfb_b_status, pfb_d_datainclusao)
    VALUES (1, 'ORTIZ GAMING', 1, CURDATE());
    END IF;

    SET _int_n = 5;
    CREATE TEMPORARY TABLE _exectemp(
    fabricante		VARCHAR(50),
    rentabilidade	    BIGINT,
    codfabricante	    BIGINT
    );

    IF (_bit_consultargravado = 1)
    THEN
        SET _int_n = 6;
        INSERT INTO _exectemp 
        SELECT Fab.pfb_c_descricao, rfa_n_rentabilidade, Fab.pfb_n_codigo
        FROM cas_rfa_rentabilfab Ren INNER JOIN cas_pfb_posfabricantes Fab ON Fab.pfb_n_codigo = Ren.rfa_n_codfabricante 
        WHERE rfa_n_cierre = _int_codigo
        AND Fab.pfb_b_status = 1;
    ELSE
        SET _int_n = 7;
        INSERT INTO _exectemp 
        SELECT pfb_c_descricao, (SELECT IFNULL(SUM(mco_n_entradas) - SUM(mco_n_salidas), 0)
        FROM cas_mco_mexconta INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo and mdl_n_codfabricante = Fab.pfb_n_codigo
        WHERE mco_n_atual = 1) AS Rentabilidade, Fab.pfb_n_codigo
        FROM cas_pfb_posfabricantes Fab
        WHERE Fab.pfb_b_status = 1;
    END IF; 

    SET _int_n = 8;
    SELECT COUNT(*)
    INTO _bint_wsoma
    FROM _exectemp;

    IF (_bint_wsoma > 0 AND _bit_wenviadadosfabricante = 1)
    THEN
    SET _bit_wimprimir = 1;
    ELSE
    SET _bit_wimprimir = 0;
    END IF;


    IF ((_bit_gravadados = 1) AND (_bit_wimprimir = 1))
    THEN
        SET _int_n = 9;
        INSERT INTO cas_rfa_rentabilfab 
        SELECT _int_codigo, codfabricante, rentabilidade			
        FROM _exectemp;
    END IF;

    IF (_bit_gravadados = 0)
    THEN
        SET _int_n = 10;
        SELECT fabricante, rentabilidade, _bit_wimprimir AS imprimir
        FROM _exectemp
        ORDER BY rentabilidade DESC;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wmexconsultacierrediaticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wmexconsultacierrediaticket`(
    _vch_datainicio		VARCHAR(10),	
    _vch_datafinal		VARCHAR(10), 
    _vch_maquina			VARCHAR(16),	
    _int_coduser		INT 
)
BEGIN
    DECLARE _int_n                  INT;
    DECLARE _int_tmp                INT;
    DECLARE _vch_wnomecasa          VARCHAR(50);
    DECLARE _bit_wcalcularvendas    TINYINT(1);
    DECLARE _bit_wexibirfabricantes TINYINT(1);

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
    
    SET _int_n = 1;
    SELECT  prt_b_calcularvendas, prt_b_enviarcontfab
    INTO _bit_wcalcularvendas, _bit_wexibirfabricantes 
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));

    SET _int_n = 4;
    SELECT msw_c_cabnomecasa 
    INTO _vch_wnomecasa 
    FROM cas_msw_mensagem LIMIT 1;

    SET _int_n = 5;

    SELECT COUNT(*)
    INTO _int_tmp 
    FROM cas_mci_mexcierres 
    WHERE mci_d_fecha >= _vch_datainicio 
    AND mci_d_fecha <= _vch_datafinal;

        SET _int_n = 6;
        CREATE TEMPORARY TABLE _exectemp(
        totalentradas       BIGINT, 
        totalsalidas        BIGINT, 
        vretenidohoy        BIGINT, 
        vretenido60dias     BIGINT, 
        vretenidoborrados   BIGINT,
        vcortesiadinero     BIGINT, 
        vcortesiabebidas    BIGINT, 
        vcortesiaaverias    BIGINT, 
        vsalidasant         BIGINT, 
        vpremiospagos       BIGINT, 
        ventradasmaquina    BIGINT,
        vintereslocal       DECIMAL, 
        vinteresfederal     DECIMAL, 
        vinteresestatal     DECIMAL, 
        fecha               DATETIME(6), 
        entradasticket      BIGINT,
        entradasdinheiro    BIGINT, 
        entradasticketcaixa BIGINT, 
        salidaspgtomanual   BIGINT, 
        entradacaixa        BIGINT, 
        reforcocaixa        BIGINT, 
        retiradacaixa       BIGINT,
        codigousuario       INT, 
        nomeusuario         VARCHAR(100), 
        entradapos          BIGINT, 
        saidapos            BIGINT, 
        promocoes           BIGINT, 
        saidaspromocoes     BIGINT, 
        diferencapromocoes  BIGINT, 
        numerocontrole      INT, 
        dtabertura          DATETIME, 
        nomecasa            VARCHAR(50), 
        resultado           BIGINT, 
        retirosefectivo     BIGINT,
        cancelamento        BIGINT, 
        retidodevolucaoant  BIGINT, 
        saldopromodia       BIGINT, 
        saldosaidapromo     BIGINT, 
        clinome             VARCHAR(100), 
        clicodigo           INT, 
        maquina             VARCHAR(100)
        );

        IF (_int_coduser <> 0)
        THEN
        SET _int_n = 7;
        INSERT INTO _exectemp
        (
        totalentradas, 
        totalsalidas, 
        vretenidohoy, 
        vretenido60dias, 
        vretenidoborrados, 
        vcortesiadinero, 
        vcortesiabebidas,
        vcortesiaaverias, 
        vsalidasant, 
        vpremiospagos, 
        ventradasmaquina, 
        vintereslocal, 
        vinteresfederal, 
        vinteresestatal, 
        fecha, 
        entradasticket, 
        entradasdinheiro, 
        entradasticketcaixa, 
        salidaspgtomanual, 
        entradacaixa, 
        reforcocaixa, 
        retiradacaixa,
        codigousuario, 
        nomeusuario, 
        entradapos, 
        saidapos, 
        promocoes, 
        saidaspromocoes, 
        diferencapromocoes, 
        numerocontrole, 
        dtabertura,
        nomecasa, 
        retirosefectivo, 
        cancelamento, 
        retidodevolucaoant, 
        saldopromodia, 
        saldosaidapromo, 
        clinome, 
        clicodigo, 
        maquina)
        SELECT mci_n_entrada, 
        mci_n_salida, 
        mci_n_retenidohoy, 
        mci_n_retenido60dias, 
        mci_n_retenidoborrados, 
        mci_n_cortesiadinero, 
        mci_n_cortesiabebidas,
        mci_n_cortesiaaverias, 
        mci_n_salidasant, 
        mci_n_premiospagos, 
        mci_n_entradasmaquinas, 
        mci_n_interes, 
        mci_n_interesfederal, 
        mci_n_interesestatal,
        mci_d_fecha, 
        mci_n_entradasticket, 
        mci_n_entradasdinheiro, 
        mci_n_entradasticketcaixa, 
        mci_n_salidaspgtomanual,
        mci_n_entradacaixa, 
        mci_n_reforcocaixa, 
        mci_n_retiradacaixa, 
        mci_n_clicodigo, 
        cli_c_name, 
        mci_n_entradaspos, 
        mci_n_saidaspos,
        mci_n_promocoes,
        mci_n_saidaspromocoes, 
        mci_n_diferencapromocoes, 
        mci_n_codigo, 
        mci_d_abertura, 
        vch_wnomecasa, 
        mci_n_retirosefectivo, 
        mci_n_cancelamento, 
        IFNULL(mci_n_retidodevolucaoant, 0), 
        IFNULL(mci_n_saldopromodia, 0), 
        IFNULL(mci_n_saldosaidapromo, 0),
        cli_c_name, 
        cli_n_codigo, 
        mci_c_maquina
        FROM cas_mci_mexcierres LEFT JOIN cas_cli_clientes ON cli_n_codigo = mci_n_clicodigo
        WHERE CAST(mci_d_fecha AS DATE) >= CAST(_vch_datainicio AS DATE)
        AND CAST(mci_d_fecha AS DATE) <= CAST(_vch_datafinal AS DATE)
        AND	mci_n_clicodigo = _int_coduser;
	ELSE
		SET _int_n = 8;
		INSERT INTO _exectemp(
        totalentradas, 
        totalsalidas, 
        vretenidohoy, 
        vretenido60dias, 
        vretenidoborrados, 
        vcortesiadinero, 
        vcortesiabebidas,
        vcortesiaaverias, 
        vsalidasant, 
        vpremiospagos, 
        ventradasmaquina, 
        vintereslocal, 
        vinteresfederal, 
        vinteresestatal, 
        fecha, 
        entradasticket, 
        entradasdinheiro, 
        entradasticketcaixa, 
        salidaspgtomanual, 
        entradacaixa, 
        reforcocaixa, 
        retiradacaixa,
        codigousuario, 
        nomeusuario, 
        entradapos, 
        saidapos, 
        promocoes, 
        saidaspromocoes, 
        diferencapromocoes, 
        numerocontrole, 
        dtabertura,
        nomecasa, 
        retirosefectivo, 


        cancelamento, 
        retidodevolucaoant, 
        saldopromodia, 
        saldosaidapromo, 

        clinome, 
        clicodigo, 
        maquina
        )
        SELECT 
        mci_n_entrada, 
        mci_n_salida, 
        mci_n_retenidohoy, 
        mci_n_retenido60dias, 
        mci_n_retenidoborrados, 
        mci_n_cortesiadinero, 
        mci_n_cortesiabebidas,
        mci_n_cortesiaaverias, 
        mci_n_salidasant, 
        mci_n_premiospagos, 
        mci_n_entradasmaquinas, 
        mci_n_interes, 
        mci_n_interesfederal, 
        mci_n_interesestatal,
        mci_d_fecha, 
        mci_n_entradasticket, 
        mci_n_entradasdinheiro, 
        mci_n_entradasticketcaixa, 
        mci_n_salidaspgtomanual, 
        mci_n_entradacaixa, 
        mci_n_reforcocaixa, 
        mci_n_retiradacaixa, 
        mci_n_clicodigo, 
        cli_c_name, 
        mci_n_entradaspos, 
        mci_n_saidaspos,
        mci_n_promocoes, 
        mci_n_saidaspromocoes, 
        mci_n_diferencapromocoes, 
        mci_n_codigo, 
        mci_d_abertura, 
        _vch_wnomecasa, 
        mci_n_retirosefectivo,
        mci_n_cancelamento, 
        IFNULL(mci_n_retidodevolucaoant, 0), 
        IFNULL(mci_n_saldopromodia, 0),
        IFNULL(mci_n_saldosaidapromo, 0), 
        cli_c_name, 
        cli_n_codigo, 
        mci_c_maquina
        FROM cas_mci_mexcierres LEFT JOIN cas_cli_clientes ON cli_n_codigo = mci_n_clicodigo
        WHERE CAST(mci_d_fecha AS DATE) >= CAST(_vch_datainicio AS DATE) 
        AND CAST(mci_d_fecha AS DATE) <= CAST(_vch_datafinal AS DATE);       
        END IF;

        SET _int_n = 9;
        SELECT IFNULL(totalentradas, 0) AS totalentradas, IFNULL(totalsalidas, 0) AS salidas, IFNULL(vretenidohoy, 0) AS vretenidohoy,
        IFNULL(vretenido60dias, 0) AS vretenido60dias, IFNULL(vretenidoborrados, 0) AS vretenidoborrados, IFNULL(vcortesiadinero, 0) AS vcortesiadinero,
        IFNULL(vcortesiabebidas, 0) AS vcortesiabebidas, IFNULL(vcortesiaaverias, 0) AS vcortesiaaverias, IFNULL(vsalidasant, 0) AS vsalidasant,
        IFNULL(vpremiospagos, 0) AS vpremiospagos, IFNULL(ventradasmaquina, 0) AS ventradasmaquina, 
        CASE _bit_wcalcularvendas 
        WHEN 1 THEN (IFNULL(totalsalidas, 0) + 
        CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED) + 
        IFNULL(vsalidasant, 0) + IFNULL(salidaspgtomanual, 0)) - cancelamento
        ELSE (IFNULL(totalsalidas, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED) + 
        IFNULL(vsalidasant, 0) + IFNULL(salidaspgtomanual, 0)) 
        END AS saidatotal,
        ((IFNULL(totalentradas, 0) + IFNULL(entradacaixa, 0) + IFNULL(reforcocaixa, 0)) - 
        (IFNULL(totalsalidas, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED) + 
        IFNULL(vsalidasant, 0) + IFNULL(salidaspgtomanual, 0) + IFNULL(retiradacaixa, 0))) AS saldo,
        (((IFNULL(vpremiospagos, 0) / 100) * vinteresfederal) / 100) AS deducao1,
        (((IFNULL(vpremiospagos, 0) / 100) * vinteresestatal) / 100) AS deducao2,
        ((IFNULL((totalentradas - entradasdinheiro), 0) + IFNULL(entradacaixa, 0) + IFNULL(reforcocaixa, 0)) - 
        (IFNULL(totalsalidas, 0) + IFNULL(vsalidasant, 0) + IFNULL(salidaspgtomanual, 0) + IFNULL(retiradacaixa, 0))) AS saldonet,
        DATE_FORMAT(fecha, '%d-%m-%Y') AS data, IFNULL(totalsalidas, 0) AS totalsalidas, IFNULL(entradasticket, 0) AS entradasticket,
        IFNULL(entradasdinheiro, 0) AS entradasdinheiro, IFNULL(entradasticketcaixa, 0) AS entradasticketcaixa,
        IFNULL(salidaspgtomanual, 0) AS salidaspgtomanual, (IFNULL(totalentradas, 0) - IFNULL(totalsalidas, 0)) AS valor7,
        (((IFNULL(vpremiospagos, 0) / 100) * vinteresfederal) / 100) AS valor8, (((IFNULL(vpremiospagos, 0) / 100) * vinteresestatal) / 100) AS valor9,
        ((IFNULL(vretenidohoy, 0) - vpremiospagos) * ((vinteresfederal + vinteresestatal) / 100)) AS valor10,
        (((IFNULL(totalentradas, 0) / 100) * vintereslocal) / 100) AS valor11,
        (IFNULL(totalsalidas, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED)) AS saidashoje,
        IFNULL(entradacaixa, 0) AS entradacaixa, IFNULL(reforcocaixa, 0) AS reforcocaixa, IFNULL(retiradacaixa, 0) AS retiradacaixa,
        codigousuario AS codigousuario, nomeusuario AS nomeusuario, IFNULL(entradapos, 0) AS entradapos, IFNULL(saidapos, 0) AS saidapos,
        IFNULL(saldopromodia,0) AS promocoes, IFNULL(saidaspromocoes, 0) AS saidaspromocoes, IFNULL(diferencapromocoes, 0) AS diferencapromocoes,
        numerocontrole AS numerocontrole, dtabertura AS dtabertura, nomecasa AS nomecasa, fecha AS fecha,
        (IFNULL(totalentradas, 0)) - (IFNULL(totalsalidas, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED) + 
        IFNULL(vSalidasAnt, 0) + IFNULL(SalidasPgtoManual, 0)) AS resultado, (((IFNULL(TotalEntradas, 0) * 8) / 10)) AS efectivo,
        (((IFNULL(TotalEntradas, 0) * 2) / 10)) AS cupomb, 
        retirosefectivo AS retirosefectivo, 
        cancelamento AS cancelamento, (IFNULL(TotalEntradas, 0) + bonif) - (IFNULL(TotalSalidas, 0) + IFNULL(vSalidasAnt, 0) + IFNULL(saldosaidapromo, 0) + 
        CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresestatal + vinteresfederal)) / 100) AS SIGNED) + 
        IFNULL(SalidasPgtoManual, 0) + (IFNULL(vRetenidoHoy,0) - IFNULL(saldopromodia,0)) + IFNULL(retidodevolucaoant, 0)) AS rentabcaixa,
        retidodevolucaoant AS retidodevolucaoant, 
        _bit_wexibirfabricantes As exibirfabricantes,
        0 As idtransacao, clinome, clicodigo, maquina
        FROM _exectemp
        ORDER BY fecha ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wmexconsultacontadiaticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_l_wmexconsultacontadiaticket`(
    _vch_datainicio     VARCHAR(8),	
    _bit_parcial        TINYINT(1),	
    _bit_fechamento     TINYINT(1),	
    _int_codmodalidade  INT,	
    _int_codfabricante  INT
)
BEGIN
    DECLARE _int_n INT;
    DECLARE _vch_wNomeCasa		VARCHAR(50);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;

    SELECT msw_c_cabnomecasa
    INTO _vch_wNomeCasa 
    FROM cas_msw_mensagem LIMIT 1;

    SET _int_n = 2;

    CREATE TEMPORARY TABLE _exectemp(ip	VARCHAR(50),	pentradas BIGINT,	totalentradas BIGINT,	psalidas BIGINT,	totalsalidas BIGINT,
    modelo VARCHAR(100),	jugado BIGINT,	totaljugado BIGINT,		ganado BIGINT,	totalganado BIGINT,	numacumulado INT,
    acumulado BIGINT,	totalacumulado BIGINT,	numsacumulado INTEGER,	sacumulado BIGINT,	fecha DATETIME,	nomecasa VARCHAR(50),
    codigomaquina VARCHAR(20),	ativo TINYINT(1),	fabricante VARCHAR(50));

        IF (_bit_fechamento = 0)
        THEN
            IF ((_int_codmodalidade = -1) AND (_int_codfabricante = -1))
            THEN
                SET _int_n = 3;
                INSERT INTO _exectemp(ip, pentradas, totalentradas, psalidas, totalsalidas, modelo, jugado, totaljugado, ganado, totalganado,
                numacumulado, acumulado, totalacumulado, numsacumulado, sacumulado, fecha, ativo, codigomaquina, fabricante)
                SELECT DISTINCT P.mco_c_ip, P.mco_n_pentradas, P.mco_n_totalentradas, P.mco_n_psalidas, P.mco_n_totalsalidas, mdl_c_descricao,
                P.mco_n_jugadoparcial, P.mco_n_totaljugado, P.mco_n_ganadoparcial, P.mco_n_totalganado, P.mco_n_numacumulado, P.mco_n_acumulado,
                P.mco_n_totalacumulado, P.mco_n_numsacumulado, P.mco_n_sacumulado, P.mco_d_fecha, 1, amn_c_codigo, pfb_c_descricao
                FROM cas_mco_mexconta P	INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo
                LEFT JOIN cas_amn_associaipmaquina ON P.mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
                LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                WHERE P.mco_d_fecha = (SELECT MAX(mco_d_fecha) FROM cas_mco_mexconta WHERE mco_c_ip = P.mco_c_ip and CAST(mco_d_fecha AS DATE) = Cast(_vch_datainicio As Date))
                AND CAST(mco_d_fecha AS DATE) = Cast(_vch_datainicio As Date)
                ORDER BY P.mco_c_ip, mco_d_fecha DESC;
            ELSE
                IF ((_int_codmodalidade > 0) AND (_int_codfabricante = -1))
                THEN
                    SET _int_n = 4;
                    INSERT INTO _exectemp(ip, pentradas, totalentradas, psalidas, totalsalidas, modelo, jugado, totaljugado, ganado, totalganado,
                    numacumulado, acumulado, totalacumulado, numsacumulado, sacumulado, fecha, ativo, codigomaquina, fabricante)
                    SELECT DISTINCT P.mco_c_ip, P.mco_n_pentradas, P.mco_n_totalentradas, P.mco_n_psalidas, P.mco_n_totalsalidas, mdl_c_descricao,
                    P.mco_n_jugadoparcial, P.mco_n_totaljugado, P.mco_n_ganadoparcial, P.mco_n_totalganado, P.mco_n_numacumulado, P.mco_n_acumulado,
                    P.mco_n_totalacumulado, P.mco_n_numsacumulado, P.mco_n_sacumulado, P.mco_d_fecha, 1, amn_c_codigo, pfb_c_descricao	
                    FROM cas_mco_mexconta P INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo AND mdl_n_codmodalidade = _int_codmodalidade
                    LEFT JOIN cas_amn_associaipmaquina ON P.mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
                    LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                    WHERE P.mco_d_fecha = (SELECT MAX(mco_d_fecha) FROM cas_mco_mexconta WHERE mco_c_ip = P.mco_c_ip AND CAST(mco_d_fecha AS DATE) = CAST(_vch_datainicio AS DATE))
                    AND CAST(mco_d_fecha AS DATE) = CAST(_vch_datainicio AS DATE)
                    ORDER BY P.mco_c_ip, mco_d_fecha DESC;
                ELSE
                    IF ((_int_codmodalidade = -1) and (_int_codfabricante > 0))
                    THEN
                        SET _int_n = 5;
                        INSERT INTO _exectemp(ip, pentradas, totalentradas, psalidas, totalsalidas, modelo, jugado, totaljugado, ganado, totalganado,
                        numacumulado, acumulado, totalacumulado, numsacumulado, sacumulado, fecha, ativo, codigomaquina, fabricante)
                        SELECT DISTINCT P.mco_c_ip, P.mco_n_pentradas, P.mco_n_totalentradas, P.mco_n_psalidas, P.mco_n_totalsalidas, mdl_c_descricao,
                        P.mco_n_jugadoparcial, P.mco_n_totaljugado, P.mco_n_ganadoparcial, P.mco_n_totalganado, P.mco_n_numacumulado, P.mco_n_acumulado,
                        P.mco_n_totalacumulado, P.mco_n_numsacumulado, P.mco_n_sacumulado, P.mco_d_fecha, 1, amn_c_codigo, pfb_c_descricao
                        FROM cas_mco_mexconta P INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo AND mdl_n_codfabricante = _int_codfabricante
                        LEFT JOIN cas_amn_associaipmaquina ON P.mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
                        LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                        WHERE P.mco_d_fecha = (SELECT MAX(mco_d_fecha) FROM cas_mco_mexconta WHERE mco_c_ip = P.mco_c_ip AND CAST(mco_d_fecha AS DATE) = CAST(_vch_datainicio AS DATE))
                        AND CAST(mco_d_fecha AS DATE) = CAST(_vch_datainicio AS DATE)
                        ORDER BY P.mco_c_ip, mco_d_fecha DESC;
                    ELSE
                        SET _int_n = 6;
                        INSERT INTO _exectemp(ip, pentradas, totalentradas, psalidas, totalsalidas, modelo, jugado, totaljugado, ganado, totalganado,
                        numacumulado, acumulado, totalacumulado, numsacumulado, sacumulado, fecha, ativo, codigomaquina, fabricante)
                        SELECT DISTINCT	P.mco_c_ip, P.mco_n_pentradas, P.mco_n_totalentradas, P.mco_n_psalidas, P.mco_n_totalsalidas, mdl_c_descricao,
                        P.mco_n_jugadoparcial, P.mco_n_totaljugado, P.mco_n_ganadoparcial, P.mco_n_totalganado, P.mco_n_numacumulado, P.mco_n_acumulado,
                        P.mco_n_totalacumulado, P.mco_n_numsacumulado, P.mco_n_sacumulado, P.mco_d_fecha, 1, amn_c_codigo, pfb_c_descricao
                        FROM cas_mco_mexconta P INNER JOIN cas_mdl_mexmodelos 
                        ON mdl_n_codigo = mco_n_modelo AND mdl_n_codfabricante = _int_codfabricante AND mdl_n_codmodalidade = _int_codmodalidade
                        LEFT JOIN cas_amn_associaipmaquina ON P.mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
                        LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                        WHERE P.mco_d_fecha = (SELECT MAX(mco_d_fecha) FROM cas_mco_mexconta WHERE mco_c_ip = P.mco_c_ip AND CAST(mco_d_fecha AS DATE) = CAST(_vch_datainicio AS DATE))
                        AND CAST(mco_d_fecha AS DATE) = CAST(_vch_datainicio AS DATE)
                        ORDER BY P.mco_c_ip, mco_d_fecha DESC;
                    END IF;
                END IF;
            END IF;
        ELSE 
                    IF ((_int_codmodalidade = -1) AND (_int_codfabricante = -1))
                        THEN
                            SET _int_n = 7;
                            INSERT INTO _exectemp(ip, pentradas, totalentradas, psalidas, totalsalidas, modelo, jugado, totaljugado, ganado, totalganado,
                            numacumulado, acumulado, totalacumulado, numsacumulado, sacumulado, fecha, ativo, codigomaquina, fabricante)
                            SELECT DISTINCT P.mco_c_ip, P.mco_n_pentradas, P.mco_n_totalentradas, P.mco_n_psalidas, P.mco_n_totalsalidas, mdl_c_descricao,
                            P.mco_n_jugadoparcial, P.mco_n_totaljugado, P.mco_n_ganadoparcial, P.mco_n_totalganado, P.mco_n_numacumulado, P.mco_n_acumulado,
                            P.mco_n_totalacumulado, P.mco_n_numsacumulado, P.mco_n_sacumulado, P.mco_d_fecha, 1, amn_c_codigo, pfb_c_descricao
                            FROM cas_mco_mexconta P INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo 
                            LEFT JOIN cas_amn_associaipmaquina ON P.mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
                            LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                            WHERE P.mco_d_fecha = (SELECT MAX(mco_d_fecha) FROM cas_mco_mexconta WHERE mco_c_ip = P.mco_c_ip AND mco_n_atual = 1)
                            AND mco_n_atual = 1
                            ORDER BY P.mco_c_ip, mco_d_fecha DESC;
                        ELSE
                            IF ((_int_codmodalidade > 0) AND (_int_codfabricante = -1))
                            THEN
                                SET _int_n = 8;
                                INSERT INTO _exectemp(ip, pentradas, totalentradas, psalidas, totalsalidas, modelo, jugado, totaljugado, ganado, totalganado,
                                numacumulado, acumulado, totalacumulado, numsacumulado, sacumulado, fecha, ativo, codigomaquina, fabricante)
                                SELECT DISTINCT P.mco_c_ip, P.mco_n_pentradas, P.mco_n_totalentradas, P.mco_n_psalidas, P.mco_n_totalsalidas, mdl_c_descricao,
                                P.mco_n_jugadoparcial, P.mco_n_totaljugado, P.mco_n_ganadoparcial, P.mco_n_totalganado, P.mco_n_numacumulado, P.mco_n_acumulado,
                                P.mco_n_totalacumulado, P.mco_n_numsacumulado, P.mco_n_sacumulado, P.mco_d_fecha, 1, amn_c_codigo, pfb_c_descricao
                                FROM cas_mco_mexconta P	INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo AND mdl_n_codmodalidade = _int_codmodalidade
                                LEFT JOIN cas_amn_associaipmaquina ON P.mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
                                LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                                WHERE P.mco_d_fecha = (SELECT MAX(mco_d_fecha) FROM cas_mco_mexconta WHERE mco_c_ip = P.mco_c_ip AND mco_n_atual = 1)
                                AND mco_n_atual = 1
                                ORDER BY P.mco_c_ip, mco_d_fecha DESC;
                            ELSE
                                IF ((_int_codmodalidade = -1) AND (_int_codfabricante > 0))
                                THEN
                                    SET _int_n = 9;
                                    INSERT INTO _exectemp(ip, pentradas, totalentradas, psalidas, totalsalidas, modelo, jugado, totaljugado, ganado, totalganado,
                                    numacumulado, acumulado, totalacumulado, numsacumulado, sacumulado, fecha, ativo, codigomaquina, fabricante)
                                    SELECT DISTINCT	P.mco_c_ip, P.mco_n_pentradas, P.mco_n_totalentradas, P.mco_n_psalidas, P.mco_n_totalsalidas, mdl_c_descricao,
                                    P.mco_n_jugadoparcial, P.mco_n_totaljugado, P.mco_n_ganadoparcial, P.mco_n_totalganado, P.mco_n_numacumulado, P.mco_n_acumulado,
                                    P.mco_n_totalacumulado, P.mco_n_numsacumulado, P.mco_n_sacumulado, P.mco_d_fecha, 1, amn_c_codigo, pfb_c_descricao
                                    FROM cas_mco_mexconta P	INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = mco_n_modelo AND mdl_n_codfabricante = _int_codfabricante
                                    LEFT JOIN cas_amn_associaipmaquina ON P.mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
                                    LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                                    WHERE P.mco_d_fecha = (SELECT MAX(mco_d_fecha) FROM cas_mco_mexconta WHERE mco_c_ip = P.mco_c_ip AND mco_n_atual = 1)
                                    AND mco_n_atual = 1
                                    ORDER BY P.mco_c_ip, mco_d_fecha DESC;
                                ELSE
                                        SET _int_n = 10;
                                        INSERT INTO _exectemp(ip, pentradas, totalentradas, psalidas, totalsalidas, modelo, jugado, totaljugado, ganado, totalganado,
                                        numacumulado, acumulado, totalacumulado, numsacumulado, sacumulado, fecha, ativo, codigomaquina, fabricante)
                                        SELECT DISTINCT	P.mco_c_ip, P.mco_n_pentradas, P.mco_n_totalentradas, P.mco_n_psalidas, P.mco_n_totalsalidas, mdl_c_descricao,
                                        P.mco_n_jugadoparcial, P.mco_n_totaljugado, P.mco_n_ganadoparcial, P.mco_n_totalganado, P.mco_n_numacumulado, P.mco_n_acumulado,
                                        P.mco_n_totalacumulado, P.mco_n_numsacumulado, P.mco_n_sacumulado, P.mco_d_fecha, 1, amn_c_codigo, pfb_c_descricao
                                        FROM cas_mco_mexconta P INNER JOIN cas_mdl_mexmodelos 
                                        ON mdl_n_codigo = mco_n_modelo AND mdl_n_codfabricante = _int_codfabricante AND mdl_n_codmodalidade = _int_codmodalidade
                                        LEFT JOIN cas_amn_associaipmaquina ON P.mco_c_ip = amn_c_ip AND mco_n_modelo = amn_n_modelo
                                        LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                                        WHERE P.mco_d_fecha = (SELECT MAX(mco_d_fecha) FROM cas_mco_mexconta WHERE mco_c_ip = P.mco_c_ip AND mco_n_atual = 1)
                                        AND mco_n_atual = 1
                                        ORDER BY P.mco_c_ip, mco_d_fecha DESC;
                                END IF;
                            END IF;
                        END IF;
                    END IF;
        
    IF (_bit_parcial = 1)
    THEN
        IF (_bit_fechamento = 0)
        THEN
                SET _int_n = 11;
                UPDATE _exectemp SET ganado = (SELECT SUM(mco_n_ganado)
                FROM cas_mco_mexconta 
                WHERE CAST(mco_d_fecha AS DATE) = CAST(_vch_datainicio AS DATE) 
                AND mco_c_ip = ip),
                jugado = (SELECT SUM(mco_n_jugado) 
                FROM cas_mco_mexconta C 
                WHERE CAST(mco_d_fecha AS DATE) = CAST(_vch_datainicio AS DATE) AND mco_c_ip = ip),
                pentradas = (SELECT SUM(mco_n_entradas) 
                FROM cas_mco_mexconta C 
                WHERE CAST(mco_d_fecha AS DATE) = CAST(_vch_datainicio AS DATE) AND mco_c_ip = ip),
                psalidas = (SELECT SUM(mco_n_salidas)
                FROM cas_mco_mexconta C 
                WHERE CAST(mco_d_fecha AS DATE) = CAST(_vch_datainicio AS DATE) AND mco_c_ip = ip);
            ELSE

                SET _int_n = 12;
                UPDATE _exectemp SET ganado = (SELECT SUM(mco_n_ganado)
                FROM cas_mco_mexconta
                WHERE mco_n_atual = 1 
                AND mco_c_ip = ip),
                jugado = (SELECT SUM(mco_n_jugado)
                FROM cas_mco_mexconta C 
                WHERE mco_n_atual = 1
                AND mco_c_ip = ip),
                pentradas = (SELECT SUM(mco_n_entradas)
                FROM cas_mco_mexconta C 
                WHERE mco_n_atual = 1 
                AND mco_c_ip = ip),
                psalidas = (SELECT SUM(mco_n_salidas)
                FROM cas_mco_mexconta C 
                WHERE mco_n_atual = 1 
                AND mco_c_ip = ip);
            END IF;
        END IF;

    SET _int_n = 13;

    SELECT '.' + ip AS ip, pentradas AS pentradas, totalentradas AS totalentradas, psalidas AS psalidas, totalsalidas AS totalsalidas, modelo AS modelo,
    jugado AS jugado, totaljugado AS totaljugado, ganado AS ganado, totalganado AS totalganado, numacumulado AS numacumulado, acumulado AS acumulado,
    totalacumulado AS totalacumulado, numsacumulado AS numsacumulado, sacumulado AS sacumulado, fecha AS fecha, pentradas - psalidas AS resultadoparcial,
    totalentradas - totalsalidas AS resultadototal, _vch_wNomeCasa AS nomecasa, codigomaquina AS codigomaquina, fabricante AS fabricante 
    FROM _exectemp
    ORDER BY fabricante, modelo, IP;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wmexconsultaimpostos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_l_wmexconsultaimpostos`()
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;    

    SET _int_n = 1;

    SELECT imp_n_tipo As tipo, imp_c_nome As nome, imp_n_valor As valor, imp_d_datavigencia As datavigencia, imp_n_codigo As codigo, 
    CASE imp_n_tipo
    WHEN 1 THEN 'Estabelecimento'
    WHEN 2 THEN 'Jog. Estadual'
    WHEN 3 THEN 'Jog. Federal'
    ELSE 'Nenhum'
    END AS desc_tipo, imp_n_status As status,
    CASE imp_n_status
    WHEN 1 THEN 'Ativo'
    WHEN 0 THEN 'Inativo'
    ELSE 'Nenhum'
    END AS statusdesc			
    FROM cas_imp_meximpostos
    ORDER BY imp_n_codigo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wmexconsultapagmanualticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_l_wmexconsultapagmanualticket`(
        _vch_datainicio     VARCHAR(10),	
        _bit_parcial        TINYINT(1),	
        _bit_fechamento     TINYINT(1),	
        _int_codmodalidade	INT,	
        _int_codfabricante	INT
)
BEGIN

    DECLARE _vch_wNomeCasa	VARCHAR(50);
    DECLARE _int_n INT;
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

    SET _int_n = 1;

    SELECT msw_c_cabnomecasa
    INTO _vch_wNomeCasa 
    FROM cas_msw_mensagem LIMIT 1;

    SET _int_n = 2;
       
    CREATE TEMPORARY TABLE _exectemp(ip2 VARCHAR(50), ip VARCHAR(50), pnummanuales BIGINT, totalnummanuales BIGINT, pretiradas BIGINT, totalretiradas BIGINT,
    modelo VARCHAR(100), pretiradasdinheiro BIGINT, totalretiradasdinheiro BIGINT,  pretiradacartoes BIGINT, totalretiradacartoes BIGINT,
    ppagomanual BIGINT, totalpagomanual BIGINT, fecha DATETIME, nomecasa VARCHAR(50), codigomaquina VARCHAR(20), ativo BIT,	fabricante VARCHAR(50));

    IF (_bit_fechamento = 0)
    THEN
        IF ((_int_codmodalidade = -1) AND (_int_codfabricante = -1))
            THEN
                SET _int_n = 3;
                INSERT INTO _exectemp(ip2, ip, pnummanuales, totalnummanuales, pretiradas, totalretiradas, modelo, pretiradasdinheiro, totalretiradasdinheiro, 
                pretiradacartoes, totalretiradacartoes,  ppagomanual, totalpagomanual, fecha, ativo, codigomaquina, fabricante)
                SELECT DISTINCT P.cpg_c_ip, IFNULL(amn_c_codigo, P.cpg_c_ip), P.cpg_n_pnummanuales, P.cpg_n_totalnummanuales,
                P.cpg_n_pretiradas, P.cpg_n_totalretiradas, mdl_c_descricao, P.cpg_n_pretiradasdinheiro, P.cpg_n_totalretiradasdinheiro,
                P.cpg_n_pretiradascartoes, P.cpg_n_totalretiradascartoes, P.cpg_n_ppagomanual, P.cpg_n_totalpagomanual, P.cpg_d_data, 1,
                amn_c_codigo, pfb_c_descricao
                FROM cas_cpg_contapagomanual P INNER JOIN cas_mdl_mexmodelos ON	mdl_n_codigo = cpg_n_modelo
                LEFT JOIN cas_amn_associaipmaquina ON P.cpg_c_ip = amn_c_ip AND cpg_n_modelo = amn_n_modelo
                LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                WHERE P.cpg_d_data = (SELECT MAX(cpg_d_data) FROM cas_cpg_contapagomanual WHERE cpg_c_ip = P.cpg_c_ip)
                AND CAST(cpg_d_data AS DATE) = CAST(_vch_datainicio AS DATE)
                ORDER BY P.cpg_c_ip, cpg_d_data DESC;
            ELSE
                IF ((_int_codmodalidade > 0) AND (_int_codfabricante = -1))
                    THEN
                        SET _int_n = 4;
                        INSERT INTO _exectemp(ip2, ip, pnummanuales, totalnummanuales, pretiradas, totalretiradas, modelo, pretiradasdinheiro, totalretiradasdinheiro, 
                        pretiradacartoes, totalretiradacartoes, ppagomanual, totalpagomanual, fecha, ativo, codigomaquina, fabricante)
                        SELECT DISTINCT P.cpg_c_ip, IFNULL(amn_c_codigo, P.cpg_c_ip), P.cpg_n_pnummanuales, P.cpg_n_totalnummanuales,
                        P.cpg_n_pretiradas, P.cpg_n_totalretiradas, mdl_c_descricao, P.cpg_n_pretiradasdinheiro, P.cpg_n_totalretiradasdinheiro,
                        P.cpg_n_pretiradascartoes, P.cpg_n_totalretiradascartoes, P.cpg_n_ppagomanual, P.cpg_n_totalpagomanual, P.cpg_d_data, 1,
                        amn_c_codigo, pfb_c_descricao
                        FROM cas_cpg_contapagomanual P INNER JOIN cas_mdl_mexmodelos ON	mdl_n_codigo = cpg_n_modelo 
                        AND mdl_n_codmodalidade = _int_codmodalidade
                        LEFT JOIN cas_amn_associaipmaquina ON P.cpg_c_ip = amn_c_ip AND cpg_n_modelo = amn_n_modelo
                        LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                        WHERE P.cpg_d_data = (SELECT MAX(cpg_d_data) FROM cas_cpg_contapagomanual WHERE cpg_c_ip = P.cpg_c_ip)
                        AND CAST(cpg_d_data AS DATE) = CAST(_vch_datainicio AS DATE)
                        ORDER BY P.cpg_c_ip, cpg_d_data DESC;
                    ELSE
                        IF ((_int_codmodalidade = -1) AND (_int_codfabricante > 0))
                            THEN
                                SET _int_n = 5;
                                INSERT INTO _exectemp(ip2, ip, pnummanuales, totalnummanuales, pretiradas, totalretiradas, modelo, pretiradasdinheiro, totalretiradasdinheiro, 
                                pretiradacartoes, totalretiradacartoes, ppagomanual, totalpagomanual, fecha, ativo, codigomaquina, fabricante)
                                SELECT DISTINCT P.cpg_c_ip, IFNULL(amn_c_codigo, P.cpg_c_ip), P.cpg_n_pnummanuales, P.cpg_n_totalnummanuales,
                                P.cpg_n_pretiradas, P.cpg_n_totalretiradas, mdl_c_descricao, P.cpg_n_pretiradasdinheiro, P.cpg_n_totalretiradasdinheiro,
                                P.cpg_n_pretiradascartoes, P.cpg_n_totalretiradascartoes, P.cpg_n_ppagomanual, P.cpg_n_totalpagomanual, P.cpg_d_data, 1,
                                amn_c_codigo, pfb_c_descricao
                                FROM cas_cpg_contapagomanual P INNER JOIN cas_mdl_mexmodelos ON	mdl_n_codigo = cpg_n_modelo AND mdl_n_codfabricante = _int_codfabricante
                                LEFT JOIN cas_amn_associaipmaquina ON P.cpg_c_ip = amn_c_ip AND cpg_n_modelo = amn_n_modelo
                                LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                                WHERE P.cpg_d_data = (SELECT MAX(cpg_d_data) FROM cas_cpg_contapagomanual WHERE cpg_c_ip = P.cpg_c_ip)
                                AND CAST(cpg_d_data AS DATE) = CAST(_vch_datainicio AS DATE)
                                ORDER BY P.cpg_c_ip, cpg_d_data DESC;
                        ELSE

                                SET _int_n = 6;
                                INSERT INTO _exectemp(ip2, ip, pnummanuales, totalnummanuales, pretiradas, totalretiradas, modelo, pretiradasdinheiro, totalretiradasdinheiro, 
                                pretiradacartoes, totalretiradacartoes, ppagomanual, totalpagomanual, fecha, ativo, codigomaquina, fabricante)
                                SELECT DISTINCT P.cpg_c_ip, IFNULL(amn_c_codigo, P.cpg_c_ip), P.cpg_n_pnummanuales, P.cpg_n_totalnummanuales,
                                P.cpg_n_pretiradas, P.cpg_n_totalretiradas, mdl_c_descricao, P.cpg_n_pretiradasdinheiro, P.cpg_n_totalretiradasdinheiro,
                                P.cpg_n_pretiradascartoes, P.cpg_n_totalretiradascartoes, P.cpg_n_ppagomanual, P.cpg_n_totalpagomanual, P.cpg_d_data, 1,
                                amn_c_codigo, pfb_c_descricao
                                FROM cas_cpg_contapagomanual P INNER JOIN cas_mdl_mexmodelos ON	mdl_n_codigo = cpg_n_modelo	AND mdl_n_codfabricante = _int_codfabricante
                                AND mdl_n_codmodalidade = _int_codmodalidade
                                LEFT JOIN cas_amn_associaipmaquina ON P.cpg_c_ip = amn_c_ip	AND cpg_n_modelo = amn_n_modelo
                                LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                                WHERE P.cpg_d_data = (SELECT MAX(cpg_d_data) FROM cas_cpg_contapagomanual WHERE cpg_c_ip = P.cpg_c_ip)
                                AND CAST(cpg_d_data AS DATE) = CAST(_vch_datainicio AS DATE)
                                ORDER BY P.cpg_c_ip, cpg_d_data DESC;
                            END IF;
                        END IF;
                    END IF;
        ELSE
            IF ((_int_codmodalidade = -1) AND (_int_codfabricante = -1))
                THEN
                    SET _int_n = 7;
                    INSERT INTO _exectemp(ip2, ip, pnummanuales, totalnummanuales, pretiradas, totalretiradas, modelo, pretiradasdinheiro, totalretiradasdinheiro, 
                    pretiradacartoes, totalretiradacartoes, ppagomanual, totalpagomanual, fecha, ativo, codigomaquina, fabricante)
                    SELECT DISTINCT	P.cpg_c_ip, IFNULL(amn_c_codigo, P.cpg_c_ip), P.cpg_n_pnummanuales, P.cpg_n_totalnummanuales,
                    P.cpg_n_pretiradas, P.cpg_n_totalretiradas, mdl_c_descricao, P.cpg_n_pretiradasdinheiro, P.cpg_n_totalretiradasdinheiro, 
                    P.cpg_n_pretiradascartoes, P.cpg_n_totalretiradascartoes, P.cpg_n_ppagomanual, P.cpg_n_totalpagomanual, P.cpg_d_data, 1, 
                    amn_c_codigo, pfb_c_descricao
                    FROM cas_cpg_contapagomanual P INNER JOIN cas_mdl_mexmodelos ON mdl_n_codigo = cpg_n_modelo
                    LEFT JOIN cas_amn_associaipmaquina ON P.cpg_c_ip = amn_c_ip	AND cpg_n_modelo = amn_n_modelo
                    LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                    WHERE P.cpg_d_data = (SELECT MAX(cpg_d_data) FROM cas_cpg_contapagomanual WHERE cpg_c_ip = P.cpg_c_ip)
                    AND cpg_n_atual = 1
                    ORDER BY P.cpg_c_ip, cpg_d_data DESC;
                ELSE
                    IF ((_int_codmodalidade > 0) AND (_int_codfabricante = -1))
                    THEN
                        SET _int_n = 8;
                        INSERT INTO _exectemp(ip2, ip, pnummanuales, totalnummanuales, pretiradas, totalretiradas, modelo, pretiradasdinheiro, totalretiradasdinheiro, 
                        pretiradacartoes, totalretiradacartoes, ppagomanual, totalpagomanual, fecha, ativo, codigomaquina, fabricante)
                        SELECT DISTINCT	P.cpg_c_ip, IFNULL(amn_c_codigo, P.cpg_c_ip), P.cpg_n_pnummanuales, P.cpg_n_totalnummanuales,
                        P.cpg_n_pretiradas, P.cpg_n_totalretiradas, mdl_c_descricao, P.cpg_n_pretiradasdinheiro, P.cpg_n_totalretiradasdinheiro, 
                        P.cpg_n_pretiradascartoes, P.cpg_n_totalretiradascartoes, P.cpg_n_ppagomanual, P.cpg_n_totalpagomanual, P.cpg_d_data, 1, 
                        amn_c_codigo, pfb_c_descricao
                        FROM cas_cpg_contapagomanual P INNER JOIN cas_mdl_mexmodelos ON	mdl_n_codigo = cpg_n_modelo AND mdl_n_codmodalidade = _int_codmodalidade
                        LEFT JOIN cas_amn_associaipmaquina ON P.cpg_c_ip = amn_c_ip AND cpg_n_modelo = amn_n_modelo
                        LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                        WHERE P.cpg_d_data = (SELECT MAX(cpg_d_data) FROM cas_cpg_contapagomanual WHERE cpg_c_ip = P.cpg_c_ip)
                        AND cpg_n_atual = 1
                        ORDER BY P.cpg_c_ip, cpg_d_data DESC;
                    ELSE
                        IF ((_int_codmodalidade = -1) AND (_int_codfabricante > 0))
                        THEN
                                SET _int_n = 9;
                                INSERT INTO _exectemp(ip2, ip, pnummanuales, totalnummanuales, pretiradas, totalretiradas, modelo, pretiradasdinheiro, totalretiradasdinheiro, 
                                pretiradacartoes, totalretiradacartoes, ppagomanual, totalpagomanual, fecha, ativo, codigomaquina, fabricante)
                                SELECT DISTINCT	P.cpg_c_ip, IFNULL(amn_c_codigo, P.cpg_c_ip), P.cpg_n_pnummanuales, P.cpg_n_totalnummanuales,
                                P.cpg_n_pretiradas, P.cpg_n_totalretiradas, mdl_c_descricao, P.cpg_n_pretiradasdinheiro, P.cpg_n_totalretiradasdinheiro,
                                P.cpg_n_pretiradascartoes, P.cpg_n_totalretiradascartoes, P.cpg_n_ppagomanual, P.cpg_n_totalpagomanual, P.cpg_d_data, 1,
                                amn_c_codigo, pfb_c_descricao
                                FROM cas_cpg_contapagomanual P INNER JOIN cas_mdl_mexmodelos ON	mdl_n_codigo = cpg_n_modelo	AND mdl_n_codfabricante = _int_codfabricante
                                LEFT JOIN cas_amn_associaipmaquina ON P.cpg_c_ip = amn_c_ip AND cpg_n_modelo = amn_n_modelo
                                LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                                WHERE P.cpg_d_data = (SELECT MAX(cpg_d_data) FROM cas_cpg_contapagomanual WHERE cpg_c_ip = P.cpg_c_ip)
                                AND cpg_n_atual = 1
                                ORDER BY P.cpg_c_ip, cpg_d_data DESC;
                        ELSE
                                SET _int_n = 10;
                                INSERT INTO _exectemp(ip2, ip, pnummanuales, totalnummanuales, pretiradas, totalretiradas, modelo, pretiradasdinheiro, totalretiradasdinheiro, 
                                pretiradacartoes, totalretiradacartoes, ppagomanual, totalpagomanual, fecha, ativo, codigomaquina, fabricante)
                                SELECT DISTINCT	P.cpg_c_ip, IFNULL(amn_c_codigo, P.cpg_c_ip), P.cpg_n_pnummanuales, P.cpg_n_totalnummanuales,
                                P.cpg_n_pretiradas, P.cpg_n_totalretiradas, mdl_c_descricao, P.cpg_n_pretiradasdinheiro, P.cpg_n_totalretiradasdinheiro, 
                                P.cpg_n_pretiradascartoes, P.cpg_n_totalretiradascartoes, P.cpg_n_ppagomanual, P.cpg_n_totalpagomanual, P.cpg_d_data, 1,
                                amn_c_codigo, pfb_c_descricao
                                FROM cas_cpg_contapagomanual P INNER JOIN cas_mdl_mexmodelos ON	mdl_n_codigo = cpg_n_modelo AND mdl_n_codfabricante = _int_codfabricante
                                AND mdl_n_codmodalidade = _int_codmodalidade
                                LEFT JOIN cas_amn_associaipmaquina ON P.cpg_c_ip = amn_c_ip AND cpg_n_modelo = amn_n_modelo
                                LEFT JOIN cas_pfb_posfabricantes ON mdl_n_codfabricante = pfb_n_codigo
                                WHERE P.cpg_d_data = (SELECT MAX(cpg_d_data) FROM cas_cpg_contapagomanual WHERE cpg_c_ip = P.cpg_c_ip)
                                AND cpg_n_atual = 1
                                ORDER BY P.cpg_c_ip, cpg_d_data DESC;
                            END IF;
                        END IF;
                    END IF;
                END IF;

        IF (_bit_parcial = 1) THEN
            IF (_bit_fechamento = 0)
            THEN
                SET _int_n = 11;
                UPDATE _exectemp SET pnummanuales = (SELECT SUM(cpg_n_nummanuales) 
                FROM cas_cpg_contapagomanual 
                WHERE CAST(cpg_d_data AS DATE) = CAST(_vch_datainicio AS DATE) AND cpg_c_ip = ip2),
                pretiradas = (SELECT SUM(cpg_n_retiradas)
                FROM cas_cpg_contapagomanual C 
                WHERE CAST(cpg_d_data AS DATE) = CAST(_vch_datainicio AS DATE) AND cpg_c_ip = ip2),
                pretiradasdinheiro = (SELECT IFNULL(SUM(cpg_n_retiradasdinheiro), 0)
                FROM cas_cpg_contapagomanual C 
                WHERE CAST(cpg_d_data AS DATE) = CAST(_vch_datainicio AS DATE) AND cpg_c_ip = ip2),
                pretiradacartoes = (SELECT IFNULL(SUM(cpg_n_retiradascartoes), 0)
                FROM cas_cpg_contapagomanual C
                WHERE CAST(cpg_d_data AS DATE) = CAST(_vch_datainicio AS DATE) AND cpg_c_ip = ip2),
                ppagomanual = (SELECT IFNULL(SUM(cpg_n_pagomanual), 0)
                FROM cas_cpg_contapagomanual C 
                WHERE CAST(cpg_d_data AS DATE) = CAST(_vch_datainicio AS DATE) AND cpg_c_ip = ip2);
            ELSE
                SET _int_n = 12;
                UPDATE _exectemp SET pnummanuales = (SELECT SUM(cpg_n_nummanuales)
                FROM cas_cpg_contapagomanual 
                WHERE cpg_n_atual = 1 AND cpg_c_ip = ip2),
                pretiradas = (SELECT SUM(cpg_n_retiradas)
                FROM cas_cpg_contapagomanual C 
                WHERE cpg_n_atual = 1 AND cpg_c_ip = ip2),
                pretiradasdinheiro = (SELECT IFNULL(SUM(cpg_n_retiradasdinheiro), 0) 
                FROM cas_cpg_contapagomanual C 
                WHERE cpg_n_atual = 1 AND cpg_c_ip = ip2),
                pretiradacartoes = (SELECT IFNULL(SUM(cpg_n_retiradascartoes), 0)
                FROM cas_cpg_contapagomanual C 
                WHERE cpg_n_atual = 1 AND cpg_c_ip = ip2),
                ppagomanual = (SELECT IFNULL(SUM(cpg_n_pagomanual), 0)
                FROM cas_cpg_contapagomanual C 
                WHERE cpg_n_atual = 1 AND cpg_c_ip = ip2);
            END IF;
        END IF;

	SET _int_n = 13;
	SELECT '.' + ip AS ip, IFNULL(pnummanuales, 0) AS pnummanuales, IFNULL(totalnummanuales, 0) AS totalnummanuales, IFNULL(pretiradas, 0) AS pretiradas, IFNULL(totalretiradas, 0) AS totalretiradas,
	modelo AS modelo, IFNULL(pretiradasdinheiro, 0) AS pretiradasdinheiro, IFNULL(totalretiradasdinheiro, 0) AS totalretiradasdinheiro, IFNULL(pretiradacartoes, 0) AS pretiradacartoes,
	IFNULL(totalretiradacartoes, 0) AS totalretiradacartoes, IFNULL(ppagomanual, 0) AS ppagomanual, IFNULL(totalpagomanual, 0) AS totalpagomanual, fecha AS fecha,
	IFNULL(pnummanuales - pretiradas, 0) AS resultadoparcial, IFNULL(totalretiradas - totalnummanuales, 0) AS resultadototal, codigomaquina AS codigomaquina,
	fabricante AS fabricante
	FROM _exectemp 
	ORDER BY fabricante, modelo, ip;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wmexconsultaticketsnoretornados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_l_wmexconsultaticketsnoretornados`(
    _int_diasvalidez        INT,	
    _vch_datainicial        VARCHAR(10),	
    _vch_datafinal          VARCHAR(10)
)
BEGIN
    DECLARE _int_n          INT;
    DECLARE	_int_tmp	     INT;
    DECLARE _dt_dtfinal     DATE;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _dt_dtfinal = DATE_ADD(_vch_datafinal, INTERVAL 1 DAY);

    SET _int_n = 1;
    CREATE TEMPORARY TABLE _exectemp(code VARCHAR(8), entrada INT, salida INT, saldo INT, fecha DATE, vencimento DATE, usuario VARCHAR(50));

    SET _int_n = 2;
    SELECT IFNULL(COUNT(*), 0)
    INTO 
    _int_tmp 
    FROM cas_tck_mextickets
    WHERE TIMESTAMPDIFF(day, CURDATE(), tck_d_fecha) < _int_diasvalidez
    AND	tck_n_activa = 1
    AND CAST(tck_d_fecha AS DATE) >= CAST(_vch_datainicial AS DATE)
    AND	tck_d_fecha  < _dt_dtfinal;

    SET _int_n = 3;
    INSERT INTO _exectemp(code, entrada, salida, saldo, fecha, vencimento, usuario)
    VALUES(0, _int_tmp, 0, 0, CURDATE(), CURDATE(), '');

    SET _int_n = 4;
    INSERT INTO _exectemp(code, entrada, salida, saldo, fecha, vencimento, usuario)
    SELECT tck_c_code, tck_n_entrada, tck_n_salida, tck_n_saldo, tck_d_fecha,
    DATE_ADD(tck_d_fecha, INTERVAL _int_diasvalidez DAY), cli_c_name
    FROM cas_tck_mextickets
    LEFT JOIN cas_cli_clientes ON
    cli_n_codigo = tck_n_codecliente
    WHERE TIMESTAMPDIFF(day, CURDATE(), tck_d_fecha) < _int_diasvalidez
    AND tck_n_activa = 1
    AND CAST(tck_d_fecha AS DATE) >= _vch_datainicial
    AND tck_d_fecha < _dt_dtfinal;

    SET _int_n = 5;
    SELECT code, (CAST(IFNULL(entrada, 0) AS DECIMAL(18,2)) / 100) As entrada, (CAST(IFNULL(salida, 0) AS DECIMAL(18,2)) / 100) As salida, (CAST(IFNULL(saldo, 0) AS DECIMAL(18,2)) / 100) As saldo, fecha, vencimento, usuario
    FROM _exectemp
    WHERE code <> '0'
    ORDER BY fecha;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wmexconsultatipopessoa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_l_wmexconsultatipopessoa`()
BEGIN
    DECLARE _int_n INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

        SET _int_n = 1;
        SELECT 
        tip_n_codigo        AS codigo,      tip_n_codigoidentificacao   AS codigoidentificacao,     tip_c_identificacao         AS descricao, 
        tip_n_indrenda      AS indrenda,    tip_n_inddatanascimento     AS inddatanascimento,       tip_n_indnomeusuario        AS indnomeusuario, 
        tip_n_indbanco      AS indbanco,    tip_n_indtelresidencial     AS indtelresidencial,       tip_n_indprofissao          AS indprofissao,
        tip_n_indsexo       AS indsexo,     tip_n_indapelidousuario     AS indapelidousuario,       tip_n_indcidade             AS indcidade, 
        tip_n_indemail      AS indemail,    tip_n_indestadocivil        AS indestadocivil,          tip_n_indvalidacpf          AS indvalidacpf,
        tip_n_indcep        AS indcep,      tip_n_indcadastrodesde      AS indcadastrodesde,        tip_n_indnumerorg           AS indnumerorg, 
        tip_n_indestado     AS indestado,   tip_n_indendereco           AS indendereco,             tip_n_indtelcelular         AS indtelcelular,
        tip_n_indbairro     AS indbairro,   tip_n_indtelcomercial       AS indtelcomercial,         tip_n_indcomplemento        AS indcomplemento,
        tip_n_indnumero     AS indnumero,   tip_n_indreferencia         AS indreferencia
        FROM cas_tip_tipopessoa;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wmexlistarticketsexpirados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_l_wmexlistarticketsexpirados`(
    _vch_datavencimento	VARCHAR(10)
)
BEGIN
    DECLARE _int_n INT;
    DECLARE _int_wdias	INT;
    DECLARE _bit_Horas TINYINT(1);
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;
	
    SET _int_n = 1;
    SELECT IFNULL(prt_n_dias, 0), prt_b_horas
    INTO _int_wdias , _bit_Horas 
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));

    IF (_bit_Horas = 1)
    THEN 
        SET _int_n = 2;
        SELECT 
        tck_c_code                              AS code, 
        (CAST(IFNULL(tck_n_saldo, 0) AS DECIMAL(18,2)) / 100) AS saldo, 
        tck_d_fecha										AS fecha,
        cli_c_name										AS usuario
        FROM cas_tck_mextickets
        LEFT JOIN cas_cli_clientes ON
        tck_n_codecliente = cli_n_codigo
        WHERE Cast(DATE_ADD(tck_d_fecha, INTERVAL _int_wdias HOUR) As DATE) <= CAST(_vch_datavencimento AS DATE)
        AND tck_n_activa = 1
        UNION
        SELECT 
        tcm_c_code										AS code, 
        (CAST(IFNULL(tcm_n_saldo, 0) AS DECIMAL(18,2)) / 100) AS saldo, 
        tcm_d_fecha										AS fecha,
        cli_c_name										AS usuario
        FROM cas_tcm_ticketsexcluidos
        LEFT JOIN cas_cli_clientes ON
        tcm_n_codecliente = cli_n_codigo
        WHERE CAST(DATEADD(HOUR, _int_wdias, tcm_d_fecha) AS DATE) <= CAST(_vch_datavencimento AS DATE)
        AND tcm_n_activa = 1
        ORDER BY tck_d_fecha;
    ELSE
        SET _int_n = 2;
        SELECT 
        tck_c_code										AS code, 
        (CAST(IFNULL(tck_n_saldo, 0) AS DECIMAL(18,2)) / 100) AS saldo, 
        tck_d_fecha										AS fecha,
        cli_c_name										AS usuario
        FROM cas_tck_mextickets
        LEFT JOIN cas_cli_clientes ON
        tck_n_codecliente = cli_n_codigo
        WHERE Cast(DATEADD(day, _int_wdias, tck_d_fecha) As DATE) < CAST(_vch_datavencimento AS DATE)
        AND tck_n_activa = 1
        UNION
        SELECT 
        tcm_c_code										AS code, 
        (CAST(IFNULL(tcm_n_saldo, 0) AS DECIMAL(18,2)) / 100) AS saldo, 
        tcm_d_fecha										AS fecha,
        cli_c_name										AS usuario
        FROM cas_tcm_ticketsexcluidos
        LEFT JOIN cas_cli_clientes ON
        tcm_n_codecliente = cli_n_codigo
        WHERE Cast(DATEADD(day, _int_wdias, tcm_d_fecha) As DATE) < CAST(_vch_datavencimento AS DATE)
        AND tcm_n_activa = 1
        ORDER BY tck_d_fecha;
     END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wmexlistarticketsvencer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_l_wmexlistarticketsvencer`(
    _vch_dataini	VARCHAR(10),	
    _vch_datafim VARCHAR(10)
)
BEGIN
    DECLARE _int_n              INT;
    DECLARE	_dt_wdataini        DATE;		
    DECLARE _dt_wdatafim        DATE;		
    DECLARE _dt_wdataini2       DATE;	
    DECLARE _dt_wdatafim2       DATE;		
    DECLARE _int_wdias          INT;
    DECLARE _int_cont           INT;	
    DECLARE _int_i              INT;	
    DECLARE _dt_wFecha          DATETIME;
    DECLARE _vch_wCode          VARCHAR(8);
    DECLARE _dec_wSaldo         DECIMAL(18,2);
    DECLARE _vch_usuario        VARCHAR(50);
    DECLARE _dt_data            DATETIME;   
    DECLARE _bit_Horas          TINYINT(1);

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;


	SET _dt_wdataini = CAST(_vch_dataini AS DATE);
	SET _dt_wdatafim = CAST(_vch_datafim AS DATE);

	SET _dt_wdataini2 = DATE_SUB(CAST(_vch_dataini AS DATE), INTERVAL 60 DAY);
	SET _dt_wdatafim2 = CAST(_vch_datafim AS DATE);

    SET _int_n = 1;
    CREATE TABLE _exectemp(fecha DATETIME, code VARCHAR(8), saldo DECIMAL(18,2), vencimento DATETIME, usuario VARCHAR(50), data DATETIME);
	
    SET _int_n = 2;
    CREATE TEMPORARY TABLE _tbcursor(fecha DATETIME, code VARCHAR(8), saldo DECIMAL(18,2), usuario VARCHAR(50), data DATETIME);
	
    SET _int_n = 3;
    INSERT INTO _tbcursor
    SELECT tck_d_fecha, tck_c_code, tck_n_saldo, cli_c_name, tck_d_fecha
    FROM cas_tck_mextickets
    LEFT JOIN cas_cli_clientes ON
    cli_n_codigo = tck_n_codecliente
    WHERE CAST(tck_d_fecha AS DATE) >= _dt_wdataini2
    AND CAST(tck_d_fecha AS DATE) <= _dt_wdatafim2
    AND	tck_n_activa = 1;

    SET _int_n = 4;
    SELECT COUNT(*)
    INTO _int_cont 
    FROM _tbcursor;

    SET _int_i = 1;

	WHILE _int_i <= _int_cont
	DO
	
        SET _int_n = 5;
        SELECT  fecha, code, saldo, usuario, data
        INTO _dt_wFecha, _vch_wCode, _dec_wSaldo  , _vch_usuario, _dt_data 
        FROM _tbcursor LIMIT 1;

        SET _int_n = 6;
        SELECT prt_n_dias, prt_b_horas
        INTO _int_wdias, _bit_Horas 
        FROM cas_prt_mexparametros
        WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia) 
        FROM cas_prt_mexparametros
        WHERE prt_d_datavigencia <= _dt_wFecha);

        SET _int_n = 7;

        IF (_bit_Horas = 1)
        THEN
            INSERT INTO _exectemp(fecha, code, saldo, vencimento, usuario, data)
            SELECT _dt_wFecha, _vch_wCode, _dec_wSaldo, DATE_ADD(Cast(_dt_wFecha As Datetime), INTERVAL int_wdias HOUR) , _vch_usuario, _dt_data;
        ELSE
            INSERT INTO _exectemp(fecha, code, saldo, vencimento, usuario, data)
            SELECT _dt_wFecha, _vch_wCode, _dec_wSaldo, DATE_ADD(_dt_wFecha, INTERVAL _int_wdias DAY), _vch_usuario, _dt_data;
        END IF;

        SET _int_n = 8;
        DELETE 
        FROM _tbcursor 
        WHERE code = _vch_wCode;

        SET _int_i = _int_i + 1;
	END WHILE;
	
	SET _int_n = 9;

    SELECT fecha, code, (CAST(IFNULL(saldo, 0) AS DECIMAL(18,2)) / 100) As saldo, vencimento,
    CASE  
        WHEN DAY((vencimento - CURDATE())) < 0 THEN 0
        ELSE DAY((vencimento - CURDATE()))
    END AS dia,
    data, usuario
    FROM _exectemp
    WHERE CAST(vencimento AS DATE) >= _dt_wdataini
    AND CAST(vencimento AS DATE) <= _dt_wdatafim
    ORDER BY vencimento ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wmexultimocierrediaticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_l_wmexultimocierrediaticket`(
    _vch_maquina	VARCHAR(16)
)
BEGIN
    DECLARE _bit_wcalcularvendas        TINYINT(1);
    DECLARE _bit_wexibirfabricantes     TINYINT(1);
    DECLARE _int_n                      INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;

    SET _int_n = 1;
    SELECT prt_b_calcularvendas, prt_b_enviarcontfab
    INTO _bit_wcalcularvendas, _bit_wexibirfabricantes 
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));

    SET _int_n = 2;

    CREATE TEMPORARY TABLE _exectemp(
    totalentradas               BIGINT, 
    totalsalidas                BIGINT, 
    vretenidohoy                BIGINT, 
    vretenido60dias             BIGINT, 
    vretenidoborrados           BIGINT,
    vcortesiadinero             BIGINT, 
    vcortesiabebidas            BIGINT, 
    vcortesiaaverias            BIGINT, 
    vsalidasant                 BIGINT, 
    vpremiospagos               BIGINT, 
    ventradasmaquina            BIGINT,
    vintereslocal               NUMERIC, 
    vinteresfederal             NUMERIC, 
    vinteresestatal             NUMERIC, 
    fecha                       DATETIME(6), 
    entradasticket              DECIMAL(18,2),
    entradasdinheiro            DECIMAL(18,2), 
    entradasticketcaixa         DECIMAL(18,2), 
    salidaspgtomanual           DECIMAL(18,2), 
    entradacaixa                DECIMAL(18,2), 
    reforcocaixa                DECIMAL(18,2), 
    retiradacaixa               DECIMAL(18,2),
    entradapos                  DECIMAL(18,2), 
    saidapos                    DECIMAL(18,2), 
    promocoes                   DECIMAL(18,2), 
    saidaspromocoes             DECIMAL(18,2), 
    diferencapromocoes          DECIMAL(18,2), 
    numerocontrole              INT, 
    dtabertura                  DATETIME,
    retirosefectivo             DECIMAL(18,2), 
    cancelamento                BIGINT, 
    retidodevolucaoant          DECIMAL(18,2), 
    saldopromodia               DECIMAL(18,2),
    saldosaidapromo             DECIMAL(18,2), 
    clicodigo                   INT, 
    clinome VARCHAR(100), 
    maquina VARCHAR(100));


    SET _int_n = 5;

    IF EXISTS(SELECT * 
    FROM cas_mci_mexcierres 
    WHERE mci_c_maquina = _vch_maquina LIMIT 1)
    THEN
    SET _int_n = 6;
    INSERT INTO _exectemp(
    totalentradas, 
    totalsalidas, 
    vretenidohoy, 
    vretenido60dias, 
    vretenidoborrados, 
    vcortesiadinero, 
    vcortesiabebidas,
    vcortesiaaverias, 
    vsalidasant, 
    vpremiospagos, 
    ventradasmaquina, 
    vintereslocal, 
    vinteresfederal, 
    vinteresestatal, 
    fecha, 
    entradasticket, 
    entradasdinheiro, 
    entradasticketcaixa, 
    salidaspgtomanual, 
    entradacaixa, 
    reforcocaixa, 
    retiradacaixa, 
    entradapos,
    saidapos, 
    promocoes, 
    saidaspromocoes, 
    diferencapromocoes, 
    numerocontrole, 
    dtabertura, 
    retirosefectivo, 
    cancelamento, 
    retidodevolucaoant, 
    saldopromodia, 
    saldosaidapromo, 
    clicodigo, 
    clinome, 
    maquina)
    SELECT  
    IFNULL(mci_n_entrada, 0), 
    IFNULL(mci_n_salida, 0), 
    IFNULL(mci_n_retenidohoy, 0), 
    IFNULL(mci_n_retenido60dias, 0),
    IFNULL(mci_n_retenidoborrados, 0), 
    IFNULL(mci_n_cortesiadinero, 0), 
    IFNULL(mci_n_cortesiabebidas, 0), 
    IFNULL(mci_n_cortesiaaverias, 0),
    IFNULL(mci_n_salidasant, 0), 
    IFNULL(mci_n_premiospagos, 0), 
    IFNULL(mci_n_entradasmaquinas, 0), 
    IFNULL(mci_n_interes, 0),
    IFNULL(mci_n_interesfederal, 0), 
    IFNULL(mci_n_interesestatal, 0),  
    mci_d_fecha,
    IFNULL(mci_n_entradasticket, 0), 
    IFNULL(mci_n_entradasdinheiro, 0), 
    IFNULL(mci_n_entradasticketcaixa, 0), 
    IFNULL(mci_n_salidaspgtomanual, 0),
    IFNULL(mci_n_entradacaixa, 0), 
    IFNULL(mci_n_reforcocaixa, 0), 
    IFNULL(mci_n_retiradacaixa, 0), 
    IFNULL(mci_n_entradaspos, 0),
    IFNULL(mci_n_saidaspos, 0), 
    IFNULL(mci_n_promocoes, 0), 
    IFNULL(mci_n_saidaspromocoes, 0), 
    IFNULL(mci_n_diferencapromocoes, 0),
    IFNULL(mci_n_codigo, 0), 
    mci_d_abertura, 
    IFNULL(mci_n_retirosefectivo, 0), 
    IFNULL(mci_n_cancelamento, 0), 
    IFNULL(mci_n_retidodevolucaoant, 0), 
    IFNULL(mci_n_saldopromodia, 0), 
    IFNULL(mci_n_saldosaidapromo, 0),
    mci_n_clicodigo, 
    cli_c_name + IFNULL(cli_c_nickname, ''), 
    mci_c_maquina
    FROM cas_mci_mexcierres
    LEFT JOIN cas_cli_clientes ON
    mci_n_clicodigo = cli_n_codigo
    WHERE mci_c_maquina = _vch_maquina
    ORDER BY mci_d_fecha DESC LIMIT 1;
    END IF;

	SET _int_n = 7;
                SELECT 
                totalentradas, 
                (totalsalidas + vsalidasant) AS salidas, 
                vretenidohoy, 
                vretenido60dias, 
                vretenidoborrados, 
                vcortesiadinero,
                vcortesiabebidas, 
                vcortesiaaverias, 
                vsalidasant, 
                vpremiospagos, 
                ventradasmaquina, 		
                CASE _bit_wcalcularvendas WHEN 1 THEN (totalsalidas + CAST((((vpremiospagos / 100) * (vinteresfederal + vinteresestatal)) / 100) AS SIGNED) + vsalidasant + IFNULL(salidaspgtomanual, 0)) - cancelamento
                ELSE (totalsalidas + CAST((((vpremiospagos / 100) * (vinteresfederal + vinteresestatal)) / 100) AS SIGNED) + vsalidasant + IFNULL(salidaspgtomanual, 0)) END AS saidatotal,
                ((IFNULL(totalentradas, 0) + IFNULL(entradacaixa, 0) + IFNULL(reforcocaixa, 0)) - (totalsalidas + CAST((((vpremiospagos / 100) * (vinteresfederal + vinteresestatal)) / 100) AS SIGNED) + vsalidasant + IFNULL(salidaspgtomanual, 0) + IFNULL(retiradacaixa, 0))) AS saldo,
                (((vpremiospagos / 100) * vinteresfederal) / 100) AS deducao1,
                (((vpremiospagos / 100) * vinteresestatal) / 100) AS deducao2,
                ((IFNULL((totalentradas - entradasdinheiro), 0) + (IFNULL(entradacaixa, 0) + IFNULL(reforcocaixa, 0))) - (IFNULL(totalsalidas, 0) + IFNULL(vsalidasant, 0) + IFNULL(salidaspgtomanual, 0) + IFNULL(retiradacaixa, 0))) AS saldonet,
                CASE WHEN _bit_wexibecupomb = 1 THEN (((((IFNULL(TotalEntradas, 0) * 8) / 10) / 100) * vintereslocal) / 100)
                WHEN _bit_wcalcularvendas = 1 AND _bit_wexibecupomb  = 0 THEN ((((IFNULL(totalentradas, 0) - cancelamento)  / 100) * vintereslocal) / 100)
                ELSE (((IFNULL(totalentradas, 0) / 100) * vintereslocal) / 100) END AS DeducaoEntrada,
                fecha, 
                totalsalidas, 
                entradasticket, 
                entradasdinheiro, 
                entradasticketcaixa, 
                salidaspgtomanual,
                (IFNULL(totalsalidas, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresfederal + vinteresestatal)) / 100) AS SIGNED)) AS saidashoje,
                entradacaixa, 
                reforcocaixa, 
                retiradacaixa, 
                entradapos, 
                saidapos, 
                IFNULL(saldopromodia,0) AS promocoes, 
                saidaspromocoes, 
                diferencapromocoes,
                numerocontrole, 
                dtabertura, 
                (IFNULL(TotalEntradas, 0)) - (IFNULL(TotalSalidas, 0) + IFNULL(vSalidasAnt, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresfederal + vinteresestatal)) / 100) AS SIGNED) + IFNULL(SalidasPgtoManual, 0)) AS Resultado,
                (((IFNULL(TotalEntradas, 0) * 8) / 10)) AS efectivo, 
                (((IFNULL(TotalEntradas, 0) * 2) / 10)) AS cupomb, 
                retirosefectivo AS retirosefectivo,
                cancelamento, 
                (IFNULL(TotalEntradas, 0) + bonif) - (IFNULL(TotalSalidas, 0) + IFNULL(vSalidasAnt, 0) + IFNULL(saldosaidapromo, 0) + CAST((((IFNULL(vpremiospagos, 0) / 100) * (vinteresfederal + vinteresestatal)) / 100) AS SIGNED) + IFNULL(SalidasPgtoManual, 0) + (IFNULL(vRetenidoHoy,0) - IFNULL(saldopromodia,0)) + IFNULL(retidodevolucaoant, 0)) AS rentabcaixa,
                retidodevolucaoant AS retidodevolucaoant, 
                _bit_wexibirfabricantes AS exibirfabricantes, 
                0 As idtransacao, 
                clicodigo AS clicodigo, 
                clinome AS nomeusuario, 
                 maquina AS maquina
                FROM _exectemp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_l_wmexultimoticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_l_wmexultimoticket`(
    _vch_maquina	VARCHAR(16)
)
BEGIN

    DECLARE _int_n INT;
    
    DECLARE _vch_wcode      VARCHAR(8);
    DECLARE _dtm_wdias		DATETIME;
    DECLARE _int_wactiva    INT;
    DECLARE _int_wsaldo     DECIMAL(18,2);
    DECLARE _int_wentrada   DECIMAL(18,2);	
    DECLARE _int_wtipomov	INT;
    DECLARE _vch_promocao	VARCHAR(1);
    DECLARE _vch_wid        VARCHAR(21);
    DECLARE _int_wcortesia	DECIMAL(18,2);		
    DECLARE _int_wpromocao	DECIMAL(18,2);


	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;

    SET _int_n = 1;
    CREATE TEMPORARY TABLE _exectemp(code VARCHAR(8), saldo VARCHAR(10), dias INT, fecha DATETIME);

    SET _int_n = 3;
    IF (EXISTS(SELECT  mvi_c_code 
    FROM cas_mvi_mexmovimientos 
    WHERE mvi_c_maquina = _vch_maquina
    AND (mvi_n_tipomov = 1 
    OR mvi_n_tipomov = 5
    OR mvi_n_tipomov = 15
    OR mvi_n_tipomov = 16) LIMIT 1))
    THEN
        SET _int_n = 4;
        SELECT mvi_c_code, mvi_n_valor, mvi_n_tipomov
        INTO _vch_wcode, _int_wentrada, _int_wtipomov 
        FROM cas_mvi_mexmovimientos
        WHERE mvi_c_maquina = _vch_maquina
        AND (mvi_n_tipomov = 1 
        OR mvi_n_tipomov = 5
        OR mvi_n_tipomov = 15
        OR mvi_n_tipomov = 16)
        ORDER BY mvi_d_fecha DESC LIMIT 1;

        SET _int_n = 7;
        SELECT tck_n_activa, tck_d_fecha, tck_n_cortesia, tck_n_promocao
        INTO _int_wactiva, _dtm_wdias , _int_wcortesia, _int_wpromocao 
        FROM cas_tck_mextickets
        WHERE tck_c_code = _vch_wcode;

			
        IF (_int_wactiva = 0)
        THEN
            SET _int_n = 8;
            SELECT tck_n_salida
            INTO _int_wsaldo 
            FROM cas_tck_mextickets
            WHERE tck_c_code = _vch_wcode;
        ELSE
            SET _int_n = 9;
            SELECT tck_n_saldo
            INTO _int_wsaldo 
            FROM cas_tck_mextickets
            WHERE tck_c_code = _vch_wcode;
        END IF;

        SET _int_n = 10;
        SELECT  his_c_idtransacao
        INTO _vch_wid 
        FROM cas_his_historicooperacao
        WHERE (his_n_codigooperacao = 1 
        OR his_n_codigooperacao = 2)
        AND his_c_numticket = _vch_wcode 
        ORDER BY his_d_datainclusao DESC LIMIT 1;

		SET _int_n = 11;
		INSERT INTO _exectemp(code, saldo, dias, fecha)
		VALUES (_vch_wcode, _int_wsaldo, DATE_DIFF(DAY, CURDATE(), _dtm_wdias), _dtm_wdias);

        IF (_int_wtipomov = 16) THEN
            SET _vch_promocao = '2';
        ELSE
            SET _vch_promocao = CAST(_int_wpromocao AS CHAR(1));
        END IF;

		SET _int_n = 12;
		
		SELECT code, 
		saldo, 
		dias, 
		fecha, 
		CAST(_int_wcortesia AS CHAR(1)) AS cortesia, 
		_vch_promocao AS promocao,
		_vch_wid AS id, 
		
		_int_wentrada AS entrada
		FROM _exectemp;
    ELSE
        CALL RaiseCustomError(14, null);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_o_cotacaomoeda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_o_cotacaomoeda`(
    _int_codmoeda	INT,	OUT _int_valormoeda		INT
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;

    SELECT lot_n_valor
    INTO _int_valormoeda 
    FROM cas_lot_locaiscotacoes
    WHERE lot_n_codmoeda = _int_codmoeda
    AND	lot_d_datacotacao = (SELECT MAX(lot_d_datacotacao)
    FROM cas_lot_locaiscotacoes
    WHERE lot_n_codmoeda = _int_codmoeda);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_o_exibecierredia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_o_exibecierredia`(
    
)
BEGIN
    DECLARE _int_n                  INT;
    DECLARE _bit_calcular_vendas    TINYINT(1);
    DECLARE _bit_Horas              TINYINT(1);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN   
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;
    
    SET _int_n = 1;
    SELECT prt_b_calcularvendas, prt_b_horas
    INTO _bit_calcular_vendas,  _bit_Horas 
    FROM 	cas_prt_mexparametros 
    WHERE	prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia) 
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE)) and prt_n_status = 1;

	SET _int_n = 2;
	SELECT prt_b_entradacaixa AS entradacaixa, prt_b_reforcocaixa AS reforcocaixa, prt_b_retiradacaixa AS retiradacaixa, 
		prt_b_entradaticketcaixa AS entradaticketcaixa, prt_b_entradaticketmaquina AS entradaticketmaquina, prt_b_entradadinheiromaquina AS entradadinheiromaquina,
		prt_b_entradatotal AS entradatotal, prt_b_salidashoy AS salidashoy, prt_b_salidasant AS salidasant, prt_b_pagamentosmanuais AS pagamentosmanuais,
		prt_b_salidastot AS salidastot, prt_b_saldo AS saldo, prt_b_premiospagos AS premiospagos, prt_b_deduccian1 AS deduccian1, prt_b_deduccian2 AS deduccian2,
		prt_b_saldocaixa AS saldocaixa, prt_b_deduccianentrada AS deduccianentrada, prt_b_cortesias1 AS cortesias1, prt_b_sinretornarhoy AS sinretornarhoy,
		prt_b_sinretornarant AS sinretornarant, prt_b_caducadossinret AS caducadossinret, prt_b_entradascaixamovel AS entradascaixamovel, 
		prt_b_saidascaixamovel AS saidascaixamovel, prt_b_promocoes AS promocoes, prt_b_saidaspromocoes AS saidaspromocoes, 
		prt_b_diferencapromocoes AS diferencapromocoes, prt_b_entradacaixaimp AS entradacaixaimp, prt_b_reforcocaixaimp AS reforcocaixaimp,
		prt_b_retiradacaixaimp AS retiradacaixaimp, prt_b_entradaticketcaixaimp AS entradaticketcaixaimp, prt_b_entradaticketmaquinaimp AS entradaticketmaquinaimp,
		prt_b_entradadinheiromaquinaimp AS entradadinheiromaquinaimp, prt_b_entradatotalimp AS entradatotalimp, prt_b_salidashoyimp AS salidashoyimp,
		prt_b_salidasantimp AS salidasantimp, prt_b_pagamentosmanuaisimp AS pagamentosmanuaisimp, prt_b_salidastotimp AS salidastotimp, prt_b_saldoimp AS saldoimp,
		prt_b_premiospagosimp AS premiospagosimp, prt_b_deduccian1imp AS deduccian1imp, prt_b_deduccian2imp AS deduccian2imp, prt_b_saldocaixaimp AS saldocaixaimp,
		prt_b_deduccianentradaimp AS deduccianentradaimp, prt_b_cortesias1imp AS cortesias1imp, prt_b_sinretornarhoyimp AS sinretornarhoyimp, 
		prt_b_sinretornarantimp AS sinretornarantimp, prt_b_caducadossinretimp AS caducadossinretimp, prt_b_entradascaixamovelimp AS entradascaixamovelimp,
		prt_b_saidascaixamovelimp AS saidascaixamovelimp, prt_b_promocoesimp AS promocoesimp, prt_b_saidaspromocoesimp AS saidaspromocoesimp,
		prt_b_diferencapromocoesimp AS diferencapromocoesimp, prt_b_resultadoparcial AS resultadoparcial, prt_b_resultadoparcialimp AS resultadoparcialimp,
		_bit_calcular_vendas AS calcularvendas, prt_b_rentabcaixa AS rentabcaixa,
		prt_b_rentabcaixaimp AS rentabcaixaimp, _bit_Horas As ValidadeHoras
	FROM cas_prt_cierredia;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_o_exibecierreticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ric`@`localhost` PROCEDURE `p_cas_o_exibecierreticket`()
BEGIN

DECLARE _int_n INT;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN 
    RESIGNAL SET MYSQL_ERRNO = _int_n;
END;

        SET _int_n = 1;

        SELECT C.prt_b_numconta AS numconta, C.prt_b_entdintick AS entdintick, C.prt_b_entdinmaq AS entdinmaq, C.prt_b_entickcx AS entickcx, C.prt_b_totent AS totent,
        C.prt_b_saldo AS saldo, C.prt_b_deducao AS deducao, C.prt_b_pagnet AS pagnet, C.prt_b_premio AS premio, C.prt_b_numcontaimp AS numcontaimp,
        C.prt_b_entdintickimp AS entdintickimp, C.prt_b_entdinmaqimp AS entdinmaqimp, C.prt_b_entickcximp AS entickcximp, C.prt_b_totentimp AS totentimp,
        C.prt_b_saldoimp AS saldoimp, C.prt_b_deducaoimp AS deducaoimp, C.prt_b_pagnetimp AS pagnetimp, C.prt_b_premioimp AS premioimp, C.prt_b_aposta AS aposta,
        C.prt_b_apostaimp AS apostaimp, 
        
        M.prt_n_dias AS dias
        FROM cas_prt_cierreticket C CROSS JOIN cas_prt_mexparametros M
        WHERE M.prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
        FROM cas_prt_mexparametros
        WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_o_mexfechamentoticketxml` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_o_mexfechamentoticketxml`(_vch_maquina	VARCHAR(16))
BEGIN

    DECLARE _num_interesfederal		DECIMAL(18,2);
    DECLARE _num_interesestatal		DECIMAL(18,2);
    DECLARE _int_wdias				   INT;
    DECLARE _num_interes			   DECIMAL(18,2);

    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    SELECT prt_n_dias
    INTO _int_wdias 
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));

    SET _int_n = 2;
    SELECT IFNULL(SUM(imp_n_valor), 0) 
    INTO _num_interesfederal
    FROM cas_imp_meximpostos
    WHERE	imp_n_tipo = 2
    AND	imp_n_status = 1
    AND	imp_d_datavigencia <= CURDATE();

    SET _int_n = 3;
    SELECT IFNULL(SUM(imp_n_valor), 0) 
    INTO _num_interesestatal 
    FROM cas_imp_meximpostos
    WHERE imp_n_tipo = 3
    AND	imp_n_status = 1
    AND	imp_d_datavigencia <= CURDATE();

    SET _int_n = 4;
    SELECT IFNULL(SUM(imp_n_valor), 0) / 100 INTO _num_interes 
    FROM cas_imp_meximpostos
    WHERE imp_n_tipo = 1
    AND	imp_n_status = 1
    AND	imp_d_datavigencia <= CURDATE();

    SET _int_n = 5;
    CREATE TEMPORARY TABLE _relatorio1(tipo INT, numeroticket VARCHAR(8), entrada DECIMAL(18,2), saida DECIMAL(18,2), deducao1 DECIMAL(18,2), 
    deducao2 DECIMAL(18,2), premio DECIMAL(18,2), saldo DECIMAL(18,2), entradaatual DECIMAL(18,2), cortesia DECIMAL(18,2), expirado DECIMAL(18,2), 
    status TINYINT(1), promocao DECIMAL(18,2), active INT, actualdia INT, fechouterminal INT);

    SET _int_n = 6;
    CREATE TEMPORARY TABLE _relatorio(tipo INT, numeroticket VARCHAR(8), entrada DECIMAL(18,2), saida DECIMAL(18,2), deducao1 DECIMAL(18,2),
    deducao2 DECIMAL(18,2), premio DECIMAL(18,2), saldo DECIMAL(18,2), entradaatual DECIMAL(18,2),  cortesia DECIMAL(18,2), expirado DECIMAL(18,2),
    status TINYINT(1), promocao DECIMAL(18,2), active INT, actualdia INT, fechouterminal INT);

    SET _int_n = 7;
    INSERT INTO _relatorio(tipo, numeroticket, entrada, saida, deducao1, deducao2, premio, 
    saldo, entradaatual, cortesia, status, promocao, active, actualdia, fechouterminal)
    VALUES(0, '0000000', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);

    SET _int_n = 8;
    INSERT INTO _relatorio1(numeroticket, tipo, entrada, saida, deducao1, deducao2, premio,
    saldo, entradaatual, cortesia, status, promocao, active, actualdia, fechouterminal)
    SELECT DISTINCT tck_c_code, 0, tck_n_entrada, tck_n_salida, 0, 0, 0, tck_n_saldo,
    0, tck_n_cortesia, 1, tck_n_promocao, tck_n_activa, tck_n_actualdia, 0
    FROM cas_tck_mextickets INNER JOIN cas_mvi_mexmovimientos ON mvi_c_code = tck_c_code
    WHERE mvi_c_maquina = _vch_maquina;

    SET _int_n = 9;
    UPDATE _relatorio1 
    SET deducao1 = (((saida - entrada) * (_num_interesfederal / 100)) / 100),
    deducao2 = (((saida - entrada) * (_num_interesestatal / 100)) / 100);

    SET _int_n = 10;
    UPDATE _relatorio1 
    SET deducao1 = 0,
    deducao2 = 0
    WHERE saida < entrada 
    OR active = 1;

    SET _int_n = 11;
    UPDATE _relatorio1 
    SET deducao1 = (((saida - (((entrada) / 10) * 8)) * (_num_interesfederal / 100)) / 100)
    WHERE 
    cortesia = 0 
    AND promocao = 0 
    AND saida > entrada 
    AND active = 0;

    SET _int_n = 12;
    UPDATE _relatorio1 
    SET deducao1 = 0
    WHERE saida < entrada 
    OR active = 1;

    SET _int_n = 13;	
    UPDATE _relatorio1 
    SET deducao1 = (((saida - (((entrada) / 10) * 8)) * (_num_interesfederal / 100)) / 100),
    deducao2 = (((saida - (((entrada) / 10) * 8)) * (_num_interesestatal / 100)) / 100)
    WHERE
    cortesia = 0 
    AND promocao = 0 
    AND saida > entrada 
    AND active = 0;
	
    SET _int_n = 14;
    UPDATE _relatorio1
    SET tipo = 0
    WHERE actualdia = 1 
    AND active = 1;
	
    SET _int_n = 15;		
    UPDATE _relatorio1
    SET tipo = 1
    WHERE actualdia = 1 
    AND active = 0;

    SET _int_n = 16;	
    UPDATE _relatorio1
    SET tipo = 2
    WHERE actualdia = 0 
    AND active = 0;

    SET _int_n = 17;		
    UPDATE _relatorio1
    SET tipo = 3
    WHERE actualdia = 0 
    AND active = 1;

    SET _int_n = 18;		
    UPDATE _relatorio1
    SET tipo = 3
    WHERE actualdia = 0 
    AND active = 1;

    SET _int_n = 19;
    UPDATE _relatorio1
    SET premio = saida - entrada;

    SET _int_n = 22;
    UPDATE _relatorio1
    SET saida = saida - entrada 
    WHERE promocao = 1
    AND saida > 0;
	
    SET _int_n = 23;
    INSERT INTO _relatorio(numeroticket, tipo, entrada, saida, deducao1, deducao2, premio, 
    saldo, entradaatual, cortesia, status, promocao, active, actualdia, fechouterminal)
    SELECT numeroticket, tipo, entrada, saida, deducao1, deducao2, premio, 
    saldo, entradaatual, cortesia, status, promocao, active, actualdia,
    IFNULL((SELECT 1 
    FROM cas_mvi_mexmovimientos 
    WHERE mvi_c_code = numeroticket 
    AND mvi_c_maquina = _vch_maquina
    AND (mvi_n_tipomov = 3 
    OR mvi_n_tipomov = 6))
    , 0)
    FROM _relatorio1;

    SET _int_n = 20;
    UPDATE _relatorio
    SET premio = (saida - (((entrada) / 10) * 8))
    WHERE 
    cortesia = 0 
    AND promocao = 0 
    AND saida > entrada 
    AND active = 0 
    AND fechouterminal = 1;

    SET _int_n = 21;
    UPDATE _relatorio
    SET premio = 0
    WHERE (saida < entrada and promocao = 0)
    OR active = 1 
    OR fechouterminal = 0;

    SET _int_n = 24;
    SELECT promocao, tipo, numeroticket, entrada, CASE fechouterminal WHEN 0 THEN 0 ELSE IFNULL(saida, 0) END AS saida,
    CASE fechouterminal WHEN 0 THEN 0 ELSE IFNULL(deducao1, 0) END AS deducao1, CASE fechouterminal WHEN 0 THEN 0 ELSE IFNULL(deducao2, 0) END AS deducao2,
    IFNULL(premio, 0) As premio, IFNULL(saldo, 0) As saldo, IFNULL((SELECT SUM(mvi_n_valor)
    FROM cas_mvi_mexmovimientos
    WHERE mvi_c_code = numeroticket
    AND mvi_n_tipomov = 1
    AND mvi_c_maquina = _vch_maquina), 0) AS entradaatual,
    cortesia, expirado
    FROM _relatorio;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_o_mexobterexpiracaotickets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_o_mexobterexpiracaotickets`(
    _int_tipooperacao       INT,	
    _bit_fechamento         TINYINT(1)
)
BEGIN
    DECLARE _int_n INT;
    DECLARE _dtm_dataultimo	DATETIME;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
    RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;

    SELECT MAX(tck_d_fecha) INTO _dtm_dataultimo
    FROM cas_tck_mextickets;

    IF (_dtm_dataultimo IS NOT NULL)
    THEN
    IF (NOW(6) < _dtm_dataultimo)
    THEN

    CALL RaiseCustomError(253, null);
    END IF;
    END IF;


    IF (_int_tipooperacao = 0)
    THEN
        SET _int_n = 4;
        SELECT 	prt_n_codigo As codigo, prt_n_valor As valormaxticket, prt_n_dias As diasprazoticket, 
        prt_n_status As status1, prt_d_datavigencia As datavigencia, prt_b_enviaremailcierredia As enviaremailcierredia,
        prt_b_impcompaddcred As impcompaddcred, prt_b_operarnumerosinteiros As operanuminteiro, prt_b_emailcontfechamento As emailcontfechamento, 
        prt_b_contabilparcial As contabilparcial, 

        prt_n_diascontabil As diascontabilex,
        prt_b_enviapdfcontabil As enviapdfcontabil, prt_b_enviaxmlcontabil As enviaxmlcontabil, prt_b_enviarpagmanualfechamento As enviarpagmanualfechamento, 
        prt_b_enviarpdfpagmanual As enviarpdfpagmanual, prt_b_enviarxmlpagmanual As enviarxmlpagmanual,
        prt_b_permitirsaldonegativo As valoresnegativos, prt_b_calcularvendas As calcularvendas, prt_b_fecharticketpromocao As fecharticketpromo, 
        prt_b_enviarcontmod As enviarcontmod, prt_b_enviarcontfab As enviarcontfab,	

        prt_b_fechamentoconsolidado As fechamentoconsolidado,
        prt_n_numeromaximojogadores As MaximoJogadores, prt_b_horas As Horas, 
        prt_t_horaabertura as HoraAbertura, prt_t_horafechamento as HoraFechamento,prt_b_encerraautomatico as Isencerraautomatico
        FROM cas_prt_mexparametros
        WHERE prt_n_status = 1;
    ELSE
        SET _int_n = 5;
        SELECT prt_n_codigo As codigo, prt_n_valor As valormaxticket, prt_n_dias As diasprazoticket, 
        prt_n_status As status1, prt_d_datavigencia As datavigencia, prt_b_enviaremailcierredia As enviaremailcierredia,
        prt_b_impcompaddcred As impcompaddcred, prt_b_operarnumerosinteiros As operanuminteiro, prt_b_emailcontfechamento As emailcontfechamento, 
        prt_b_contabilparcial As contabilparcial, 

        prt_n_diascontabil As diascontabilex, prt_b_enviapdfcontabil As enviapdfcontabil, 
        prt_b_enviaxmlcontabil As enviaxmlcontabil, prt_b_enviarpagmanualfechamento As enviarpagmanualfechamento, prt_b_enviarpdfpagmanual As enviarpdfpagmanual, 
        prt_b_enviarxmlpagmanual As enviarxmlpagmanual,	prt_b_permitirsaldonegativo As valoresnegativos, prt_b_calcularvendas As calcularvendas, 
        prt_b_fecharticketpromocao As fecharticketpromo, prt_b_enviarcontmod As enviarcontmod, prt_b_enviarcontfab As enviarcontfab,

        prt_b_fechamentoconsolidado As fechamentoconsolidado, prt_n_numeromaximojogadores As MaximoJogadores, prt_b_horas As Horas,
        prt_t_horaabertura as HoraAbertura,prt_t_horafechamento as HoraFechamento,prt_b_encerraautomatico as Isencerraautomatico
        FROM cas_prt_mexparametros
        WHERE prt_d_datavigencia <= CURDATE()
        ORDER BY prt_d_datavigencia DESC LIMIT 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_o_mexticketsvencidos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_o_mexticketsvencidos`(
  _vch_maquina	VARCHAR(16)  
)
BEGIN
   DECLARE _int_diasValidez	INT;
	DECLARE _int_interesfederal	INT;
	DECLARE _int_interesestatal	INT;
	DECLARE _bit_Horas TINYINT(1);	

    DECLARE _int_n INT;

	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = int_n;
	END;


    SET _int_n = 1;
    SELECT IFNULL(prt_n_dias, 0), prt_b_horas
    INTO _int_diasValidez , _bit_Horas 
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia = (SELECT MAX(prt_d_datavigencia)
    FROM cas_prt_mexparametros
    WHERE prt_d_datavigencia <= CAST(CURDATE() AS DATE));

	
    SET _int_n = 2;
    SELECT SUM(imp_n_valor)
    INTO _int_interesfederal 
    FROM cas_imp_meximpostos
    WHERE imp_n_tipo = 2
    AND imp_n_status = 1
    AND imp_d_datavigencia <= CAST(CURDATE() AS DATE);

	SET _int_interesfederal = IFNULL(_int_interesfederal, 0) / 100;

	
    SET _int_n = 3;
    SELECT SUM(imp_n_valor)
    INTO _int_interesestatal
    FROM cas_imp_meximpostos
    WHERE imp_n_tipo = 3
    AND imp_n_status = 1
    AND imp_d_datavigencia <= CAST(CURDATE() AS DATE);
	
	SET _int_interesestatal = IFNULL(_int_interesestatal, 0) / 100;

	SET _int_n = 4;
	CREATE TABLE _exectemp(numeroticket VARCHAR(8), datacriacao VARCHAR(30), datafechamento VARCHAR(30), saldo INT, entradas INT,
		premio INT, deducao1 INT, deducao2 INT);

	
	SET _int_n = 5;

	IF (_bit_Horas = 1) 
   THEN
        INSERT INTO _exectemp
        SELECT tck_c_code, DATE_FORMAT(tck_d_fecha,'%d/%m/%Y'), DATE_FORMAT(tck_d_fechacierre,'%d/%m/%Y'),
        tck_n_saldo, tck_n_entrada,
        CASE WHEN tck_n_saldo < tck_n_entrada THEN 0 ELSE (tck_n_saldo - tck_n_entrada) END,
        CASE WHEN tck_n_saldo < tck_n_entrada THEN 0 ELSE ((IFNULL(tck_n_saldo - tck_n_entrada, 0) * _int_interesfederal) / 100) END,
        CASE WHEN tck_n_saldo < tck_n_entrada THEN 0 ELSE ((IFNULL(tck_n_saldo - tck_n_entrada, 0) * _int_interesestatal) / 100) END
        FROM (SELECT tck_c_code, tck_n_saldo, tck_d_fecha, tck_d_fechacierre, tck_n_entrada 
        FROM cas_tck_mextickets
        WHERE TIMESTAMPDIFF(HOUR, tck_d_fecha, CURDATE()) >= _int_diasValidez
        AND tck_c_maquina = _vch_maquina
        AND tck_n_activa = 1
        UNION
        SELECT tcm_c_code, tcm_n_saldo, tcm_d_fecha, tcm_d_fechacierre, tcm_n_entrada 
        FROM cas_tcm_ticketsexcluidos
        WHERE TIMESTAMPDIFF(HOUR, tcm_d_fecha, CURDATE()) >= _int_diasValidez
        AND tcm_c_maquina = _vch_maquina
        AND tcm_n_activa = 1) AS tickets;
    ELSE
	  INSERT INTO _exectemp
        SELECT tck_c_code, DATE_FORMAT(tck_d_fecha,'%d/%m/%Y'), DATE_FORMAT(tck_d_fechacierre,'%d/%m/%Y'),
        tck_n_saldo, tck_n_entrada,
        CASE WHEN tck_n_saldo < tck_n_entrada THEN 0 ELSE (tck_n_saldo - tck_n_entrada) END,
        CASE WHEN tck_n_saldo < tck_n_entrada THEN 0 ELSE ((IFNULL(tck_n_saldo - tck_n_entrada, 0) * _int_interesfederal) / 100) END,
        CASE WHEN tck_n_saldo < tck_n_entrada THEN 0 ELSE ((IFNULL(tck_n_saldo - tck_n_entrada, 0) * _int_interesestatal) / 100) END
        FROM (SELECT tck_c_code, tck_n_saldo, tck_d_fecha, tck_d_fechacierre, tck_n_entrada 
        FROM cas_tck_mextickets
        WHERE TIMESTAMPDIFF(day, tck_d_fecha, CURDATE()) >= _int_diasValidez
        AND tck_c_maquina = _vch_maquina
        AND tck_n_activa = 1
        UNION
        SELECT tcm_c_code, tcm_n_saldo, tcm_d_fecha, tcm_d_fechacierre, tcm_n_entrada 
        FROM cas_tcm_ticketsexcluidos
        WHERE TIMESTAMPDIFF(day, tcm_d_fecha, CURDATE()) >= _int_diasValidez
        AND tcm_c_maquina = _vch_maquina
        AND tcm_n_activa = 1) AS tickets;

     END IF;


    SET _int_n = 6;
    SELECT numeroticket AS numeroticket, datacriacao AS datacriacao, datafechamento AS datafechamento, saldo AS saldo, entradas As entradas, 
    premio AS premio, deducao1 AS deducao1, deducao2 AS deducao2
    FROM _exectemp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_cas_o_ticketsinvalidos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_cas_o_ticketsinvalidos`(
    _vch_maquina	VARCHAR(16)
)
BEGIN
    DECLARE _int_n INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN 
        RESIGNAL SET MYSQL_ERRNO = _int_n;
    END;

    SET _int_n = 1;
    SELECT his_c_numticket AS Ticket, cli_c_name AS Usuario, his_d_datainclusao AS Data
    FROM cas_his_historicooperacao INNER JOIN cas_cli_clientes ON cli_c_cpf = his_c_cpf
    WHERE his_c_maquina = vch_maquina
    AND his_d_datainclusao >= DATE_SUB(CURDATE(), INTERVAL 1 DAY)
    AND his_d_datainclusao <= CURDATE()
    AND his_n_codigooperacao = 70;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RaiseCustomError` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RaiseCustomError`(int_n INT, msg VARCHAR(128))
BEGIN


DECLARE GenericError CONDITION FOR SQLSTATE '02000';

		IF(msg <> null OR msg <> '') THEN	
			SIGNAL GenericError
			SET MYSQL_ERRNO=int_n, MESSAGE_TEXT = msg;
		ELSE
			SIGNAL GenericError
			SET MYSQL_ERRNO=int_n, MESSAGE_TEXT = 'Regra de negócio não respeitada. Contate o Administrador.';
		END IF; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RaiseExError` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RaiseExError`(int_n INT)
BEGIN
       
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
     RESIGNAL SET MYSQL_ERRNO = _int_n;
   
    END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RegDebug` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegDebug`(varName VARCHAR(30), varValue INT)
BEGIN
	INSERT INTO DebugInfoTable(variableName, varValue, TimeOccurred) VALUES
	(varName, varValue, NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReturnErrorState` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ReturnErrorState`(	OUT cod CHAR(5), 
												OUT msg TEXT, 
												OUT result TEXT, 
												OUT cno INT,
												OUT errno INT, 
												OUT className VARCHAR(50),
												OUT columnName VARCHAR(50),
												OUT subClass VARCHAR(50),
												OUT cCatalog VARCHAR(50),
												OUT cSchema VARCHAR(50),
												OUT cName VARCHAR(50),
												OUT catalog VARCHAR(50),
												OUT schemaN VARCHAR(50),
												OUT tableN VARCHAR(50),
												OUT cursorN VARCHAR(50)
												)
BEGIN
SET cod = '00000';
							
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TesteDiagnostico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TesteDiagnostico`(OUT int_n INT)
`LABEL_PRINCIPAL`: BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		ROLLBACK;
		CALL uspLogError;
		SELECT "ESCOPO HANDLER ALCANCADO";
	END;
	
	START TRANSACTION;
	
	
	SET int_n = 1;

	

	
	COMMIT;
	SET int_n = 0;

	SELECT "COMMIT REALIZADO";
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TesteSignal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TesteSignal`(int_n INT)
BEGIN

  


DECLARE error_message VARCHAR(128);
DECLARE var CHAR(5);

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		RESIGNAL SET MYSQL_ERRNO = _int_n;
	END;




	CASE int_n
      WHEN 0 THEN
		BEGIN
			SELECT "procedure bem sucedida";
		END;
      WHEN 1 THEN
		BEGIN
			SET error_message = 'RN1';
			CALL RaiseCustomError(int_n, error_message);
		
			
			
		END;
	WHEN 2 THEN
		BEGIN
			
			
			CALL RaiseCustomError(int_n, null);
		END;

	WHEN 3 THEN
		BEGIN 
			DROP TABLE `ticket`.`inexistente`;
		END;
    END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uspLogError` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `uspLogError`()
BEGIN
DECLARE cod CHAR(5) DEFAULT '00000';
	DECLARE rows INT;	
	DECLARE msg,result TEXT;
	DECLARE cno, errno INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		
		

		INSERT INTO Error_Log (sysn_UserName, int_errorNumber, vch_ErrorMessage)
		VALUES (CURRENT_USER(), errno, msg);
	END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uspLogError1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `uspLogError1`(OUT returnStatus INT)
BEGIN
	DECLARE cod CHAR(5) DEFAULT '00000';
	DECLARE rows INT;	
	DECLARE msg,result TEXT;
	DECLARE cno, errno INT;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 
		
		
		SET returnStatus = 1;

		INSERT INTO Error_Log (sysn_UserName, int_errorNumber, vch_ErrorMessage)
		VALUES (CURRENT_USER(), errno, msg);
	END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_development_manage_add_credit_ticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_development_manage_add_credit_ticket`(
    _codigoTicket VARCHAR(8),
    _valor        DECIMAL(18,2),
    _codigoUsuario INT
)
BEGIN

DECLARE _cpf VARCHAR(11);

SELECT cli_c_cpf INTO _cpf FROM cas_cli_clientes
WHERE cli_n_codigo = _codigoUsuario;

-- Obtem parametrizacao dos tickets para validacao

call p_cas_o_mexobterexpiracaotickets(1,0);


CALL 
p_cas_i_wmexnewmovement 
(_codigoTicket,_valor,100000,1,'F04DA2E5208C','');

call 
p_cas_i_atualizahistoricooperacao 
(_cpf,
 'Crear Ticket',
 concat('Add credit: ', _codigoTicket, ' Valor: ',_valor),
  _codigoTicket,
  1,
  _valor,
  '0',
  '',
  'F04DA2E5208C');



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_development_manage_close_ticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_development_manage_close_ticket`(

    _codigoTicket VARCHAR(8),
    _codigoUsuario INT
)
BEGIN

DECLARE _saldo DECIMAL (18,2);
DECLARE _cpf VARCHAR(11);

SELECT tck_n_saldo INTO _saldo 
FROM cas_tck_mextickets
WHERE tck_c_code = _codigoTicket;

SELECT cli_c_cpf INTO _cpf FROM cas_cli_clientes
WHERE cli_n_codigo = _codigoUsuario;


-- --REALIZA A SEGUNDA CHAMADA A PROC p_cas_i_wmexcierreticket 
-- NO ENTANTO COM O PARAMETRO @int_save=1 NO QUAL EFETIVA O FECHAMENTO DO TICKET
call p_cas_i_wmexcierreticket 
(_codigoTicket,
'',
1, -- @int_save=@
'F04DA2E5208C',
1,
1,
0,
1);

-- REGISTRA O HISTÓRICO DE OPERAÇÃO
call p_cas_i_atualizahistoricooperacao 
(_cpf,
'Close Ticket',
CONCAT('Close: ',_codigoTicket,' Valor: ', _saldo),
_codigoTicket,
4,
10000,
'0',
'395836320130416111100',
'F04DA2E5208C');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_development_manage_create_ticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_development_manage_create_ticket`(_operacao TINYINT(1),
                                         _codigoUsuario TINYINT(2), 
                                         _codigoTicket VARCHAR(8), 
                                         _valor DECIMAL(18,2)
                                          )
BEGIN

DECLARE _cpf VARCHAR(11);

SELECT cli_c_cpf INTO _cpf FROM cas_cli_clientes
WHERE cli_n_codigo = _codigoUsuario;

IF(_operacao =1) -- Criar Ticket
THEN
    call 
    p_cas_i_wmexnewticket
    (_codigoTicket,_valor,1,'F04DA2E5208C','',0);
    -- (CodigoTicket,Valor,TipoMov,Maquina,Id,CodigoCliente)


    -- adiciona a criacao do ticket no historico
    call p_cas_i_atualizahistoricooperacao (
    _cpf,
    'Crear Ticket', 
    concat('Crear: ', _codigoTicket, ' Valor: ',_valor),
    _codigoTicket,
    1,
    _valor,
    '0',
    '',
    'F04DA2E5208C');
END IF;

IF(_operacao = 0) 
THEN -- Desfazer Adicao de Cŕedito)

    DELETE FROM cas_tck_mextickets
    WHERE tck_c_code = _codigoTicket;

    DELETE FROM cas_mvi_mexmovimientos
    WHERE mvi_c_code = _codigoTicket;

    DELETE FROM  cas_his_historicooperacao
    WHERE his_c_numticket = _codigoticket;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `_development_manage_test_users` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `_development_manage_test_users`(flg_create TINYINT(1))
BEGIN

IF(flg_create)
THEN
    INSERT INTO `cas_cli_clientes` 
    (`cli_n_codigo`,`cli_c_usuario`,`cli_c_senha`,`cli_n_tipologin`,`cli_c_cpf`,`cli_c_name`,`cli_c_nickname`,`cli_c_street`,`cli_c_streetnum`,`cli_c_complemento`,`cli_c_zona`,`cli_c_city`,`cli_c_state`,`cli_c_postalcode`,`cli_c_birthday`,`cli_c_sex`,`cli_c_civilstate`,`cli_c_profesion`,`cli_c_email`,`cli_c_codtelefon`,`cli_c_telefon`,`cli_c_codtelcelular`,`cli_c_telcelular`,`cli_c_codtelcomercial`,`cli_c_telcomercial`,`cli_c_codfax`,`cli_c_fax`,`cli_c_lastfrombankerid`,`cli_c_lastfromnumerocartao`,`cli_c_rg`,`cli_n_situacao`,`cli_n_creditosjogados`,`cli_n_pontos`,`cli_n_pontosusados`,`cli_c_data`,`cli_d_rpub`,`cli_c_rsub`,`cli_c_banco`,`cli_c_clientedesde`,`cli_c_foneref2`,`cli_c_nomeref2`,`cli_c_nomeref`,`cli_c_renda`,`cli_c_tipopessoa`,`cli_c_foneref`,`cli_n_bloqueado`,`cli_c_digitado`,`cli_b_expirasenha`,`cli_n_diasenha`,`cli_d_datasenha`,`cli_b_enviadointernet`,`cli_n_codigointernet`,`cli_n_codigoclienteinclusao`) 
    VALUES 
    (1,'User1','644178114313429135972293472238730138',NULL,'11111111111','user1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,1,NULL,0,0,'2013-02-20 18:54:07',0,NULL,NULL);

    INSERT INTO `cas_cli_clientes` 
    (`cli_n_codigo`,`cli_c_usuario`,`cli_c_senha`,`cli_n_tipologin`,`cli_c_cpf`,`cli_c_name`,`cli_c_nickname`,`cli_c_street`,`cli_c_streetnum`,`cli_c_complemento`,`cli_c_zona`,`cli_c_city`,`cli_c_state`,`cli_c_postalcode`,`cli_c_birthday`,`cli_c_sex`,`cli_c_civilstate`,`cli_c_profesion`,`cli_c_email`,`cli_c_codtelefon`,`cli_c_telefon`,`cli_c_codtelcelular`,`cli_c_telcelular`,`cli_c_codtelcomercial`,`cli_c_telcomercial`,`cli_c_codfax`,`cli_c_fax`,`cli_c_lastfrombankerid`,`cli_c_lastfromnumerocartao`,`cli_c_rg`,`cli_n_situacao`,`cli_n_creditosjogados`,`cli_n_pontos`,`cli_n_pontosusados`,`cli_c_data`,`cli_d_rpub`,`cli_c_rsub`,`cli_c_banco`,`cli_c_clientedesde`,`cli_c_foneref2`,`cli_c_nomeref2`,`cli_c_nomeref`,`cli_c_renda`,`cli_c_tipopessoa`,`cli_c_foneref`,`cli_n_bloqueado`,`cli_c_digitado`,`cli_b_expirasenha`,`cli_n_diasenha`,`cli_d_datasenha`,`cli_b_enviadointernet`,`cli_n_codigointernet`,`cli_n_codigoclienteinclusao`) 
    VALUES 
    (2,'User2','644178114313429135972293472238730138',NULL,'22222222222','user2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,1,NULL,0,0,'2013-02-20 18:54:07',0,NULL,NULL);

    INSERT INTO `cas_cli_clientes` 
    (`cli_n_codigo`,`cli_c_usuario`,`cli_c_senha`,`cli_n_tipologin`,`cli_c_cpf`,`cli_c_name`,`cli_c_nickname`,`cli_c_street`,`cli_c_streetnum`,`cli_c_complemento`,`cli_c_zona`,`cli_c_city`,`cli_c_state`,`cli_c_postalcode`,`cli_c_birthday`,`cli_c_sex`,`cli_c_civilstate`,`cli_c_profesion`,`cli_c_email`,`cli_c_codtelefon`,`cli_c_telefon`,`cli_c_codtelcelular`,`cli_c_telcelular`,`cli_c_codtelcomercial`,`cli_c_telcomercial`,`cli_c_codfax`,`cli_c_fax`,`cli_c_lastfrombankerid`,`cli_c_lastfromnumerocartao`,`cli_c_rg`,`cli_n_situacao`,`cli_n_creditosjogados`,`cli_n_pontos`,`cli_n_pontosusados`,`cli_c_data`,`cli_d_rpub`,`cli_c_rsub`,`cli_c_banco`,`cli_c_clientedesde`,`cli_c_foneref2`,`cli_c_nomeref2`,`cli_c_nomeref`,`cli_c_renda`,`cli_c_tipopessoa`,`cli_c_foneref`,`cli_n_bloqueado`,`cli_c_digitado`,`cli_b_expirasenha`,`cli_n_diasenha`,`cli_d_datasenha`,`cli_b_enviadointernet`,`cli_n_codigointernet`,`cli_n_codigoclienteinclusao`) 
    VALUES 
    (3,'User3','644178114313429135972293472238730138',NULL,'33333333333','user3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,1,NULL,0,0,'2013-02-20 18:54:07',0,NULL,NULL);
ELSE
    DELETE FROM `cas_cli_clientes` 
    WHERE `cli_n_codigo` IN (1, 2, 3);
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-03 16:19:03
