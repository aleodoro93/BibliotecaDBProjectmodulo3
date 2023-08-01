🏦🎲    ============ BANCO DE DADOS ============  🏦🎲
MagicYone - Banco de Dados para Gerenciamento de Biblioteca 
Visão Geral
MagicYone é um banco de dados criado para o projeto do módulo 3 da Resilia Educação, Códigos do Amanhã - EBANX. Esse banco de dados foi projetado para o gerenciamento de uma biblioteca, possibilitando o registro de informações sobre editoras, autores, livros, usuários e empréstimos.

Estrutura do Banco de Dados
O banco de dados MagicYone é composto por cinco tabelas principais: Editora, Autor, Livro, Usuario e Emprestimo. A seguir, uma breve descrição de cada tabela:

Tabela Editora
ID: Identificador único da editora.
Nome: Nome da editora.
Endereco: Endereço da editora.
Email: Endereço de e-mail da editora.
NumeroTelefone: Número de telefone da editora.
Tabela Autor
ID: Identificador único do autor.
Nome: Nome do autor.
DataNascimento: Data de nascimento do autor.
Nacionalidade: Nacionalidade do autor.
Tabela Livro
ID: Identificador único do livro.
Titulo: Título do livro.
AutorID: ID do autor associado ao livro (chave estrangeira).
AnoPublicacao: Ano de publicação do livro.
Genero: Gênero do livro.
QuantidadeDisponivel: Quantidade disponível de exemplares do livro na biblioteca.
ISBN: Número ISBN (International Standard Book Number) do livro.
EditoraID: ID da editora associada ao livro (chave estrangeira).
Tabela Usuario
ID: Identificador único do usuário.
Nome: Nome do usuário.
Endereco: Endereço do usuário.
Email: Endereço de e-mail do usuário.
NumeroTelefone: Número de telefone do usuário.
Tabela Emprestimo
ID: Identificador único do empréstimo.
DataEmprestimo: Data em que o livro foi emprestado.
DataDevolucao: Data prevista para devolução do livro.
LivroID: ID do livro emprestado (chave estrangeira).
UsuarioID: ID do usuário que realizou o empréstimo (chave estrangeira).
Exemplos de Dados
A seguir, são fornecidos exemplos de registros inseridos nas tabelas do banco de dados MagicYone:





🔗o link 🔗 para o db diagram: https://dbdiagram.io/d/64c79b1002bd1c4a5efa7059



Tabela Editora
java
Copy code
ID | Nome                  | Endereco                 | Email                       | NumeroTelefone
-----------------------------------------------------------
1  | Editora Da bola       | Rua dos Feitiços, 789    | contato@editoradabola.com   | (11) 1234-5678
2  | Editora ferraBras     | Avenida do Medo, 321     | contato@editoraferrabras.com | (21) 99999autor-5432
Tabela Autor
markdown
Copy code
ID | Nome            | DataNascimento | Nacionalidade
---------------------------------------------------
1  | J.K. Rowling    | 1965-07-31     | Reino Unido
2  | Stephen King    | 1947-09-21     | Estados Unidos
Tabela Livro
markdown
Copy code
ID | Titulo                                         | AutorID | AnoPublicacao | Genero   | QuantidadeDisponivel | ISBN          | EditoraID
---------------------------------------------------------------------------------------------------------------
1  | Harry Potter and the Sorcerer's Stone         | 1       | 1997          | Fantasia | 10                   | 9780590353403 | 1
2  | It                                             | 2       | 1986          | Horror   | 5                    | 9780450411434 | 2
Tabela Usuario
markdown
Copy code
ID | Nome             | Endereco               | Email                        | NumeroTelefone
---------------------------------------------------
1  | Leonardo Dias    | Rua das Flores, 123    | leonardo.diassilva@email.com | (11) 99999-4321
2  | Pedro Souza      | Avenida dos Sonhos, 4446| Pedro.souza@email.com        | (21) 99999-8888
Tabela Emprestimo
yaml
Copy code
ID | DataEmprestimo | DataDevolucao | LivroID | UsuarioID
-------------------------------------------------------
1  | 2023-07-28     | 2023-08-15    | 1       | 1
2  | 2023-07-28     | 2023-08-10    | 2       | 2



📷 DIAGRAMA DO BANCO DE DADOS
<img width="622" alt="model of database" src="https://github.com/aleodoro93/BibliotecaDBProjectmodulo3/assets/119438550/78f632e5-05c9-4298-bedf-6fd0d5a207dc">




Contribuindo
Sinta-se à vontade para contribuir com melhorias no banco de dados MagicYone. Se desejar realizar alguma alteração ou adicionar novas funcionalidades, siga as diretrizes do projeto para fazer o pull request.

Contato
Se você tiver alguma dúvida ou precisar de suporte relacionado ao banco de dados MagicYone, entre em contato comigo.
