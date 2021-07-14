-- AVG
-- COUNT(having)
-- MAX
-- MIN
-- SUM

SELECT numero, nome, FROM banco;
SELECT banco_numero, numero, nome FROM agencia;
SELECT numero, nome, email FROM cliente;
SELECT banco_numero, agencia_numero, cliente_numero FROM cliente_transacoes;

SELECT * FROM information_schema.columns WHERE table_name = 'banco';
SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'banco';

SELECT * FROM cliente_transacoes;

SELECT AVG(valor) FROM cliente_transacoes;

SELECT COUNT(numero) FROM cliente;

SELECT COUNT (numero), email FROM cliente WHERE email ILIKE '%gmail.com' GROUP BY email;

SELECT MAX(numero) FROM cliente;

SELECT MIN(numero) FROM cliente;

SELECT MAX(valor) FROM cliente_transacoes;

SELECT MIN(valor) FROM cliente_transacoes;

SELECT MAX(valor), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id;

SELECT MIN(valor), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id;

SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'cliente_transacoes';

SELECT COUNT(id), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id HAVING COUNT(ID) > 150;

SELECT SUM(valor) FROM cliente_transacoes;

SELECT SUM(valor), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id;

SELECT SUM(valor), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id ORDER BY tipo_transacao_id ASC;
SELECT SUM(valor), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id ORDER BY tipo_transacao_id DESC;

