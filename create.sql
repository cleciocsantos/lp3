-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06-Out-2022 às 20:46
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ds302`
--
CREATE DATABASE IF NOT EXISTS `ds302` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ds302`;

-- OS TRÊS COMANDOS ABAIXO FORAM INSERIDOS MANUALMENTE DEPOIS DA EXPORTAÇÃO:
DROP USER IF EXISTS 'estudante'@'localhost';
CREATE USER 'estudante'@'localhost' IDENTIFIED BY '123'; 
GRANT ALL PRIVILEGES ON ds302.* TO 'estudante'@'localhost';

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `cod_cliente` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_nasc` varchar(10) NOT NULL,
  `cartao` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cod_cliente`, `nome`, `email`, `senha`, `data_nasc`, `cartao`) VALUES
(1, 'ClÃ©cio Santos', 'clecio@teste.com', '$2y$10$z5te3twplCwQsb5F178RIOeXBwNLrr.I62oDIDCxkxDKUypxtfD.i', '2000-12-12', 'MasterCard'),
(3, 'Kauan Martinez', 'kauan@teste.com', '$2y$10$YZTsoxZs1IWNB5WCO8q7Reu4xi8Av.GKChMSA86RGtNc4cjGSovwe', '2000-12-12', 'Visa Electron'),
(4, 'testador teste', 'testador@teste.com', '$2y$10$YZTsoxZs1IWNB5WCO8q7Reu4xi8Av.GKChMSA86RGtNc4cjGSovwe', '2022-09-22', 'Visa'),
(5, 'ClÃ©cio Santos', 'clecio2@teste.com', '$2y$10$YZTsoxZs1IWNB5WCO8q7Reu4xi8Av.GKChMSA86RGtNc4cjGSovwe', '2022-09-15', 'MasterCard'),
(6, 'testador 3', 'teste3@teste.com', '$2y$10$YZTsoxZs1IWNB5WCO8q7Reu4xi8Av.GKChMSA86RGtNc4cjGSovwe', '2005-04-12', 'Visa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
