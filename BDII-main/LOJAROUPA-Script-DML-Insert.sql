-- DML_INSERTS.sql

USE `mydb`;

INSERT INTO `cliente` (idCliente, nome, identidade, endereco, Contato, email) VALUES
(1, 'João Silva', '123456789', 'Rua A, 123', '9999-9999', 'joao@email.com'),
(2, 'Maria Souza', '987654321', 'Rua B, 456', '8888-8888', 'maria@email.com'),
(3, 'Pedro Santos', '456789123', 'Rua C, 789', '7777-7777', 'pedro@email.com'),
(4, 'Ana Lima', '321654987', 'Rua D, 101', '6666-6666', 'ana@email.com'),
(5, 'Lucas Melo', '654987321', 'Rua E, 202', '5555-5555', 'lucas@email.com'),
(6, 'Paula Costa', '159753486', 'Rua F, 303', '4444-4444', 'paula@email.com'),
(7, 'Rafael Dias', '357951486', 'Rua G, 404', '3333-3333', 'rafael@email.com'),
(8,'Juliana Reis', '789456123', 'Rua H, 505', '2222-2222', 'juliana@email.com'),
(9, 'Felipe Rocha', '852963741', 'Rua I, 606', '1111-1111', 'felipe@email.com'),
(10,'Carla Martins', '147258369', 'Rua J, 707', '0000-0000', 'carla@email.com');

INSERT INTO roupa (id_produto, nome, tamanho, cor, preco, categoria) VALUES
(1, 'Camiseta Básica', 40, 'Preto', 39.90, 'Camisetas'),
(2, 'Calça Jeans', 42, 'Azul', 120.00, 'Calças'),
(3, 'Jaqueta', 44, 'Vermelho', 199.90, 'Jaquetas'),
(4, 'Shorts', 38, 'Bege', 49.90, 'Shorts'),
(5, 'Camisa Social', 40, 'Branco', 89.90, 'Camisas'),
(6, 'Moletom', 44, 'Cinza', 149.90, 'Moletom'),
(7, 'Saia', 38, 'Rosa', 59.90, 'Saias'),
(8, 'Blusa de Frio', 42, 'Verde', 99.90, 'Blusas'),
(9, 'Bermuda', 40, 'Azul', 59.90, 'Bermudas'),
(10, 'Regata', 38, 'Preto', 29.90, 'Regatas');

INSERT INTO pedido (id_pedido, data_pedido, status, forma_entrega, cliente_id_cliente, vendedor_id_vendedor) VALUES
(1, '2025-05-01', 'Aberto', 'Entrega', 1, 1),
(2, '2025-05-02', 'Pago', 'Retirada', 2, 2),
(3, '2025-05-03', 'Cancelado', 'Entrega', 3, 3),
(4, '2025-05-04', 'Aberto', 'Entrega', 4, 4),
(5, '2025-05-05', 'Pago', 'Retirada', 5, 5),
(6, '2025-05-06', 'Aberto', 'Entrega', 6, 6),
(7, '2025-05-07', 'Pago', 'Retirada', 7, 7),
(8, '2025-05-08', 'Aberto', 'Entrega', 8, 8),
(9, '2025-05-09', 'Pago', 'Retirada', 9, 9),
(10, '2025-05-10', 'Aberto', 'Entrega', 10, 10);



INSERT INTO estoque (id_estoque, quantidade_disponivel, local_estoque, roupa_id_produto) VALUES
(1, 50, 'Estoque 1', 1),
(2, 30, 'Estoque 2', 2),
(3, 20, 'Estoque 3', 3),
(4, 40, 'Estoque 4', 4),
(5, 60, 'Estoque 5', 5),
(6, 70, 'Estoque 6', 6),
(7, 15, 'Estoque 7', 7),
(8, 25, 'Estoque 8', 8),
(9, 10, 'Estoque 9', 9),
(10, 5, 'Estoque 10', 10);



INSERT INTO Fornecedor (id_fornecedor, nome, cnpj, telefone, email, endereco, responsavel, data_cadastro, `status`, observacoes, estoque_id_estoque) VALUES
(1, 'Fornecedor A', '12.345.678/0001-90', '1199999-9999', 'contato@fornecedora.com', 'Rua A, 100', 'Carlos Silva', '2024-01-15', 'ativo', 'Fornecedor principal', 1),
(2, 'Fornecedor B', '98.765.432/0001-12', '1198888-8888', 'contato@fornecedorb.com', 'Av. B, 200', 'Ana Paula', '2024-02-10', 'ativo', 'Entrega semanal', 2),
(3, 'Fornecedor C', '11.223.344/0001-55', '1197777-7777', 'contato@fornecedorc.com', 'Rua C, 300', 'Marcos Lima', '2023-12-05', 'inativo', 'Em negociação', 3),
(4, 'Fornecedor D', '44.556.677/0001-33', '1196666-6666', 'contato@fornecedord.com', 'Rua D, 400', 'Patrícia Gomes', '2024-03-20', 'ativo', 'Atendimento rápido', 4),
(5, 'Fornecedor E', '22.334.455/0001-78', '1195555-5555', 'contato@fornecedore.com', 'Av. E, 500', 'João Pedro', '2024-01-30', 'ativo', 'Preço competitivo', 5),
(6, 'Fornecedor F', '33.445.566/0001-44', '1194444-4444', 'contato@fornecedorf.com', 'Rua F, 600', 'Fernanda Souza', '2024-04-10', 'ativo', 'Bom estoque', 6),
(7, 'Fornecedor G', '55.667.788/0001-22', '1193333-3333', 'contato@fornecedorg.com', 'Rua G, 700', 'Lucas Almeida', '2023-11-25', 'ativo', 'Entrega expressa', 7),
(8, 'Fornecedor H', '66.778.899/0001-11', '1192222-2222', 'contato@fornecedorth.com', 'Av. H, 800', 'Mariana Reis', '2024-02-18', 'inativo', 'Contrato em revisão', 8),
(9, 'Fornecedor I', '77.889.900/0001-55', '1191111-1111', 'contato@fornecedorI.com', 'Rua I, 900', 'Eduardo Castro', '2024-03-05', 'ativo', 'Fornecedor novo', 9),
(10, 'Fornecedor J', '88.990.011/0001-44', '1190000-0000', 'contato@fornecedorj.com', 'Av. J, 1000', 'Aline Pereira', '2024-01-12', 'ativo', 'Bom histórico', 10);

ALTER TABLE fornecedor
change column `resonsavel` `responsavel` varchar(150);

ALTER TABLE roupa
CHANGE COLUMN `preço` `preco` DECIMAL(10,2);


select* from estoque;

select* from cliente;

select* from roupa;

select * FROM estoque;

select * from fornecedor;


