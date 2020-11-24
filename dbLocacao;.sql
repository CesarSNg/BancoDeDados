CREATE DATABASE dbLocacao;

CREATE TABLE TipoLocal (
idTipoLocal INTEGER,
Descricao_TipoLocal VARCHAR(30));

CREATE TABLE Endereco (
    idEndereco INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    TipoLocal_idTipoLocal INTEGER NOT NULL,
    Pessoa_idPessoa INTEGER NOT NULL,
    Logradouro_Endereco VARCHAR(70) NOT NULL,
    Numero_Endereco INTEGER NOT NULL,
    Complemento_Endereco INTEGER NOT NULL,
    Bairro_Endereco INTEGER,
    CEP_Endereco VARCHAR(9) NOT NULL,
    Cidade_Endereco VARCHAR(30) DEFAULT "SP",
    Estado_Endereco CHAR(2) DEFAULT "SP");

CREATE TABLE Cliente (
    idCliente INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Pessoa_idPessoa INTEGER NOT NULL,
    Pai_Cliente VARCHAR(80) NOT NULL,
    Mae_Cliente VARCHAR(80) NOT NULL,
    Nick_Cliente VARCHAR(12) NOT NULL,
    Senha_Cliente VARCHAR(8) NOT NULL);  

CREATE TABLE Pessoa (
    idPessoa INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    TipoPessoa_idTipoPessoa INTEGER NOT NULL,
    Nome_Pessoa VARCHAR(80) NOT NULL,
    RG_Pessoa VARCHAR(10) NOT NULL UNIQUE,
    CPF_Pessoa VARCHAR(14) NOT NULL UNIQUE);

CREATE TABLE Contato (
    idContato INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    TipoLocal_idTipoLocal INTEGER NOT NULL,
    Pessoa_idPessoa INTEGER NOT NULL,
    Telefone_Contato VARCHAR(13) NOT NULL UNIQUE,
    Email_Contato VARCHAR(30) NOT NULL UNIQUE);

CREATE TABLE TipoPessoa (
    idTipoPessoa INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Descricao_TipoPessoa VARCHAR(20));

CREATE TABLE Jogos (
    idJogos INTEGER AUTO_INCREMENT NOT NULL,
    Nome_Jogo VARCHAR(30) PRIMARY KEY NOT NULL,
    Descricao_Jogo VARCHAR(120) NOT NULL,
    Genero_Jogo VARCHAR(20) NOT NULL,
    Produtora_Jogo VARCHAR(40) NOT NULL);

CREATE TABLE VideoGame (
    idVideoGame INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Modelo_VideoGame VARCHAR(20) NOT NULL,
    NS_VideoGame VARCHAR(24) NOT NULL);

CREATE TABLE Aluguel (
    idAluguel INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Funcionario_idFuncionario INTEGER NOT NULL,
    VideoGame_idVideoGame INTEGER NOT NULL,
    Cliente_idCliente INTEGER NOT NULL,
    Jogos_idJogos INTEGER NOT NULL,
    Valor_Aluguel REAL NOT NULL,
    Data_Aluguel DATE NOT NULL);

CREATE TABLE Funcionario (
    idFuncionario INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Pessoa_idPessoa INTEGER,
    Sexo CHAR(1) CHECK (UPPER (SEXO) = ‘M’ OR LOWER (SEXO) = ‘F’,
    Idade INTEGER); 

