CREATE DATABASE biblioteca;
USE biblioteca;

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

CREATE TABLE Editora (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  Endereco VARCHAR(200),
  Email VARCHAR(100),
  NumeroTelefone VARCHAR(20)
);

 