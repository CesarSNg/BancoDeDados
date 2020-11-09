CREATE DATABASE dbLocacao;

CREATE TABLE TipoLocal (
idTipoLocal INTEGER,
Descricao_TipoLocal VARCHAR(30));

CREATE TABLE Endereco (
    idEndereco INTEGER PRIMARY KEY,
    TipoLocal_idTipoLocal INTEGER,
    Pessoa_idPessoa INTEGER,
    Logradouro_Endereco VARCHAR(70),
    Numero_Endereco INTEGER,
    Complemento_Endereco INTEGER,
    Bairro_Endereco INTEGER,
    CEP_Endereco VARCHAR(9),
    Cidade_Endereco VARCHAR(30),
    Estado_Endereco CHAR(2));

CREATE TABLE Cliente (
    idCliente INTEGER PRIMARY KEY,
    Pessoa_idPessoa INTEGER,
    Pai_Cliente VARCHAR(80),
    Mae_Cliente VARCHAR(80),
    Nick_Cliente VARCHAR(12),
    Senha_Cliente VARCHAR(8));  

CREATE TABLE Pessoa (
    idPessoa INTEGER PRIMARY KEY,
    TipoPessoa_idTipoPessoa INTEGER,
    Nome_Pessoa VARCHAR(80),
    RG_Pessoa VARCHAR(10),
    CPF_Pessoa VARCHAR(14));

CREATE TABLE Contato (
    idContato INTEGER PRIMARY KEY,
    TipoLocal_idTipoLocal INTEGER,
    Pessoa_idPessoa INTEGER,
    Telefone_Contato VARCHAR(13),
    Email_Contato VARCHAR(30));

CREATE TABLE TipoPessoa (
    idTipoPessoa INTEGER PRIMARY KEY,
    Descricao_TipoPessoa VARCHAR(20));

CREATE TABLE Jogos (
    idJogos INTEGER,
    Nome_Jogo VARCHAR(30) PRIMARY KEY,
    Descricao_Jogo VARCHAR(120),
    Genero_Jogo VARCHAR(20),
    Produtora_Jogo VARCHAR(40));

CREATE TABLE VideoGame (
    idVideoGame INTEGER PRIMARY KEY,
    Modelo_VideoGame VARCHAR(20),
    NS_VideoGame VARCHAR(24));

CREATE TABLE Aluguel (
    idAluguel INTEGER PRIMARY KEY,
    Funcionario_idFuncionario INTEGER,
    VideoGame_idVideoGame INTEGER,
    Cliente_idCliente INTEGER,
    Jogos_idJogos INTEGER,
    Valor_Aluguel REAL,
    Data_Aluguel DATE);

CREATE TABLE Funcionario (
    idFuncionario INTEGER PRIMARY KEY,
    Pessoa_idPessoa INTEGER,
    Sexo CHAR(1),
    Idade INTEGER); 

