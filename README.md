# SQL
Conceitos e sintaxe da linguagem SQL.

<br>

#### Criar Imagem do MySql
~~~ 
docker run -d -p 3306:3306 --name nome-do-container -e "MYSQL_DATABASE=nomedobanco" -e "MYSQL_ROOT_PASSWORD=password" mysql:latest
~~~  

<br>

## CONCEITOS

> ### Banco de dados
* Banco de dados, é uma coleção de dados de forma organizada com o objetivo de modelar aspectos do mundo real gerando assim informações. Com os bancos de dados é possível a criação de aplicações que manipulam as informações que eles armazenam.

> ### Sistema gerenciador de banco de dados (SGBD)
* São sistemas que possibilitam a criação e gerência de bancos de dados de maneira automatizada.

> ### Banco de dados relacional
* O Banco de dados relacional, é estruturado através de registros de entidades que se relacionam entre si.  
* Todo banco de dados, é formado por: campos, colunas, linhas ou tuplas e tabelas.
  - Um campo é o espaço onde é inserido um dado.
  - Uma coluna contém os tipos de registros de determinado campo.
  - Uma linha contém os registros de uma entidade.
  - Uma tabela é um conjunto de linhas, campos e colunas.
* As relações entre registros são feitos através das chaves primária (primary key) e estrangeira (foreign key) responsáveis por realizar a integração através de relacionamentos no banco de dados.

> ### SQL
* O SQL ou linguagem de consulta estruturada (structured query language) é a linguagem utilizada por padrão por bancos de dados relacionais. De maneira geral os seus conjuntos de comandos se dividem em três categorias: DDL, DML E DCL.
* Linguagem de definição de dados (DDL): Responsáveis por criar, alterar e excluir entidades em um banco de dados.
* Linguagem de Manipulação de dados (DML): Responsáveis por manipular os dados, inserindo, alterando, selecionando e apagando registros dentro de um banco de dados.
* Linguagem de Controle de dados (DCL): Responsáveis por controlar o acesso aos dados, definindo atribuições de usuários, gerenciando sessões e transações no banco de dados.

<br>

## MODELO ENTIDADE RELACIONAMENTO (MER)
* O modelo entidade relacionamento é um modelo conceitual que descreve os objetos ou entidades de um domínio, com suas características ou atributos e como essas entidades se relacionam entre si. Essa representação abstrata é definida pra estruturar o banco de dados de uma aplicação.

> ### Entidades
* São os objetos que fazem parte do domínio da aplicação, sendo esses representações de coisas do mundo real chamadas de entidades físicas, ou das interações entre os objetos do mundo real chamadas de entidades lógicas ou entidades associativas, que são relavantes para o domínio da aplicação.

> ### Atributos
* São as características relevantes que são responsáveis por descrever as entidades dentro do domínio de negócio. Os atributos descritivos são aqueles que representam características intrínsecas de uma entidade. Os atributos nominativos são os que além de descrever, definem e identificam um objeto. Os atributos referenciais são os que representam uma ligação de uma entidade com outra em um relacionamento.
* Os atributos em sua estrutura podem ser divididos em atributos simples em que um único atributo define uma característica da entidade, ou em atributos compostos em que a definição de uma característica ou informação da entidade é descrita em vários atributos.
* Alguns atributos, representam valores únicos para cada entidade e não podem se repetir, é nessa categoria de atributos que faz parte a chave primária.

> ### Relacionamentos
* Os relacionamentos de um banco de dados, são associações entre as tabelas que definem entidades associadas através de instruções de junção. Essas por tem a função de facilitar recuperação dos dados quando solicitados.

#### Relacionamento 1:1
* Nesse tipo de relacionamento, cada registro de uma entidade (tabela) pode estar associado a apenas um único registro de outra entidade (tabela). Sendo assim um registro da tabela A está associado a um único registro da tabela B, quando o valor da chave primária do registro da tabela A, se relaciona (como chave estrangeira) há um único registro da tabela B.

#### Relacionamento 1:N
* No relacionamento um para muitos, um registro de uma entidade, pode se associar a um ou mais registros de outra entidade, enquanto isso no outro lado da associação os vários registros da entidade estão associados a no máximo um registro da outra entidade. Sendo assim um registro da tabela A pode está associado a vários registros da tabela B, enquanto na tabela B cada registro se relaciona apenas com um registro da tabela A.

#### Relacionamento N:N
* Em um relacionamento muitos para muitos, cada registro de uma entidade pode estar associado a vários registros da outra entidade e vice-versa. Essa relação é criada através de uma entidade de associação (tabela) que contém a associação de todos os registros da primeira entidade que se relacionam com todos os registros da segunda unidade. Sendo assim um registro da tabela A está associado a vários registros da tabela B, enquanto um registro da tabela B também está associado a vários registros da tabela A. 
* Em banco banco de dados relacional, não existem relações diretas do tipo muitos para muitos, por essa razão utiliza-se uma terceira tabela, que define tal tipo de associação. Essa associação trata-se de duas relações do tipo 1:N entre as entidades e a tabela de associação.
* Uma dica para entender as associações é usar expressões que representam a interação das entidades. Por exemplo em uma relação N:N entre as entidades autor e livro, uma forma de descrever a associação seria: um autor escreve vários livros, e um livro é escrito por vários autores.

<br>

## MODELAGEM DE BANCO DE DADOS
* É o processo de análise, ordenação e exploração dos dados e tipos de informações que irão compor um sistema. A modelagem auxilia na identificação e definição
das entidades, seus atributos e como essas entidades se relacionam entre si, seguindo a necessidade do sistema ao qual pertence.

> ### Etapas da modelagem

#### Modelo de dados conceitual
* Sua função é auxiliar no entendimento dos requisitos do sistema que são necessários. São exploradas as necessidades e o domínio do problema. Dessa forma é possível
elaborar um modelo conceitual dos dados que formam a estrutura do projeto.

#### Modelo de dados lógico
* Esse modelo define as entidades com suas características e suas respectivas relações são elaborados de acordo com a implementação esperada.

#### Modelo de dados físico
* É a implementação do projeto em um banco de dados. Nele são elabaradas as tabelas, suas colunas e seus relacionamentos, utilizando o SGBDR e se adequando as suas particularidades e restrições, assim como executando os padrões de nomenclatura adotados no projeto e apresentando os tipos de dados das colunas das tabelas do sistema.

> ### Implementação da modelagem

#### Identificar os tipos de entidade
* É o processo de determinar as diferentes entidades que representam os objetos do sistema. Uma entidade é a descrição de um conceito e os dados que ela possue.

#### Identificar atributos
* É a definição dos atributos que formam as entidades do sistema, cada grupo de atributos pertencendo ao conceito que sua respectiva entidade representa. Estabelecer os atributos de forma coesa é fundamental para desenvolver o projeto de forma mais eficiente, levando em conta o domínio da aplicação.

#### Aplicar convenção de nome
* É o conjunto de diretrizes que define as convenções sobre a nomenclatura das entidades que formam o sistema para modelagem tanto lógica como também física. Essa convenção deve refletir no entendimento dos humanos e nas considerações técnicas estabelecidas.

#### Identificar relacionamentos
* Se trata da definição dos relacionamentos entre as entidades. Deve-se levar em conta que diferentes relacionamentos requerem diferentes abordagens. Assim como a cardinalidade e se a relação é opcional ou obrigatória.

#### Associar chaves
* É a determinação de qual tipo de chave deve-se utilizar para realizar a associação entre entidades, sendo de dois tipos diferentes, as chaves naturais e as chaves substitutas.

#### Normalização
* É o processo de organização dos atributos a fim de aumentar a coesão dos tipos de dados que formam as entidades, eliminando assim possíveis inconsistências ou redundâncias de dados.
* Primeira forma normal:
  - Uma entidade está na primeira forma normal (1NF) quando não contém grupos de dados repetidos.
* Segunda forma normal:
  - Uma entidade está na segunda forma normal (2NF) se estiver na primeira forma normal e quando todos os seus atributos que não são chave primária dependem de sua chave primária.
* Terceira forma normal:
  - Uma entidade está na terceira forma normal (3FN) se estiver na segunda forma normal e quando todos os seus atributos são diretamente dependentes da chave primária.

#### Diversificar
* Esse processo visa aumentar o desempenho do sistema através da diversificação dos esquemas de dados, tornando mais eficiente o tempo de acesso aos dados.

<br>

## CONSTRAINTS

#### Primary key
* É uma constraint usada para indicar de forma única um registro na tabela, esse campo não pode ser nulo. A chave primária também é utilizada para estabelecer relacionamento entre tabelas, ao ter seu valor inserido em outra tabela como uma nova coluna, essa nova coluna é denominada como foreign key.  
* Uma tabela tem apenas uma chave primária que pode ser formada por uma coluna simples ou por vários campos como uma chave composta.

#### Foreign key 
* É uma constraint formada por um campo ou mais em uma tabela que faz referência a chave primária de outra tabela e assim estabelece uma relação entre as duas. 

#### Unique
* Define que todos os valores dos campos ao qual for aplicada sejam únicos, não permitindo assim a repetição de valores em diferentes registros.

#### Not null
* Essa constraint define que uma coluna de uma tabela não possa receber valores nulos. Dessa forma é obrigatório o preenchimento do campo ao se adicionar um novo registro ou altera-lo.

#### Check
* É utilizada para limitar o conjunto de valores que podem ser inseridos na coluna, valores esses que devem atender a condição estabelida para serem registrados.

#### Default
* Essa constraint define um valor padrão a ser registrado em um campo de uma coluna, caso nenhum outro valor seja especificado.

<br>

## TIPOS DE DADOS

> ### MYSQL

#### Inteiros
* Os inteiros possuem a propriedade ***unsigned*** que retringe os valores a numeros positivos.

| TIPO      | VALOR EM BYTES | MENOR VALOR | MENOR VALOR (UNSIGNED) | MAIOR VALOR | MAIOR VALOR (UNSIGNED) |
| --------- | -------------- | ----------- | ---------------------- | ----------- | ---------------------- |
| Tinyint   | 1              | -128        | 0                      | 127         | 255                    |
| Smallint  | 2              | -32768      | 0                      | 32767       | 65535                  |
| Mediumint | 3              | -8388608    | 0                      | 8388607     | 16777215               |
| Int       | 4              | -2147483648 | 0                      | 2147483647  | 4294967295             |
| Bigint    | 8              | -2xE63      | 0                      | 2xE63-1     | 2xE64-1                |
| Boolean   |                |             | 0 (False)              |             | 1 (true)               |

#### Decimais
* Os decimais são subdivididos em de precisão simples e precisão dupla.
* A diferença entre os dois é o nível de precisão de arredondamento dos valores das casas decimais.
* Possuem o atributo que possibilita definir o número de dígitos e o de casas decimais.
* O tipo ***Decimal*** é de tipo fixo em que difinimos o valor máximo de dígitos e casas decimais, tanto para inteiros como para decimais.
* O tipo ***Bit*** representa um bit de até 64 bits.
* O atributo ***auto_increment*** realiza a incrementação de sequência de forma automática.
* O atributo ***zerofill*** preenche com zero os espaços vazios antes do número.

| TIPO    | FORMATO                 | MAIOR VALOR | 
| ------- | ----------------------- | ----------- | 
| Float   | float(tamanho, valor)   |             | 
| Double  | double(tamanho, valor)  |             | 
| Decimal | decimal(tamanho, valor) |             | 
| Bit     | bit(tamanho)            | 64          | 

#### Caractere
* O tipo ***char*** guarda um número fixo de caracteres sendo até 255 caracteres.
* O tipo ***varchar*** guarda caracteres simples de tamanho variável armazenando até 255 caracteres.
* O tipo ***text*** guarda uma string com até 65.535 caracteres.
* O tipo ***blob*** guarda uma string de acordo com o número de bytes de até 65.535 bytes.
* Para tipos predefinidos existe o tipo ***enum*** que define opções de valores para serem armazenados no banco.
* Os atributos ***set*** e ***collate*** definem o conjunto de caracteres que serão utilizados.

| TIPO    | FORMATO                   | MAIOR VALOR | 
| ------- | ------------------------- | ----------- | 
| Char    | char(tamanho)             | 255         | 
| Varchar | varchar(tamanho)          | 255         | 
| Text    | text(tamanho)             | 65.535      | 
| Blob    | blob(tamanho)             | 65.535      | 
| Enum    | enum(valor, valor, valor) |             |

#### Data e hora

| TIPO      | FORMATO             | MAIOR VALOR                     | 
| --------- | ------------------- | ------------------------------- | 
| Date      | YYYY-MM-DD          | 9999-12-31                      | 
| Datetime  | YYYY-MM-DD HH:MM:SS | 9999-12-31 23:59:59             | 
| Timestamp | YYYY-MM-DD          | 1970-01-01 UTC à 2038-01-19 UTC | 
| Time      | HHHH:MM:SS          | -838:59:59 a 838:59:59          | 
| Year      | YYYY                | 1901 à 2155                     |
