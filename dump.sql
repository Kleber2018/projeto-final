DROP DATABASE ProjetoWebServidor;
CREATE DATABASE ProjetoWebServidor;
USE ProjetoWebServidor;

CREATE TABLE SMIOSA (
OS_CODIGO VARCHAR(8) PRIMARY KEY,
OS_DATA DATETIME,
OS_AP_FIM NUMERIC(5),
OS_AP_INI NUMERIC(5),
TA_CODIGO VARCHAR(10),
FN_CODIGO VARCHAR(10)
);

CREATE TABLE SMIOS (
OS_CODIGO VARCHAR(8) PRIMARY KEY,
OS_OBS VARCHAR(60),
OS_DATA_P DATETIME,
OS_NOME_RESP VARCHAR(20),
OS_TIPO VARCHAR(3),
OS_TITULO VARCHAR(120),
OS_UO_EQUIPE VARCHAR(7),
OS_STATUS VARCHAR(15),
LOC_CODIGO CHAR(12),
FN_CODIGO VARCHAR(10),
EEM_CODIGO CHAR(12)
);

CREATE TABLE SMICL (
LOC_CODIGO CHAR(12) PRIMARY KEY,
LOC_NIVEL NUMERIC(1),
LOC_TITULO CHAR(43),
LOC_EQUIPE VARCHAR(10),
FN_CODIGO VARCHAR(10)
);



CREATE TABLE SRCEEM (
EEM_OBS TEXT,
EEM_SETOR_UNID CHAR(15),
EEM_DESCRICAO TEXT,
EEM_FABRICANTE CHAR(15),
EEM_TIPO CHAR(40),
EEM_DATA_AQUISICAO DATETIME,
EEM_SITUACAO CHAR(40),
EEM_CODIGO CHAR(12) PRIMARY KEY,
LOC_CODIGO CHAR(12),
FN_CODIGO VARCHAR(10),
FOREIGN KEY(LOC_CODIGO) REFERENCES SMICL (LOC_CODIGO)
);

CREATE TABLE SRCEEMYY (
EEM_CODIGO CHAR(10) PRIMARY KEY,
EDAX VARCHAR(10),
HIST TEXT,
DATA DATETIME,
NDOC CHAR(12),
TPDC CHAR(10),
FOREIGN KEY(EEM_CODIGO) REFERENCES SRCEEM (EEM_CODIGO) ON DELETE CASCADE
);

CREATE TABLE SMIFN (
FN_CODIGO VARCHAR(10) PRIMARY KEY,
FN_NOME VARCHAR(25),
SENHA VARCHAR(10),
ADMIN BOOLEAN
);

ALTER TABLE SMIOSA ADD FOREIGN KEY(OS_CODIGO) REFERENCES SMIOS (OS_CODIGO) ON UPDATE CASCADE;
ALTER TABLE SMIOSA ADD FOREIGN KEY(OS_CODIGO) REFERENCES SMIOS (OS_CODIGO);
ALTER TABLE SMIOS ADD FOREIGN KEY(LOC_CODIGO) REFERENCES SMICL (LOC_CODIGO);
ALTER TABLE SMIOS ADD FOREIGN KEY(EEM_CODIGO) REFERENCES SRCEEM (EEM_CODIGO);
ALTER TABLE SMIOS ADD FOREIGN KEY(FN_CODIGO) REFERENCES SMIFN (FN_CODIGO);
ALTER TABLE SMICL ADD FOREIGN KEY(FN_CODIGO) REFERENCES SMIFN (FN_CODIGO);
ALTER TABLE SRCEEM ADD FOREIGN KEY(FN_CODIGO) REFERENCES SMIFN (FN_CODIGO);


INSERT INTO SMIFN(FN_CODIGO, FN_NOME, SENHA, ADMIN) VALUES ('KLEBER', 'Kleber dos Santos', '123', 1);
INSERT INTO SMIFN(FN_CODIGO, FN_NOME, SENHA, ADMIN) VALUES ('FELIPE', 'Felipe Barcelos', '123', 1);
INSERT INTO SMIFN(FN_CODIGO, FN_NOME, SENHA, ADMIN) VALUES ('THIAGO', 'Thiago Henrique', '123', 1);
INSERT INTO SMIFN(FN_CODIGO, FN_NOME, SENHA, ADMIN) VALUES ('TESTE', 'TESTE', '123', 0);
INSERT INTO SMIFN(FN_CODIGO, FN_NOME, SENHA, ADMIN) VALUES ('nick', 'nick', '123', 0);

INSERT INTO SMICL(LOC_CODIGO, LOC_NIVEL, LOC_TITULO, LOC_EQUIPE, FN_CODIGO) VALUES ('AX', '1', 'Almoxarifado', 'EQUIPE-01', 'KLEBER');
INSERT INTO SMICL(LOC_CODIGO, LOC_NIVEL, LOC_TITULO, LOC_EQUIPE, FN_CODIGO) VALUES ('AXAA', '2', 'Estante-A', 'EQUIPE-01', 'KLEBER');
INSERT INTO SMICL(LOC_CODIGO, LOC_NIVEL, LOC_TITULO, LOC_EQUIPE, FN_CODIGO) VALUES ('AXAA01', '3', 'Prateleira do cima', 'EQUIPE-01', 'KLEBER');
INSERT INTO SMICL(LOC_CODIGO, LOC_NIVEL, LOC_TITULO, LOC_EQUIPE, FN_CODIGO) VALUES ('AXAA02', '3', 'Prateleira de baixo', 'EQUIPE-01', 'KLEBER');
INSERT INTO SMICL(LOC_CODIGO, LOC_NIVEL, LOC_TITULO, LOC_EQUIPE, FN_CODIGO) VALUES ('AXAB', '2', 'Estante-B', 'EQUIPE-01', 'KLEBER');

