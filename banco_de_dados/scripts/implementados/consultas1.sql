

SELECT numero, nome, ativo FROM banco;
SELECT banco_numero, numero, nome FROM agencia;
SELECT numero, nome, email FROM cliente;
SELECT id, nome  FROM tipo_transacao;
SELECT banco_numero, agencia_numero, numero, cliente_numero FROM conta_corrente;
SELECT banco_numero, agencia_numero, cliente_numero FROM cliente_transacoes;

SELECT * FROM cliente_transacoes;

-- TABELA TESTE
CREATE TABLE IF NOT EXISTS teste(

    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS teste;

CREATE TABLE IF NOT EXISTS teste(

    cpf VARCHAR(11) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY(cpf)
);

INSERT INTO teste(cpf, nome, created_at)
VALUES ('12345678954', 'Leonildo de Mello', '2019-07-01 12:00:00');

INSERT INTO teste(cpf, nome, created_at)
VALUES ('12345678954', 'Leonildo de Mello', '2019-07-01 12:00:00') ON CONFLICT (cpf) DO NOTHING;

UPDATE teste SET nome = 'Leo Rename' WHERE cpf = '12345678954';

SELECT * FROM teste;