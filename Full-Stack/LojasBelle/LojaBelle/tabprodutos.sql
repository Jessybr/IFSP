-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/12/2023 às 19:36
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_loja`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabprodutos`
--

CREATE TABLE `tabprodutos` (
  `proId` int(11) NOT NULL,
  `proDescricao` varchar(255) DEFAULT NULL,
  `proImagem` varchar(30) NOT NULL,
  `proPreco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tabprodutos`
--

INSERT INTO `tabprodutos` (`proId`, `proDescricao`, `proImagem`, `proPreco`) VALUES
(123, 'Bolsa Tote Viena Feminina Lisa', 'bolsa1', 77.00),
(456, 'Bolsa Feminina Grande Transversal Selten Preta - Preto - Feminino - Dafiti', 'bolsa2', 99.00),
(789, 'Bolsa Feminina Cross Matelassê Branca ', 'bolsa3', 129.00),
(147, 'Bolsa Quebek Tiracolo Transversal Feminina Moda Casual Valentina Kister Vermelha', 'bolsa4', 59.00),
(258, 'Bolsa Pequena Feminina De Mão E Tiracolo Bolsinha Transversal Clutch Mini Bag ', 'bolsa5', 69.00),
(369, 'Bolsa Feminina Sofistic - Light Blue', 'bolsa6', 219.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
