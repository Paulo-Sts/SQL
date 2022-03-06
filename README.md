# MySql
Conceitos e sintaxe Sql usando o dialeto MySql.

> #### Criar Imagem do MySql
~~~ 
docker run -d -p 3306:3306 --name nome-do-container -e "MYSQL_DATABASE=nomedobanco" -e "MYSQL_ROOT_PASSWORD=password" mysql:latest
~~~  

## Introdução

> #### BANCO DE DADOS
* Banco de dados, é um local de armazenamento de informações. Essas informações podem ao serem salvas nesse lugar serem acessadas e utilizadas quando for necessário.  

> #### SISTEMA GERENCIADOR DE BANCO DE DADOS (SGBD)
* São sistemas de banco de dados que gerenciam de maneira automática os registros que armazenam, seja alterando, criando ou exibindo esses registros.

> #### BANCO DE DADOS RELACIONAL
* O Banco de dados relacional, é estruturado através de registros de entidades que se relacionam de determinada forma.
* Todo banco de dados, é formado por: campos, colunas, linhas ou tuplas e tabelas.
  - Um campo é o espaço onde é inserido um dado.
  - Uma coluna contém os tipos de registros de determinado campo.
  - Uma linha contém os registros de uma entidade.
  - Uma tabela é um conjunto de linhas, campos e colunas.
* As relações entre registros são feitos através de chaves: a chave primária (primary key) e a chave estrangeira (foreign key).

> #### SQL
* O SQL ou linguagem de consulta estruturada (structured query language) é a linguagem utilizada por padrão por bancos de dados relacionais. De maneira geral os seus conjuntos  
de comandos se dividem em três categorias: DDL, DML E DCL.
* Linguagem de definição de dados (DDL): Responsáveis por criar, alterar e excluir entidades de um banco de dados.
* Linguagem de Manipulação de dados (DML): Responsáveis por manipular os dados, inserindo, alterando, selecionando e apagando dentro de um banco de dados.
* Linguagem de Controle de dados (DCL): Responsáveis por controlar o acesso aos dados, definindo atribuições de usuários, gerenciando sessões e transações no banco de dados.