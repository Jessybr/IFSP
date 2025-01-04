-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: bddelivery
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.18-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cardapio`
--

DROP TABLE IF EXISTS `cardapio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardapio` (
  `id` int(11) NOT NULL,
  `id_restaurante` int(11) NOT NULL,
  `id_prato` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardapio`
--

LOCK TABLES `cardapio` WRITE;
/*!40000 ALTER TABLE `cardapio` DISABLE KEYS */;
INSERT INTO `cardapio` VALUES (1,1,1,1),(1,1,NULL,6639),(1,1,NULL,6007),(1,1,NULL,8646),(1,1,4035,NULL),(1,1,NULL,2712),(1,1,4112,NULL),(1,1,839,NULL),(1,1,2981,NULL),(1,1,6358,NULL),(1,1,9328,NULL),(1,1,7714,NULL),(1,1,NULL,9546),(1,1,NULL,2682),(1,1,NULL,8503),(1,1,NULL,4704),(1,1,NULL,1783),(1,1,1887,NULL),(1,1,NULL,4709),(1,1,NULL,2713),(1,1,1,1),(1,1,NULL,6639),(1,1,NULL,6007),(1,1,NULL,8646),(1,1,4035,NULL),(1,1,NULL,2712),(1,1,4112,NULL),(1,1,839,NULL),(1,1,2981,NULL),(1,1,6358,NULL),(1,1,9328,NULL),(1,1,7714,NULL),(1,1,NULL,9546),(1,1,NULL,2682),(1,1,NULL,8503),(1,1,NULL,4704),(1,1,NULL,1783),(1,1,1887,NULL),(1,1,NULL,4709),(1,1,NULL,2713),(1,1,1,1),(1,1,NULL,6639),(1,1,NULL,6007),(1,1,NULL,8646),(1,1,4035,NULL),(1,1,NULL,2712),(1,1,4112,NULL),(1,1,839,NULL),(1,1,2981,NULL),(1,1,6358,NULL),(1,1,9328,NULL),(1,1,7714,NULL),(1,1,NULL,9546),(1,1,NULL,2682),(1,1,NULL,8503),(1,1,NULL,4704),(1,1,NULL,1783),(1,1,1887,NULL),(1,1,NULL,4709),(1,1,NULL,2713);
/*!40000 ALTER TABLE `cardapio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prato` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `id_restaurante` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `endereco_entrega` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `quantidade` int(11) NOT NULL DEFAULT 1,
  `id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho`
--

LOCK TABLES `carrinho` WRITE;
/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prato`
--

DROP TABLE IF EXISTS `prato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `descricao` text CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `ingredientes` text CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `id_restaurante` int(11) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prato`
--

LOCK TABLES `prato` WRITE;
/*!40000 ALTER TABLE `prato` DISABLE KEYS */;
INSERT INTO `prato` VALUES (839,'Pizza de Atum','A pizza de atum é uma opção leve e saborosa, combinando a suculência do atum com a cremosidade do queijo, realçada pelo sabor da cebola e azeitonas.','atum, cebola, azeitonas, queijo mussarela, molho de tomate, pimenta-do-reino',45.00,1,'pizzaAtum.png'),(2981,'Pizza de Bacon','A pizza de bacon é ideal para os amantes de sabores intensos, onde o bacon crocante se destaca em meio ao queijo derretido e à suavidade da cebola.','bacon, molho de tomate, queijo mussarela, cebola, orégano.',34.00,1,'pizzaBacon.png'),(4112,'Pizza de Calabresa','A pizza de Calabresa é uma opção leve e saudável, onde é combinado com queijo. Aproveite para esprimentar!','calabresa, queijo mussarela, molho de tomate',23.00,1,'pizzaCalabresa.png'),(6358,'Pizza Vegetariana','A pizza vegetariana é uma explosão de cores e sabores, reunindo uma variedade de vegetais frescos sobre uma base de queijo derretido.','molho de tomate, queijo mussarela, pimentão, cebola, tomate, azeitonas, cogumelos, milho, orégano.',32.00,1,'pizzaVegetariana.png'),(7714,'Pizza de Peperoni','A pizza de peperoni é uma escolha clássica, com o sabor picante e levemente defumado do peperoni, equilibrado pela suavidade do queijo mussarela.','peperoni, molho de tomate, queijo mussarela, orégano.',49.00,1,'pizzaPeperoni.png'),(9328,'Pizza de Peito de Peru','A pizza de peito de peru é uma opção leve e saudável, onde o sabor suave do peito de peru é combinado com tomates frescos e azeitonas.','peito de peru, molho de tomate, queijo mussarela, tomate, azeitonas, orégano.',41.00,1,'pizzaPeitoPeru.png');
/*!40000 ALTER TABLE `prato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `descricao` text CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `id_restaurante` int(11) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9547 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1783,'Suco de Morango','Um suco doce e refrescante, com o sabor intenso e natural dos morangos, perfeito para quem aprecia sabores frutados.',12.00,1,'sucoMorango.png'),(2682,'Refrigerante Fanta Laranja','Uma bebida gaseificada e vibrante, com o sabor cítrico e adocicado da laranja, perfeita para momentos de descontração.',15.00,1,'refriFanta.png'),(2713,'Refrigerante Coca Cola','Refrigerante de Cola Cola',18.00,1,'refriCoca.png'),(4704,'Suco de Laranja','Uma bebida clássica e natural, rica em vitamina C, com o sabor fresco e levemente ácido da laranja espremida.',10.00,1,'sucoLaranja.png'),(8503,'Refrigerante Sprite','Um refrigerante claro e refrescante, conhecido por seu sabor limpo e levemente cítrico, ideal para matar a sede.',15.00,1,'refriSprite.png'),(9546,'Suco de Pêssego','Um suco refrescante e doce, com o sabor suave e agradável do pêssego, ideal para quem busca uma bebida leve e frutada.',12.00,1,'sucoPessego.png');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurante`
--

DROP TABLE IF EXISTS `restaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `cnpj` varchar(14) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `cep` varchar(8) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `rua` varchar(250) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `cidade` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `estado` varchar(2) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `numero_residencial` varchar(10) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `telefone` varchar(15) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `segmento` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurante`
--

LOCK TABLES `restaurante` WRITE;
/*!40000 ALTER TABLE `restaurante` DISABLE KEYS */;
INSERT INTO `restaurante` VALUES (1,'Pizzaria','787654654','2154654','Rua da Luz','Guarulhos','SP','348','956354654','Pizzaria');
/*!40000 ALTER TABLE `restaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(15) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `rua` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `cidade` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `estado` varchar(2) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `cep` varchar(8) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `numero_residencial` varchar(10) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `cpf` varchar(11) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `cnh` varchar(11) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `codigo_funcional` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `senha` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `tipo` enum('administrador','cliente','entregador','funcionario') CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `id_restaurante` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Jéssica',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0101010101',NULL,'001','jessica@email.com','1234','funcionario',1),(2,'Carol','2025-09-20','1194444444','Rua das Flores','Sãp Paulo','SP','0707070','78','4676412366',NULL,NULL,'carol@email.com','1234','cliente',NULL),(3,'Adriely','2004-01-01','119888888','Rua Saturno','Guarulhos','SP','0780569','52','5656230500','12345678',NULL,'adriely@email.com','1234','entregador',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bddelivery'
--
/*!50003 DROP PROCEDURE IF EXISTS `Atualizar_Cardapio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Atualizar_Cardapio`(IN `v_id` INT, IN `v_id_restaurante` INT, IN `v_id_prato` INT, IN `v_id_produto` INT)
BEGIN
    UPDATE cardapio SET id_restaurante = v_id_restaurante, id_prato = v_id_prato, id_produto = v_id_produto WHERE id = v_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Atualizar_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Atualizar_Cliente`(
    IN `v_id` INT,
    IN `v_nome` VARCHAR(255),
    IN `v_data_nascimento` DATE,
    IN `v_telefone` BIGINT,
    IN `v_rua` VARCHAR(255),
    IN `v_cidade` VARCHAR(255),
    IN `v_estado` VARCHAR(255),
    IN `v_cep` VARCHAR(20),
    IN `v_numero_residencial` VARCHAR(20),
    IN `v_cpf` BIGINT,
    IN `v_email` VARCHAR(255),
    IN `v_senha` VARCHAR(255)
)
BEGIN
    UPDATE usuario 
    SET nome = v_nome, data_nascimento = v_data_nascimento, telefone = v_telefone, 
        rua = v_rua, cidade = v_cidade, estado = v_estado, cep = v_cep, 
        numero_residencial = v_numero_residencial, cpf = v_cpf, email = v_email, 
        senha = v_senha 
    WHERE id = v_id AND tipo = 'cliente';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Atualizar_Entregador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Atualizar_Entregador`(
    IN `v_id` INT,
    IN `v_nome` VARCHAR(255),
    IN `v_data_nascimento` DATE,
    IN `v_telefone` BIGINT,
    IN `v_rua` VARCHAR(255),
    IN `v_cidade` VARCHAR(255),
    IN `v_estado` VARCHAR(255),
    IN `v_cep` VARCHAR(20),
    IN `v_numero_residencial` VARCHAR(20),
    IN `v_cpf` BIGINT,
    IN `v_cnh` BIGINT,
    IN `v_email` VARCHAR(255),
    IN `v_senha` VARCHAR(255)
)
BEGIN
    UPDATE usuario
    SET nome = v_nome, data_nascimento = v_data_nascimento, telefone = v_telefone, 
        rua = v_rua, cidade = v_cidade, estado = v_estado, cep = v_cep, 
        numero_residencial = v_numero_residencial, cpf = v_cpf, cnh = v_cnh, 
        email = v_email, senha = v_senha
    WHERE id = v_id AND tipo = 'entregador';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Atualizar_Prato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Atualizar_Prato`(
    IN `v_id` INT,
    IN `v_nome` VARCHAR(255),
    IN `v_descricao` VARCHAR(255),
    IN `v_ingredientes` VARCHAR(255),
    IN `v_preco` DOUBLE,
    IN `v_id_restaurante` INT
)
BEGIN
    UPDATE prato
    SET nome = v_nome, descricao = v_descricao, ingredientes = v_ingredientes, 
        preco = v_preco, id_restaurante = v_id_restaurante
    WHERE id = v_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Atualizar_Restaurante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Atualizar_Restaurante`(
    IN `v_id` INT,
    IN `v_nome` VARCHAR(255),
    IN `v_cnpj` VARCHAR(14),
    IN `v_cep` VARCHAR(10),
    IN `v_rua` VARCHAR(255),
    IN `v_cidade` VARCHAR(255),
    IN `v_estado` VARCHAR(2),
    IN `v_numero_residencial` VARCHAR(10),
    IN `v_telefone` VARCHAR(15),
    IN `v_segmento` VARCHAR(50)
)
BEGIN
    UPDATE restaurante
    SET nome = v_nome, cnpj = v_cnpj, cep = v_cep, rua = v_rua, cidade = v_cidade, 
        estado = v_estado, numero_residencial = v_numero_residencial, 
        telefone = v_telefone, segmento = v_segmento
    WHERE id = v_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Inserir_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inserir_Cliente`(
    IN `v_nome` VARCHAR(255),
    IN `v_data_nascimento` DATE,
    IN `v_telefone` BIGINT,
    IN `v_rua` VARCHAR(255),
    IN `v_cidade` VARCHAR(255),
    IN `v_estado` VARCHAR(255),
    IN `v_cep` VARCHAR(20),
    IN `v_numero_residencial` VARCHAR(20),
    IN `v_cpf` BIGINT,
    IN `v_email` VARCHAR(255),
    IN `v_senha` VARCHAR(255)
)
BEGIN
    INSERT INTO usuario (nome, data_nascimento, telefone, rua, cidade, estado, cep, numero_residencial, cpf, email, senha, tipo) 
    VALUES (v_nome, v_data_nascimento, v_telefone, v_rua, v_cidade, v_estado, v_cep, v_numero_residencial, v_cpf, v_email, v_senha, 'cliente');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Inserir_Entregador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inserir_Entregador`(
    IN `v_nome` VARCHAR(255),
    IN `v_data_nascimento` DATE,
    IN `v_telefone` BIGINT,
    IN `v_rua` VARCHAR(255),
    IN `v_cidade` VARCHAR(255),
    IN `v_estado` VARCHAR(255),
    IN `v_cep` VARCHAR(20),
    IN `v_numero_residencial` VARCHAR(20),
    IN `v_cpf` BIGINT,
    IN `v_cnh` BIGINT,
    IN `v_email` VARCHAR(255),
    IN `v_senha` VARCHAR(255)
)
BEGIN
    INSERT INTO usuario (nome, data_nascimento, telefone, rua, cidade, estado, cep, 
                         numero_residencial, cpf, cnh, email, senha, tipo)
    VALUES (v_nome, v_data_nascimento, v_telefone, v_rua, v_cidade, v_estado, v_cep, 
            v_numero_residencial, v_cpf, v_cnh, v_email, v_senha, 'entregador');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Inserir_Funcionario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inserir_Funcionario`(
    IN `v_nome` VARCHAR(255),
    IN `v_cpf` BIGINT,
    IN `v_codigo_funcional` VARCHAR(255),
    IN `v_email` VARCHAR(255),
    IN `v_senha` VARCHAR(255),
    IN `v_id_restaurante` INT
)
BEGIN
    INSERT INTO usuario (nome, cpf, codigo_funcional, email, senha, tipo, id_restaurante)
    VALUES (v_nome, v_cpf, v_codigo_funcional, v_email, v_senha, 'funcionario', v_id_restaurante);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserir_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserir_pedido`(
    IN p_ids_produtos JSON,
    IN p_ids_pratos JSON,
    IN p_status ENUM('aberto', 'em preparo', 'a caminho', 'entregue', 'cancelado'),
    IN p_id_carrinho INT,
    IN p_id_cliente INT,
    IN p_id_entregador INT,
    IN p_id_restaurante INT,
    IN p_precoTotal DECIMAL(10,2)
)
BEGIN
    INSERT INTO pedidos (
        ids_produtos, 
        ids_pratos, 
        status, 
        id_carrinho, 
        id_cliente, 
        id_entregador, 
        id_restaurante,
        precoTotal,
        data_pedido,
        data_atualizacao
    ) VALUES (
        p_ids_produtos, 
        p_ids_pratos, 
        p_status, 
        p_id_carrinho, 
        p_id_cliente, 
        p_id_entregador, 
        p_id_restaurante,
        p_precoTotal,
        NOW(),  -- Define a data do pedido como o timestamp atual
        NOW()   -- Define a data de atualização como o timestamp atual
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Inserir_Prato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inserir_Prato`(
    IN v_id INT,
    IN v_nome VARCHAR(255),
    IN v_descricao VARCHAR(255),
    IN v_ingredientes VARCHAR(255),
    IN v_preco DOUBLE,
    IN v_id_restaurante INT,
    IN v_imagem VARCHAR(255)
)
BEGIN
    INSERT INTO prato (id, nome, descricao, ingredientes, preco, id_restaurante, imagem)
    VALUES (v_id, v_nome, v_descricao, v_ingredientes, v_preco, v_id_restaurante, v_imagem);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Inserir_Produto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inserir_Produto`(
    IN v_id INT,
    IN v_nome VARCHAR(255),
    IN v_descricao VARCHAR(255),
    IN v_preco DOUBLE,
    IN v_id_restaurante INT,
    IN v_imagem VARCHAR(255)
)
BEGIN
    INSERT INTO produto (id, nome, descricao, preco, id_restaurante, imagem)
    VALUES (v_id, v_nome, v_descricao, v_preco, v_id_restaurante, v_imagem);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Inserir_Restaurante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inserir_Restaurante`(
    IN `v_nome` VARCHAR(255),
    IN `v_cnpj` VARCHAR(14),
    IN `v_cep` VARCHAR(10),
    IN `v_rua` VARCHAR(255),
    IN `v_cidade` VARCHAR(255),
    IN `v_estado` VARCHAR(2),
    IN `v_numero_residencial` VARCHAR(10),
    IN `v_telefone` VARCHAR(15),
    IN `v_segmento` VARCHAR(50)
)
BEGIN
    INSERT INTO restaurante (nome, cnpj, cep, rua, cidade, estado, numero_residencial, telefone, segmento)
    VALUES (v_nome, v_cnpj, v_cep, v_rua, v_cidade, v_estado, v_numero_residencial, v_telefone, v_segmento);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listar_cardapio_produto_prato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_cardapio_produto_prato`(IN p_id_restaurante INT)
BEGIN
    -- Tabela temporária para armazenar os IDs correspondentes
    CREATE TEMPORARY TABLE temp_cardapio AS
    SELECT id_prato, id_produto
    FROM cardapio
    WHERE id_restaurante = p_id_restaurante;

    -- Seleciona os pratos relacionados ao restaurante
    SELECT pr.id, pr.nome, pr.descricao, pr.ingredientes, pr.preco
    FROM prato pr
    JOIN temp_cardapio tc ON pr.id = tc.id_prato;

    -- Seleciona os produtos relacionados ao restaurante
    SELECT p.id, p.nome, p.descricao, p.preco
    FROM produto p
    JOIN temp_cardapio tc ON p.id = tc.id_produto;

    -- Apaga a tabela temporária
    DROP TEMPORARY TABLE IF EXISTS temp_cardapio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Clientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Clientes`()
BEGIN
    SELECT id, nome, data_nascimento, telefone, rua, cidade, estado, cep, 
           numero_residencial, cpf, email, senha 
    FROM usuario WHERE tipo = 'cliente';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Entregadores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Entregadores`()
BEGIN
    SELECT id, nome, data_nascimento, telefone, rua, cidade, estado, cep, 
           numero_residencial, cpf, cnh, email, senha
    FROM usuario
    WHERE tipo = 'entregador';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Funcionarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Funcionarios`()
BEGIN
    SELECT id, nome, cpf, codigo_funcional, email, senha, id_restaurante
    FROM usuario
    WHERE tipo = 'funcionario';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listar_pedidos_por_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_pedidos_por_cliente`(
    IN p_id_cliente INT
)
BEGIN
    SELECT 
        * 
    FROM 
        pedidos 
    WHERE 
        id_cliente = p_id_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listar_pratos_produtos_por_restaurante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_pratos_produtos_por_restaurante`(
    IN p_id_restaurante INT
)
BEGIN
    SELECT * FROM pedidos
    WHERE 
        id_restaurante = p_id_restaurante;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listar_todos_pedidos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_todos_pedidos`()
BEGIN
    SELECT * FROM pedidos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listar_todos_produtos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listar_todos_produtos`()
BEGIN
	select * from produto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Logar_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Logar_Cliente`(IN `v_email` VARCHAR(255), IN `v_senha` VARCHAR(255))
BEGIN
    SELECT id, nome, data_nascimento, telefone, rua, cidade, estado, cep, numero_residencial, cpf, email, senha
    FROM usuario
    WHERE email = v_email AND senha = v_senha;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Logar_Entregador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Logar_Entregador`(IN `v_email` VARCHAR(255), IN `v_senha` VARCHAR(255))
BEGIN
    SELECT id, nome, data_nascimento, telefone, rua, cidade, estado, cep, numero_residencial, cpf, cnh, email, senha
    FROM usuario
    WHERE email = v_email AND senha = v_senha;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Logar_Funcionario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Logar_Funcionario`(IN `v_email` VARCHAR(255), IN `v_senha` VARCHAR(255))
BEGIN
    SELECT id, nome, cpf, codigo_funcional, email, senha, id_restaurante, tipo
    FROM usuario
    WHERE email = v_email AND senha = v_senha;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Logar_Usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Logar_Usuario`(IN `v_email` VARCHAR(255), IN `v_senha` VARCHAR(255))
BEGIN
    SELECT id, nome, data_nascimento, telefone, rua, cidade, estado, cep, numero_residencial, cpf, cnh, codigo_funcional, email, senha, tipo, id_restaurante
    FROM usuario
    WHERE email = v_email AND senha = v_senha;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obter_Cliente_Por_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obter_Cliente_Por_ID`(IN cliente_id INT)
BEGIN
    SELECT id, nome, data_nascimento, telefone, rua, cidade, estado, cep, 
           numero_residencial, cpf, email, senha 
    FROM usuario 
    WHERE id = cliente_id AND tipo = 'cliente';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Selecionar_Cardapio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionar_Cardapio`(IN `v_id_cliente` INT)
BEGIN
    SELECT id, id_restaurante, id_prato, id_produto, id_cliente FROM cardapio WHERE id_cliente = v_id_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Selecionar_Cardapio_Restaurante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionar_Cardapio_Restaurante`(IN `v_id_restaurante` INT)
BEGIN
    SELECT id_prato, id_produto FROM cardapio WHERE id_restaurante = v_id_restaurante;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Selecionar_Carrinho` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionar_Carrinho`(IN `v_id_cliente` INT)
BEGIN
    SELECT id, id_prato, id_produto, id_restaurante, preco, endereco_entrega, quantidade, id_cliente
    FROM carrinho WHERE id_cliente = v_id_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Selecionar_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionar_Cliente`(IN `v_id` INT)
BEGIN
    SELECT id, nome, data_nascimento, telefone, rua, cidade, estado, cep, numero_residencial, cpf, email, senha 
    FROM usuario WHERE id = v_id AND tipo = 'cliente';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Selecionar_Entregador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionar_Entregador`(IN `v_id` INT)
BEGIN
    SELECT id, nome, data_nascimento, telefone, rua, cidade, estado, cep, 
           numero_residencial, cpf, cnh, email, senha
    FROM usuario
    WHERE id = v_id AND tipo = 'entregador';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Selecionar_Funcionario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionar_Funcionario`(IN `v_id` INT)
BEGIN
    SELECT id, nome, cpf, codigo_funcional, email, senha, id_restaurante
    FROM usuario
    WHERE id = v_id AND tipo = 'funcionario';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Selecionar_Pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionar_Pedido`(IN v_id INT)
BEGIN
    SELECT id, ids_produtos, ids_pratos, status, id_carrinho, id_cliente, id_entregador, id_restaurante,
    precoTotal, data_pedido, data_atualizacao
    FROM pedidos
    WHERE id = v_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Selecionar_Prato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionar_Prato`(IN `v_id` INT)
BEGIN
    SELECT * FROM prato WHERE id = v_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Selecionar_Produto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionar_Produto`(IN `v_id` INT)
BEGIN
    SELECT id, nome, descricao, preco, id_restaurante, imagem
    FROM produto
    WHERE id = v_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Selecionar_Restaurante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Selecionar_Restaurante`(IN `v_id` INT)
BEGIN
    SELECT id, nome, cnpj, cep, rua, cidade, estado, numero_residencial, telefone, segmento
    FROM restaurante
    WHERE id = v_id;
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

-- Dump completed on 2024-10-22 22:02:10
