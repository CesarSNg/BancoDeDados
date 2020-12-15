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
    Estado_Endereco CHAR(2) DEFAULT "SP",
    foreing key (TipoLocal_idTipoLocal) references Local (TipoLocal_idTipoLocal),
    foreing key (Pessoa_idPessoa) references Pessoa (Pessoa_idPessoa));

CREATE TABLE Cliente (
    idCliente INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Pessoa_idPessoa INTEGER NOT NULL,
    Pai_Cliente VARCHAR(80) NOT NULL,
    Mae_Cliente VARCHAR(80) NOT NULL,
    Nick_Cliente VARCHAR(12) NOT NULL,
    Senha_Cliente VARCHAR(8) NOT NULL,
    foreing key (Pessoa_idPessoa) references Pessoa (Pessoa_idPessoa));  

CREATE TABLE Pessoa (
    idPessoa INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    TipoPessoa_idTipoPessoa INTEGER NOT NULL,
    Nome_Pessoa VARCHAR(80) NOT NULL,
    RG_Pessoa VARCHAR(10) NOT NULL UNIQUE,
    CPF_Pessoa VARCHAR(14) NOT NULL UNIQUE)
    foreing key (TipoPessoa_idTipoPessoa) references TipoPessoa (TipoPessoa_idTipoPessoa));

CREATE TABLE Contato (
    idContato INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    TipoLocal_idTipoLocal INTEGER NOT NULL,
    Pessoa_idPessoa INTEGER NOT NULL,
    Telefone_Contato VARCHAR(13) NOT NULL UNIQUE,
    Email_Contato VARCHAR(30) NOT NULL UNIQUE,
    foreing key (TipoLocal_idTipoLocal) references TipoLocal (TipoPessoa_idTipoPessoa),
    foreing key (Pessoa_idPessoa) references Pessoa (Pessoa_idPessoa));

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
    Data_Aluguel DATE NOT NULL,
    foreing key (Jogos_idJogos) references Pessoa (Jogos_idJogos),
    foreing key (Cliente_idCliente) references Cliente (Cliente_idCliente),
    foreing key (VideoGame_idVideoGame) references VideoGame (VideoGame_idVideoGame),
    foreing key (Funcionario_idFuncionario) references Funcionario (Funcionario_idFuncionario));

CREATE TABLE Funcionario (
    idFuncionario INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Pessoa_idPessoa INTEGER,
    Sexo CHAR(1) CHECK (UPPER (SEXO) = ‘M’ OR LOWER (SEXO) = ‘F’,
    Idade INTEGER,
    foreing key (Pessoa_idPessoa) references Pessoa (Pessoa_idPessoa)); 

    INSERT INTO TipoLocal (Descricao_TipoLocal) VALUES ("Residencial");
    INSERT INTO TipoLocal (Descricao_TipoLocal) VALUES ("Comercial");
    INSERT INTO TipoLocal (Descricao_TipoLocal) VALUES ("Pessoal");


    INSERT INTO jogos (Nome_Jogo, Descricao_Jogo, Genero_Jogo, Produtora_Jogo)
    VALUES ("Snoppy, Jogo de ação, Ação, Top Games Kids");

    INSERT INTO jogos (Nome_Jogo, Descricao_Jogo, Genero_Jogo, Produtora_Jogo)
    VALUES ("Mario, Jogo 2D, Ação, Top Games Kids");

    INSERT INTO jogos (Nome_Jogo, Descricao_Jogo, Genero_Jogo, Produtora_Jogo)
    VALUES ("Copa do Mundo - 2010, Competição futebolistica, Futebol, Top Games Kids");

    INSERT INTO jogos (Nome_Jogo, Descricao_Jogo, Genero_Jogo, Produtora_Jogo)
    VALUES ("FIFA, Simulado de jogos EA, Futebol, Top Games Kids");

    INSERT INTO jogos (Nome_Jogo, Descricao_Jogo, Genero_Jogo, Produtora_Jogo)
    VALUES ("Homem aranha, Versão TEEN, Ação, Top Games Kids");

    INSERT INTO jogos (Nome_Jogo, Descricao_Jogo, Genero_Jogo, Produtora_Jogo)
    VALUES ("LetsLearn, Jogo para praticar inglês, Educativo, Top Games Kids");

    INSERT INTO jogos (Nome_Jogo, Descricao_Jogo, Genero_Jogo, Produtora_Jogo)
    VALUES ("Capitão america, Jogo de ação, Ação, Top Games Kids");

    INSERT INTO VideoGame (Modelo_VideoGame, NS_VideoGame)
    VALUES ("XBOX360, 123456789");

    INSERT INTO VideoGame (Modelo_VideoGame, NS_VideoGame)
    VALUES ("PlayStation 3, 987654321");

    INSERT INTO VideoGame (Modelo_VideoGame, NS_VideoGame)
    VALUES ("PlayStation 2, 852741963");

    INSERT INTO VideoGame (Modelo_VideoGame, NS_VideoGame)
    VALUES ("PlayStation 4, 258147369");

    INSERT INTO VideoGame (Modelo_VideoGame, NS_VideoGame)
    VALUES ("PlayStation 5, 963852741");
    
    INSERT INTO VideoGame (Modelo_VideoGame, NS_VideoGame)
    VALUES ("XBOXONE, 369258147");

    INSERT INTO VideoGame (Modelo_VideoGame, NS_VideoGame)
    VALUES ("Nintendo Wii, 741852963");

    INSERT INTO TipoPessoa (Descricao_TipoPessoa) VALUES ("Funcionario");
    INSERT INTO TipoPessoa (Descricao_TipoPessoa) VALUES ("Cliente");

    INSERT INTO Pessoa (TipoPessoa_idTipoPessoa, Nome_Pessoa, RG_Pessoa, CPF_Pessoa)
    VALUES ("2, César Santana Ng, 123467-8, 45139879875");

    INSERT INTO Pessoa (TipoPessoa_idTipoPessoa, Nome_Pessoa, RG_Pessoa, CPF_Pessoa)
    VALUES ("2, James Ng, 8765432-1, 96385274152");

    INSERT INTO Pessoa (TipoPessoa_idTipoPessoa, Nome_Pessoa, RG_Pessoa, CPF_Pessoa)
    VALUES ("1, Roseli Santana Ng, 963852-7, 85246938524");

    INSERT INTO Pessoa (TipoPessoa_idTipoPessoa, Nome_Pessoa, RG_Pessoa, CPF_Pessoa)
    VALUES ("1, Cintia Legume Tango, 856422-8, 85426784531");

    INSERT INTO Pessoa (TipoPessoa_idTipoPessoa, Nome_Pessoa, RG_Pessoa, CPF_Pessoa)
    VALUES ("2, Camila Santana Brito, 2593545-8, 96594864549");

    INSERT INTO Cliente (Pessoa_idPessoa, Pai_Cliente, Mae_Cliente, Nick_Cliente, Senha_Cliente)
    VALUES ("3, Mário, Maria, SonOfMMs, 12345");

    INSERT INTO Cliente (Pessoa_idPessoa, Pai_Cliente, Mae_Cliente, Nick_Cliente, Senha_Cliente)
    VALUES ("3, César, Mafe, Hastad DownIsBack, 54321");

    INSERT INTO Funcionario (Pessoa_idPessoa, Sexo, Idade)
    VALUES ("5, M, 20");

    INSERT INTO Funcionario (Pessoa_idPessoa, Sexo, Idade)
    VALUES ("6, F, 17");

    INSERT INTO Funcionario (Pessoa_idPessoa, Sexo, Idade)
    VALUES ("7, F, 21");

    INSERT INTO Contato (TipoLocal_idTipoLocal, Pessoa_idPessoa, Telefone_Contato, Email_Contato)
    VALUES ("3, 1, 1155648375, CSNg@gmail.com");

    INSERT INTO Contato (TipoLocal_idTipoLocal, Pessoa_idPessoa, Telefone_Contato, Email_Contato)
    VALUES ("3, 2, 1128363036, MasterYi@gmail.com");

    INSERT INTO Contato (TipoLocal_idTipoLocal, Pessoa_idPessoa, Telefone_Contato, Email_Contato)
    VALUES ("3, 3, 1156281324, Lissandra.silva@gmail.com");

    INSERT INTO Contato (TipoLocal_idTipoLocal, Pessoa_idPessoa, Telefone_Contato, Email_Contato)
    VALUES ("3, 4, 1145693465, Katarina.xD@gmail.com");

    INSERT INTO Contato (TipoLocal_idTipoLocal, Pessoa_idPessoa, Telefone_Contato, Email_Contato)
    VALUES ("3, 5, 1155555555, Silveira123@gmail.com");

    INSERT INTO Contato (TipoLocal_idTipoLocal, Pessoa_idPessoa, Telefone_Contato, Email_Contato)
    VALUES ("1, 6, 1110391025, TheCesinha@gmail.com");

    INSERT INTO Endereco (TipoLocal_idTipoLocal, Pessoa_idPessoa, Logradouro_Endereco, Numero_Endereco, Complemento_Endereco, Bairro_Endereco, CEP_Endereco, Cidade_Endereco, Estado_Endereco)
    VALUES ("1, 1, Rua CSNG, 105, ap73, Vila CSNG, 04363090, São Paulo, SP");

    INSERT INTO Endereco (TipoLocal_idTipoLocal, Pessoa_idPessoa, Logradouro_Endereco, Numero_Endereco, Complemento_Endereco, Bairro_Endereco, CEP_Endereco, Cidade_Endereco, Estado_Endereco)
    VALUES ("1, 2, Rua Theodorico Moreira de Souza, 7, , Parque alto, 04364090, São Paulo, SP");  

    INSERT INTO Endereco (TipoLocal_idTipoLocal, Pessoa_idPessoa, Logradouro_Endereco, Numero_Endereco, Complemento_Endereco, Bairro_Endereco, CEP_Endereco, Cidade_Endereco, Estado_Endereco)
    VALUES ("1, 3, Rua Nicolau Barreto, 389, , Brooklin, 04025090, São Paulo, SP");

    INSERT INTO Endereco (TipoLocal_idTipoLocal, Pessoa_idPessoa, Logradouro_Endereco, Numero_Endereco, Complemento_Endereco, Bairro_Endereco, CEP_Endereco, Cidade_Endereco, Estado_Endereco)
    VALUES ("1, 4, Avenida Mascote, 1056, ap12, Vila Mascote, 04360090, São Paulo, SP");

    INSERT INTO Endereco (TipoLocal_idTipoLocal, Pessoa_idPessoa, Logradouro_Endereco, Numero_Endereco, Complemento_Endereco, Bairro_Endereco, CEP_Endereco, Cidade_Endereco, Estado_Endereco)
    VALUES ("1, 5, Rua Jovina, 408, , Tucuruvi, 09175090, São Paulo, SP");

    INSERT INTO Aluguel (Funcionario_idFuncionario, VideoGame_idVideoGame, Cliente_idCliente, Jogos_idJogos, Valor_Aluguel, Data_Aluguel)
    VALUES ("3, 6, 1, 3, 20.00, 20/11/2020");

    INSERT INTO Aluguel (Funcionario_idFuncionario, VideoGame_idVideoGame, Cliente_idCliente, Jogos_idJogos, Valor_Aluguel, Data_Aluguel)
    VALUES ("3, 6, 1, 3, 15.00, 02/12/2019");

    INSERT INTO Aluguel (Funcionario_idFuncionario, VideoGame_idVideoGame, Cliente_idCliente, Jogos_idJogos, Valor_Aluguel, Data_Aluguel)
    VALUES ("3, 6, 1, 3, 40.00, 14/12/2020");

    INSERT INTO Aluguel (Funcionario_idFuncionario, VideoGame_idVideoGame, Cliente_idCliente, Jogos_idJogos, Valor_Aluguel, Data_Aluguel)
    VALUES ("1, 3, 1, 1, 80.00, 14/05/2004");


    