/* Resposta Das Atividades */

/* Atividade 1: o código não pode ser executado por que na criação da tabela não permite que os emails sejam iguais e sim único. 
código se desse: UPDATE cliente SET email = "email@email.com" WHERE estado IN ("SP", "RJ");
*/

/* Atividade 2 */
UPDATE cliente SET data_cadastro = "2026-01-01" WHERE cidade = "Manaus";

/* Atividade 3 */
UPDATE cliente SET nome_cliente = "Michael Jackson" WHERE id_cliente = "10";

/* Atividade 4 */
UPDATE produto SET nome_produto = "Notebook Lenovo IdeaPad 7" WHERE id_produto = "1";

/* Atividade 5 */
UPDATE produto SET preco_unitario = "4999.99" WHERE marca = "DELL" AND categoria "Notebook";

/* Atividade 6 */
UPDATE venda SET desconto_percentual = 0.01 WHERE quantidade >= 2;
