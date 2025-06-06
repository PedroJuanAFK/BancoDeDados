SELECT c.id_cliente, c.nome, e.cidade, e.bairro, e.rua
FROM cliente c
JOIN enderecoCli e ON c.enderecoCli_cliente_cpf = e.cliente_cpf;

SELECT r.nome, e.quantidade_disponivel
FROM roupa r
JOIN estoque e ON r.id_produto = e.roupa_id_produto
WHERE e.quantidade_disponivel < 10;

SELECT c.id_cliente, c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM cliente c
JOIN pedido p ON c.id_cliente = p.cliente_id_cliente
GROUP BY c.id_cliente, c.nome;

SELECT v.id_vendedor, v.nome, COUNT(p.id_pedido) AS vendas
FROM vendedor v
JOIN pedido p ON v.id_vendedor = p.vendedor_id_vendedor
GROUP BY v.id_vendedor, v.nome
HAVING vendas > 5;

SELECT r.id_produto, r.nome, SUM(i.quantidade) AS total_vendido
FROM itempedido i
JOIN roupa r ON i.roupa_id_produto = r.id_produto
GROUP BY r.id_produto, r.nome
ORDER BY total_vendido DESC;

SELECT v.id_vendedor, v.nome, SUM(i.subtotal) AS total_vendas
FROM vendedor v
JOIN pedido p ON v.id_vendedor = p.vendedor_id_vendedor
JOIN itempedido i ON p.id_pedido = i.pedido_id_pedido
GROUP BY v.id_vendedor, v.nome;

SELECT p.id_pedido, p.date, p.status
FROM pedido p
WHERE p.status = 'Entregue';

SELECT f.id_fornecedor, f.nome, r.nome AS produto
FROM fornecedor f
JOIN produto_fornecedor pf ON f.id_fornecedor = pf.fornecedores_idfornecedores
JOIN roupa r ON pf.produto_idproduto = r.id_produto
WHERE f.status = 'Ativo';

SELECT c.id_cliente, c.nome, SUM(i.subtotal) AS total_gasto
FROM cliente c
JOIN pedido p ON c.id_cliente = p.cliente_id_cliente
JOIN itempedido i ON p.id_pedido = i.pedido_id_pedido
GROUP BY c.id_cliente, c.nome;

SELECT c.id_cliente, c.nome
FROM cliente c
WHERE c.id_cliente NOT IN (
  SELECT DISTINCT cliente_id_cliente FROM pedido
);

SELECT p.id_pedido, p.date
FROM pedido p
WHERE p.date = '2025-05-01';

SELECT r.nome AS produto, f.nome AS fornecedor
FROM produto_fornecedor pf
JOIN roupa r ON pf.produto_idproduto = r.id_produto
JOIN fornecedor f ON pf.fornecedores_idfornecedores = f.id_fornecedor;

SELECT v.id_vendedor, v.nome
FROM vendedor v
WHERE v.id_vendedor NOT IN (
  SELECT DISTINCT vendedor_id_vendedor FROM pedido
);

SELECT i.id_item, i.quantidade, i.subtotal
FROM itempedido i;

SELECT c.id_cliente, c.nome
FROM cliente c
WHERE (
  SELECT COUNT(*) FROM telefoneCli t WHERE t.cliente_id_cliente = c.id_cliente
) > 1;

SELECT f.id_pagamento, f.tipo, f.valor, p.id_pedido
FROM formapagamento f
JOIN itempedido i ON f.itempedido_id_item = i.id_item
JOIN pedido p ON i.pedido_id_pedido = p.id_pedido;

SELECT c.id_cliente, c.nome, AVG(i.subtotal) AS media_pedido
FROM cliente c
JOIN pedido p ON c.id_cliente = p.cliente_id_cliente
JOIN itempedido i ON p.id_pedido = i.pedido_id_pedido
GROUP BY c.id_cliente, c.nome;

SELECT p.id_pedido, COUNT(i.id_item) AS total_itens
FROM pedido p
JOIN itempedido i ON p.id_pedido = i.pedido_id_pedido
GROUP BY p.id_pedido
HAVING total_itens > 3;

SELECT r.nome, e.quantidade_disponivel, r.preco, (r.preco * e.quantidade_disponivel) AS total_valor
FROM roupa r
JOIN estoque e ON r.id_produto = e.roupa_id_produto;

SELECT v.nome, e.cidade, e.bairro, e.rua, e.numero
FROM vendedor v
JOIN enderecoVEND e ON v.id_vendedor = e.vendedor_id_vendedor;
