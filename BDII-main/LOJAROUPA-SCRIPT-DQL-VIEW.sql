CREATE VIEW view_clientes_com_endereco AS
SELECT c.id_cliente, c.nome, c.email, e.cidade, e.bairro, e.rua, e.numero
FROM cliente c
JOIN enderecoCli e ON c.enderecoCli_cliente_cpf = e.cliente_cpf;

CREATE VIEW view_estoque_com_produtos AS
SELECT e.id_estoque, e.local_estoque, r.nome AS produto, r.tamanho, r.cor, r.preco, e.quantidade_disponivel
FROM estoque e
JOIN roupa r ON e.roupa_id_produto = r.id_produto;

CREATE VIEW view_pedidos_detalhados AS
SELECT p.id_pedido, p.date, p.status, p.forma_entrega, c.nome AS cliente, v.nome AS vendedor
FROM pedido p
JOIN cliente c ON p.cliente_id_cliente = c.id_cliente
JOIN vendedor v ON p.vendedor_id_vendedor = v.id_vendedor;

CREATE VIEW view_vendas_por_vendedor AS
SELECT v.id_vendedor, v.nome, COUNT(p.id_pedido) AS total_pedidos
FROM vendedor v
JOIN pedido p ON v.id_vendedor = p.vendedor_id_vendedor
GROUP BY v.id_vendedor, v.nome;

CREATE VIEW view_pagamentos_realizados AS
SELECT f.id_pagamento, f.tipo, f.valor, f.data_pagamento, p.id_pedido
FROM formapagamento f
JOIN itempedido i ON f.itempedido_id_item = i.id_item
JOIN pedido p ON i.pedido_id_pedido = p.id_pedido;

CREATE VIEW view_clientes_com_pedidos AS
SELECT DISTINCT c.id_cliente, c.nome, p.id_pedido, p.status
FROM cliente c
JOIN pedido p ON c.id_cliente = p.cliente_id_cliente;

CREATE VIEW view_produtos_mais_vendidos AS
SELECT r.id_produto, r.nome, SUM(i.quantidade) AS total_vendido
FROM itempedido i
JOIN roupa r ON i.roupa_id_produto = r.id_produto
GROUP BY r.id_produto, r.nome
ORDER BY total_vendido DESC;

CREATE VIEW view_fornecedores_ativos AS
SELECT f.id_fornecedor, f.nome, f.cnpj, f.status
FROM fornecedor f
WHERE f.status = 'Ativo';

CREATE VIEW view_estoque_baixo AS
SELECT e.id_estoque, r.nome AS produto, e.quantidade_disponivel
FROM estoque e
JOIN roupa r ON e.roupa_id_produto = r.id_produto
WHERE e.quantidade_disponivel < 10;

CREATE VIEW view_telefones_clientes AS
SELECT c.id_cliente, c.nome, t.numero
FROM cliente c
JOIN telefoneCli t ON c.id_cliente = t.cliente_id_cliente;
