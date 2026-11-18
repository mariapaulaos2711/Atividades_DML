SELECT * FROM produto 
WHERE data_cadastro BETWEEN '2024-03-01' AND '2024-03-31';


SELECT nome_produto, marca, estoque, data_cadastro 
FROM produto 
WHERE data_cadastro BETWEEN '2024-01-01' AND '2024-03-31';


SELECT * FROM cliente 
WHERE data_cadastro BETWEEN '2023-01-01' AND '2023-01-31';


SELECT nome_cliente, email, cidade, estado, data_cadastro 
FROM cliente 
WHERE data_cadastro BETWEEN '2023-06-01' AND '2023-06-15';


SELECT * FROM venda 
WHERE data_venda BETWEEN '2025-05-01' AND '2025-05-31';


SELECT cliente.nome_cliente, venda.data_venda, venda.status_venda, venda.forma_pagamento 
FROM venda
INNER JOIN cliente ON venda.id_cliente = cliente.id_cliente
WHERE venda.data_venda BETWEEN '2025-12-24' AND '2026-01-15'
ORDER BY venda.status_venda DESC;


SELECT 
    cliente.nome_cliente, 
    cliente.email, 
    produto.nome_produto, 
    produto.marca, 
    produto.categoria, 
    venda.forma_pagamento, 
    venda.data_venda, 
    venda.status_venda
FROM venda
INNER JOIN cliente ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto ON venda.id_produto = produto.id_produto
WHERE (venda.status_venda = 'Cancelada' OR venda.status_venda = 'Concluida')
  AND venda.data_venda BETWEEN '2025-12-01' AND '2025-12-31'
ORDER BY venda.status_venda DESC;