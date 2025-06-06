
UPDATE cliente SET nome = 'Carlos Silva' WHERE id_cliente = 1;


UPDATE enderecoCli SET cidade = 'São Paulo' WHERE cliente_cpf = '12345678901';


UPDATE roupa SET cor = 'Preto' WHERE id_produto = 101;


UPDATE estoque SET quantidade_disponivel = 50 WHERE id_estoque = 1;

UPDATE fornecedor SET status = 'Inativo' WHERE id_fornecedor = 2;


 UPDATE comissao SET valor = 0.10 WHERE id_comissao = 1;


UPDATE pedido SET status = 'Entregue' WHERE id_pedido = 5;


UPDATE formapagamento SET valor = 120.00 WHERE id_pagamento = 1;


UPDATE vendedor SET nome = 'Mariana Rocha' WHERE id_vendedor = 3;


UPDATE telefoneCli SET numero = '11999998888' WHERE id_telefonecli = 1;



-- 11. Remove um cliente específico (só possível se não houver dependência ativa)
DELETE FROM cliente WHERE id_cliente = 4 AND enderecoCli_cliente_cpf = '98765432100';

-- 12. Remove um endereço de cliente
DELETE FROM enderecoCli WHERE cliente_cpf = '22233344455';


DELETE FROM roupa WHERE id_produto = 105;

-- 14. Remove um item de estoque
DELETE FROM estoque WHERE id_estoque = 2 AND roupa_id_produto = 101;

-- 15. Remove um fornecedor
DELETE FROM fornecedor WHERE id_fornecedor = 6 AND estoque_id_estoque = 2;

-- 16. Remove um vendedor
DELETE FROM vendedor WHERE id_vendedor = 7 AND comissao_id_comissao = 2;

-- 17. Remove um pedido
DELETE FROM pedido WHERE id_pedido = 3 AND cliente_id_cliente = 1 AND vendedor_id_vendedor = 2;

-- 18. Remove um item do pedido
DELETE FROM itempedido WHERE id_item = 1 AND pedido_id_pedido = 3 AND pedido_cliente_id_cliente = 1 AND pedido_vendedor_id_vendedor = 2 AND roupa_id_produto = 101;

-- 19. Remove uma forma de pagamento
DELETE FROM formapagamento WHERE id_pagamento = 2;

DELETE FROM TelefoneVEND WHERE id_telefoneVEND = 1;
