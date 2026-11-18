/* Resposta das atividades */

/* Atividade 1: comando */
USE vendas_informatica;
SELECT * FROM produto;

/* Atividade 2: comando */
USE vendas_informatica;
SELECT nome_produto, marca, estoque FROM produto;

/* Atividade 3: comando */
USE vendas_informatica;
SELECT nome_produto, categoria, preco_unitario, data_cadastro FROM produto ORDER BY marca ASC;

/* Atividade 4: comando */
USE vendas_informatica;
SELECT nome_produto, marca, estoque FROM produto ORDER BY data_cadastro DESC;

/* Atividade 5: comando */
USE vendas_informatica;
SELECT * FROM cliente

/* Atividade 6: comando */
USE vendas_informatica;
SELECT nome_cliente, email, cidade, estado FROM cliente;

/* Atividade 7: comando */
USE vendas_informatica;
SELECT nome_cliente, cidade, estado FROM cliente ORDER BY estado DESC;

/* Atividade 8: comando */
USE vendas_informatica;
SELECT nome_cliente, email, estado FROM cliente ORDER BY data_cadastro DESC;

/* Atividade 9: comando */
USE vendas_informatica;
SELECT * FROM venda

/* Atividade 10: comando */
USE vendas_informatica;
SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda, venda.forma_pagamento FROM cliente INNER JOIN venda ON cliente.id_cliente = venda.id_cliente;

/* Atividade 11: comando */
USE vendas_informatica;
SELECT produto.nome_produto, venda.data_venda, venda.quantidade, venda.status_venda FROM venda INNER JOIN produto ON venda.id_produto = produto.id_produto;

/* Atividade 12: comando */
USE vendas_informatica;
SELECT produto.nome_produto, produto.preco_unitario, venda.forma_pagamento FROM venda INNER JOIN produto ON venda.id_produto = produto.id_produto WHERE venda.forma_pagamento = "pix" OR venda.forma_pagamento = "boleto";
/* ou 
WHERE venda.forma_pagamento IN ("pix", "boleto"); */

/* Atividade 13: comando */
USE vendas_informatica;
SELECT cliente.nome_cliente, produto.nome_produto, venda.data_venda, venda.quantidade FROM venda INNER JOIN produto ON venda.id_produto = produto.id_produto INNER JOIN cliente ON venda.id_produto = cliente.id_cliente;

/* Atividade 14: comando */
USE vendas_informatica;
SELECT produto.nome_produto, venda.desconto_percentual, venda.forma_pagamento FROM venda INNER JOIN produto ON venda.id_produto = produto.id_produto ORDER BY venda.data_venda ASC;

/* Atividade 15: comando */
USE vendas_informatica;
SELECT produto.nome_produto, cliente.nome_cliente, venda.desconto_percentual, venda.forma_pagamento FROM venda INNER JOIN produto ON venda.id_produto = produto.id_produto INNER JOIN cliente ON venda.id_produto = cliente.id_cliente ORDER BY status_venda ASC;

/* Atividade 16: comando */
USE vendas_informatica;
SELECT cliente.nome_cliente, cliente.email, produto.nome_produto, produto.marca, produto.categoria, venda.forma_pagamento, venda.status_venda FROM venda INNER JOIN produto ON venda.id_produto = produto.id_produto INNER JOIN cliente ON venda.id_cliente = cliente.id_cliente WHERE venda.status_venda IN ("Cancelada", "Concluída") ORDER BY status_venda ASC;