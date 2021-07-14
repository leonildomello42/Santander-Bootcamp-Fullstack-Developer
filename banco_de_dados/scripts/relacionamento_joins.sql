-- JOIN  // INNER JOIN
-- LEFT JOIN // LEFT OUTER JOIN
-- RIGHT JOIN // RIGHT OUTER JOIN
-- FULL JOIN // FULL OUTER JOIN -- 
-- CROSS JOIN -- CRUZAR TODOS OS DADOS


--Exemplos:

SELECT tabela_1.campos, tabela_2.campos
FROM tabela_1
JOIN tabela_2
ON tabela_2.campo = tabela_1.campo; 

SELECT tabela_1.campos, tabela_2.campos
FROM tabela_1
LEFT JOIN tabela_2
ON tabela_2.campo = tabela_1.campo;

SELECT tabela_1.campos, tabela_2.campos
FROM tabela_1
RIGHT JOIN tabela_2
ON tabela_2.campo = tabela_1.campo;

SELECT tabela_1.campos, tabela_2.campos
FROM tabela_1
FULL JOIN tabela_2
ON tabela_2.campo = tabela_1.campo;

-- AULA

SELECT numero, nome FROM banco;
SELECT banco_numero, numero, nome FROM agencia;
SELECT numero, nome, FROM cliente;
SELECT banco_numero, agencia_numero, numero, digito, cliente_numero FROM conta_corrente;
SELECT id, nome FROM tipo_transacao;
SELECT banco_numero, agencia_numero, conta_corrente_numero, conta_corrente_digito, cliente_numero, valor FROM cliente_transacoes;

SELECT COUNT(1) FROM banco; -- 151 bancos
SELECT COUNT(1) FROM agencia; -- 296 bancos

-- 296 registros
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

-- quanto bancos tem agencia
SELECT COUNT(banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

-- quanto bancos tem agencia
SELECT COUNT (banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

-- quanto bancos tem agencia
SELECT banco.numero
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero
GROUP BY banco.numero;

-- quanto bancos tem agencia
SELECT COUNT (DISTINCT banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

--
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
LEFT JOIN agencia ON agencia.banco_numero = banco.numero;

--
SELECT agencia.numero, agencia.nome, banco.numero, banco.nome 
FROM agencia
LEFT JOIN banco ON banco.numero = agencia.banco_numero;

--
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
FULL JOIN agencia ON agencia.banco_numero = banco.numero;

--
SELECT ban.numero, ban.nome, ag.numero, ag.nome
FROM banco as ban
FULL JOIN agencia as ag ON ag.banco_numero = ban.numero;

--
SELECT banco.nome, agencia.nome, conta_corrente.digito, conta_corrente.numero, cliente.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero
JOIN conta_corrente ON conta_corrente.banco_numero = agencia.banco_numero -- ou banco.numero
AND conta_corrente.agencia_numero = agencia_numero
JOIN cliente ON cliente.numero = conta_corrente.cliente_numero;