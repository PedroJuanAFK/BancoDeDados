-- DDL_ALTERACOES.sql

ALTER TABLE `cliente` ADD COLUMN `data_nascimento` DATE NULL;

ALTER TABLE `cliente` MODIFY COLUMN `email` VARCHAR(50);

ALTER TABLE `roupa` ADD COLUMN `marca` VARCHAR(50) NULL;

ALTER TABLE `estoque` MODIFY COLUMN `quantidade_disponivel` INT NOT NULL DEFAULT 0;

ALTER TABLE `fornecedor` ADD COLUMN `site` VARCHAR(100) NULL;

ALTER TABLE `pedido` CHANGE COLUMN `data_pedido` `data_pedido` DATE NULL;

ALTER TABLE `vendedor` ADD COLUMN `data_admissao` DATE NULL;

ALTER TABLE `itempedido` ADD COLUMN `desconto` DECIMAL(5,2) NULL DEFAULT 0;

ALTER TABLE `formapagamento` MODIFY COLUMN `valor` DECIMAL(10,2) NOT NULL;

ALTER TABLE `telefoneCli` ADD COLUMN `tipo` VARCHAR(20) NULL;
