<div style="display:inline_block">
    <img align="left" height="110" width="200" alt="MySql" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original-wordmark.svg">
</div>

# MySql
Conceitos e sintaxe Sql usando o dialeto MySql.

<br>

> #### Criar Imagem do MySql
~~~ 
docker run -d -p 3306:3306 --name nome-do-container -e "MYSQL_DATABASE=nomedobanco" -e "MYSQL_ROOT_PASSWORD=password" mysql:latest
~~~  

<br>

## INTRODUÇÃO

### Banco de dados
* Banco de dados, é um local de armazenamento de informações. Essas informações tem por função serem acessadas e utilizadas quando for necessário.  

### Sistema gerenciador de banco de dados relacional (SGBDR)
* São sistemas de banco de dados que gerenciam de maneira automática os registros que armazenam, seja alterando, criando ou exibindo esses registros.

### Banco de dados relacional
* O Banco de dados relacional, é estruturado através de registros de entidades que se relacionam entre si.  
* Todo banco de dados, é formado por: campos, colunas, linhas ou tuplas e tabelas.
  - Um campo é o espaço onde é inserido um dado.
  - Uma coluna contém os tipos de registros de determinado campo.
  - Uma linha contém os registros de uma entidade.
  - Uma tabela é um conjunto de linhas, campos e colunas.
* As relações entre registros são feitos através das chaves primária (primary key) e estrangeira (foreign key) responsáveis por realizar a integração no banco de dados.

### Sql
* O SQL ou linguagem de consulta estruturada (structured query language) é a linguagem utilizada por padrão por bancos de dados relacionais. De maneira geral os seus conjuntos  
de comandos se dividem em três categorias: DDL, DML E DCL.
* Linguagem de definição de dados (DDL): Responsáveis por criar, alterar e excluir entidades em um banco de dados.
* Linguagem de Manipulação de dados (DML): Responsáveis por manipular os dados, inserindo, alterando, selecionando e apagando registros dentro de um banco de dados.
* Linguagem de Controle de dados (DCL): Responsáveis por controlar o acesso aos dados, definindo atribuições de usuários, gerenciando sessões e transações no banco de dados.

<br>

## TIPOS DE DADOS

### Numerico
* Existem diversos tipos numéricos na linguagem sql, cada um tem suas características definindo assim cada caso de uso de forma adequada.

> #### Inteiros
* Os inteiros possuem a propriedade ***unsigned*** que retringe os valores a numeros positivos.

<table>
    <tr>
        <td><b>TIPO</b></td>
        <td><b>VALOR EM BYTES</b></td>
        <td><b>MENOR VALOR</b></td>
        <td><b>MENOR VALOR (UNSIGNED)</b></td>
        <td><b>MAIOR VALOR</b></td>
        <td><b>MAIOR VALOR (UNSIGNED)</b></td>
    </tr>
    <tr>
        <td>Tinyint</td>
        <td>1</td>
        <td>-128</td>
        <td>0</td>
        <td>127</td>
        <td>255</td>
    </tr>
    <tr>
        <td>Smallint</td>
        <td>2</td>
        <td>-32768</td>
        <td>0</td>
        <td>32767</td>
        <td>65535</td>
    </tr>
    <tr>
        <td>Mediumint</td>
        <td>3</td>
        <td>-8388608</td>
        <td>0</td>
        <td>8388607</td>
        <td>16777215</td>
    </tr>
    <tr>
        <td>Int</td>
        <td>4</td>
        <td>-2147483648</td>
        <td>0</td>
        <td>2147483647</td>
        <td>4294967295</td>
    </tr>
    <tr>
        <td>Bigint</td>
        <td>8</td>
        <td>-2xE63</td>
        <td>0</td>
        <td>2xE63-1</td>
        <td>2xE64-1</td>
    </tr>
</table>

> #### Decimais

* Os decimais são subdivididos em de precisão simples e precisão dupla.
* A diferença entre os dois é o nível de precisão de arredondamento dos valores das casas decimais.
* Possuem o atributo que possibilita definir o número de dígitos e o de casas decimais.
* O tipo *Decimal* é de tipo fixo em que difinimos o valor máximo de dígitos e casas decimais, tanto para inteiros como para decimais.
* O tipo *Bit* representa um bit de até 64 bits.
* O atributo ***auto_increment*** realiza a incrementação de sequência de forma automática.
* O atributo ***zerofill*** preenche com zero os espações vazios antes do número.

<table>
    <tr>
        <td><b>TIPO</b></td>
        <td><b>FORMATO</b></td>
        <td><b>MAIOR VALOR</b></td>
    </tr>
    <tr>
        <td>Float</td>
        <td>float(tamanho, valor)</td>
        <td></td>
    </tr>
    <tr>
        <td>Double</td>
        <td>double(tamanho, valor)</td>
        <td></td>
    </tr>
    <tr>
        <td>Decimal</td>
        <td>decimal(tamanho, valor)</td>
        <td></td>
    </tr>
    <tr>
        <td>Bit</td>
        <td>bit(tamanho)</td>
        <td>64</td>
    </tr>
</table>

### CARACTERE

* O tipo ***char*** guarda um número fixo de caracteres sendo até 255 caracteres.
* O tipo ***varchar*** guarda caracteres simples de tamanho variável armazenando até 255 caracteres.
* O tipo ***text*** guarda uma string com até 65.535 caracteres.
* O tipo ***blob*** guarda uma string de acordo com o número de bytes de até 65.535 bytes.
* Para tipos predefinidos existe o tipo ***enum*** que define opções de valores para serem armazenados no banco.
* Os atributos ***set*** e ***collate*** definem o conjunto de caracteres que serão utilizados.

<table>
    <tr>
        <td><b>TIPO</b></td>
        <td><b>FORMATO</b></td>
        <td><b>MAIOR VALOR</b></td>
    </tr>
    <tr>
        <td>Char</td>
        <td>char(tamanho)</td>
        <td>255</td>
    </tr>
    <tr>
        <td>Varchar</td>
        <td>varchar(tamanho)</td>
        <td>255</td>
    </tr>
    <tr>
        <td>Text</td>
        <td>text(tamanho)</td>
        <td>65.535</td>
    </tr>
    <tr>
        <td>Blob</td>
        <td>blob</td>
        <td>65.535</td>
    </tr>
</table>

### TIPO DATA E HORA

<table>
    <tr>
        <td><b>TIPO</b></td>
        <td><b>FORMATO</b></td>
        <td><b>MAIOR VALOR</b></td>
    </tr>
    <tr>
        <td>Date</td>
        <td>YYYY-MM-DD</td>
        <td>9999-12-31</td>
    </tr>
    <tr>
        <td>Datetime</td>
        <td>YYYY-MM-DD HH:MM:SS</td>
        <td>9999-12-31 23:59:59</td>
    </tr>
    <tr>
        <td>Timestamp</td>
        <td>YYYY-MM-DD</td>
        <td>1970-01-01 UTC à 2038-01-19 UTC</td>
    </tr>
    <tr>
        <td>Time</td>
        <td>HHHH:MM:SS</td>
        <td>-838:59:59 a 838:59:59</td>
    </tr>
    <tr>
        <td>Year</td>
        <td>YYYY</td>
        <td>1901 à 2155</td>
    </tr>
</table>


