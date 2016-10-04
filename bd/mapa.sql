-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04-Out-2016 às 22:21
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mapa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `distribuidores`
--

CREATE TABLE `distribuidores` (
  `cod_dis` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `est_cod` int(11) NOT NULL,
  `cep` varchar(50) NOT NULL,
  `fl_ativo` bit(1) NOT NULL DEFAULT b'1',
  `telefone` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `distribuidores`
--

INSERT INTO `distribuidores` (`cod_dis`, `nome`, `cidade`, `est_cod`, `cep`, `fl_ativo`, `telefone`, `email`) VALUES
(1, 'Distribuidora Lorem Ipsum', 'São Paulo', 21, '18800000', b'1', '(11) 3939-0000', 'contato@lorem.com.br'),
(2, 'Distribuidora Lorem Ipsum 2', 'Presidente Prudente', 21, '19050310', b'1', '(18) 3939-0000', 'contato@lorem.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `cod_est` int(11) NOT NULL,
  `estado` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`cod_est`, `estado`) VALUES
(1, 'Tocantins'),
(2, 'Bahia'),
(3, 'Sergipe'),
(4, 'Pernambuco'),
(5, 'Alagoas'),
(6, 'Rio Grande do Norte'),
(7, 'Ceará'),
(8, 'Piauí'),
(9, 'Maranhão'),
(10, 'Amapá'),
(11, 'Pará'),
(12, 'Roraima'),
(13, 'Amazonas'),
(14, 'Acre'),
(15, 'Rondônia'),
(16, 'Mato Grosso'),
(17, 'Mato Grosso do Sul'),
(18, 'Goiás'),
(19, 'Paraná'),
(20, 'Santa Catarina'),
(21, 'Rio Grande do Sul'),
(22, 'São Paulo'),
(23, 'Minas Gerais'),
(24, 'Rio de Janeiro'),
(25, 'Espírito Santo'),
(26, 'Distrito Federal'),
(27, 'Paraíba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `distribuidores`
--
ALTER TABLE `distribuidores`
  ADD PRIMARY KEY (`cod_dis`);

--
-- Indexes for table `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`cod_est`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distribuidores`
--
ALTER TABLE `distribuidores`
  MODIFY `cod_dis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `cod_est` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
