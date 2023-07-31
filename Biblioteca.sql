CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE Editora (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  Endereco VARCHAR(200),
  Email VARCHAR(100),
  NumeroTelefone VARCHAR(20)
);

CREATE TABLE Autor (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  DataNascimento DATE,
  Nacionalidade VARCHAR(50)
);

CREATE TABLE Livro (
  ID INT PRIMARY KEY,
  Titulo VARCHAR(100) NOT NULL,
  AutorID INT,
  AnoPublicacao INT,
  Genero VARCHAR(50),
  QuantidadeDisponivel INT,
  ISBN VARCHAR(20),
  EditoraID INT,  
  FOREIGN KEY (AutorID) REFERENCES Autor(ID),
  FOREIGN KEY (EditoraID) REFERENCES Editora(ID)  
);

CREATE TABLE Usuario (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  Endereco VARCHAR(200),
  Email VARCHAR(100),
  NumeroTelefone VARCHAR(20)
);

CREATE TABLE Emprestimo (
  ID INT PRIMARY KEY,
  DataEmprestimo DATE,
  DataDevolucao DATE,
  LivroID INT,
  UsuarioID INT,
  FOREIGN KEY (LivroID) REFERENCES Livro(ID),
  FOREIGN KEY (UsuarioID) REFERENCES Usuario(ID)
);



INSERT INTO Editora (ID, Nome, Endereco, Email, NumeroTelefone)
VALUES (1, 'Editora Da bola', 'Rua dos Feitiços, 789', 'contato@editoradabola.com', '(11) 1234-5678');

INSERT INTO Editora (ID, Nome, Endereco, Email, NumeroTelefone)
VALUES (2, 'Editora ferraBras', 'Avenida do Medo, 321', 'contato@editoraferrabras.com', '(21) 99999autor-5432');

INSERT INTO Autor (ID, Nome, DataNascimento, Nacionalidade)
VALUES (1, 'J.K. Rowling', '1965-07-31', 'Reino Unido');

INSERT INTO Autor (ID, Nome, DataNascimento, Nacionalidade)
VALUES (2, 'Stephen King', '1947-09-21', 'Estados Unidos');

INSERT INTO Livro (ID, Titulo, AutorID, AnoPublicacao, Genero, QuantidadeDisponivel, ISBN, EditoraID)
VALUES (1, 'Harry Potter and the Sorcerer\'s Stone', 1, 1997, 'Fantasia', 10, '9780590353403', 1);

INSERT INTO Livro (ID, Titulo, AutorID, AnoPublicacao, Genero, QuantidadeDisponivel, ISBN, EditoraID)
VALUES (2, 'It', 2, 1986, 'Horror', 5, '9780450411434', 2);

INSERT INTO Usuario (ID, Nome, Endereco, Email, NumeroTelefone)
VALUES (1, 'Leonardo dias', 'Rua das Flores, 123', 'leonardo.diassilva@email.com', '(11) 99999-4321');

INSERT INTO Usuario (ID, Nome, Endereco, Email, NumeroTelefone)
VALUES (2, 'Pedro Souza', 'Avenida dos Sonhos, 4446', 'Pedro.souza@email.com', '(21) 99999-8888');

INSERT INTO Emprestimo (ID, DataEmprestimo, DataDevolucao, LivroID, UsuarioID)
VALUES (1, '2023-07-28', '2023-08-15', 1, 1);

INSERT INTO Emprestimo (ID, DataEmprestimo, DataDevolucao, LivroID, UsuarioID)
VALUES (2, '2023-07-28', '2023-08-10', 2, 2);
