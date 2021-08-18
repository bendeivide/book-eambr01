---
output:
  pdf_document: default
  html_document: default
---




# Objetos

Definimos um objeto como uma entidade no ambiente R com características internas contendo informações necessárias para interpretar sua estrutura e conteúdo. Essas características são chamadas de **atributos**. Vamos entender o termo estrutura como a disposição de como está o seu conteúdo. Por exemplo, a estrutura de um objeto mais simples no R é um vetor atômico, pois os elementos contidos nele, apresenta o mesmo **modo**, um tipo de **atributo**. Falaremos nisso, mais à frente. De forma didática, adaptaremos a representação dos objetos no formato de diagrama.

Vejamos o seguinte código:

``` r
x <- 10
```

## Atributos

Todo mundo que tem uma certa noção sobre a linguagem R afirmaria: “criei um objeto x que recebe o valor 10.” Para Wickham (2019) essa afirmação é imprecisa e pode levar um entendimento equivocado sobre o que acontece de fato. Para o mesmo autor, o correto é afirmar que o objeto 10 está se ligando a um nome. E de fato, o objeto não tem um nome, mas o nome tem um objeto. O símbolo que associa um objeto a um nome é o de atribuição, <-, isto é, a junção do símbolo desigualdade menor e o símbolo de menos. Para ver qual objeto associado ao nome, o usuário precisa apenas digitar o nome no console e apertar a tecla ENTER.

Representaremos em termos de diagrama, um nome se ligando a um objeto, na Figura \@ref(fig:LigacaoObjeto).

<div class="figure" style="text-align: center">
<img src="img/Ligacao_Objeto.PNG" alt="Dizemos que o nome 'x' se liga ao objeto do tipo (estrutura) vetor." width="100%" />
<p class="caption">(\#fig:LigacaoObjeto)Dizemos que o nome 'x' se liga ao objeto do tipo (estrutura) vetor.</p>
</div>

O identificador na memoría ativa desse objeto pode ser obtida por:

``` r
lobstr::obj_addr(x)
# [1] "0xf8a104fc20"
```
O diagrama explica que o nome criado “x” se associou com um objeto do **tipo** (estrutura) vetor (vector) e **modo** numérico (numeric), cuja identificação na memória ativa do seu computador foi <0xf8a104fc20>. É claro que para cada vez que o usuário abri o ambiente R e executar novamente esse comando, ou repeti o comando, esse identificador irá alterar.

Essa outra representação ficará mais claro para a afirmação feita anteriormente, no segundo diagrama, Figura 9, que representa a ligação do nome “y” ao mesmo objeto. Os termos nos diagramas, serão usados de acordo com a sintaxe da linguagem com os termos em inglês para melhor compreensão e fixação dos termos utilizados em R, uma vez que os termos na linguagem são baseados nesse idioma.

``` r
y <- x
lobstr::obj_addr(y)
# [1] "0xf8a104fc20"
```
Observem que não houve a criação de um outro objeto, mas apenas a ligação de mais um nome ao objeto existente, pois o identificador na memória ativa para o objeto não alterou, é o mesmo. Logo, não temos um outro objeto, mais dois nomes que se ligam ao mesmo objeto.

<div class="figure" style="text-align: center">
<img src="img/Ligacao_Objeto2.PNG" alt="Dizemos que o nome 'x' e ‘y’ se ligam ao objeto do tipo (estrutura) vetor." width="100%" />
<p class="caption">(\#fig:LigacaoObjeto2)Dizemos que o nome 'x' e ‘y’ se ligam ao objeto do tipo (estrutura) vetor.</p>
</div>

Mais especificamente, acrescentamos um outro diagrama, Figura \@ref(fig:ObjetoAmbienteGlobal), mostrando a representação do ambiente global (.GlobalEnv, nome associado ao objeto que representa o ambiente global).


<div class="figure" style="text-align: center">
<img src="img/Objeto_Ambiente_Global.PNG" alt="Dizemos que o nome 'x' e 'y' se ligam ao objeto do tipo (estrutura) vetor e essa ligação fica armazenada no ambiente global." width="100%" />
<p class="caption">(\#fig:ObjetoAmbienteGlobal)Dizemos que o nome 'x' e 'y' se ligam ao objeto do tipo (estrutura) vetor e essa ligação fica armazenada no ambiente global.</p>
</div>

De todo modo, deixaremos para o módulo Programação em R (Nível Intermediário), uma abordagem mais profunda sobre o assunto.

``` r
x <- 10
10 -> x
```
Essas duas linhas de comando anteriores podem ter passado despercebidas pelo leitor em uma situação. Se na segunda linha tivéssemos alterado o valor do objeto de 10 para 30, por exemplo, a associação de x seria ao objeto 30. Isso significa que se o nome já existe, ele será apagado da memória ativa do computador e associado ao novo objeto. Veja,

``` r
lobstr::obj_addr(x)
# [1] "0xf8a104fc20"
x <- 30
lobstr::obj_addr(x)
# [1] "0x42db6dbb50"
```
Uma outra forma menos convencional é usar o comando assign, veja:

``` r
assign("m", 15)
m
```
[1] 15

o invés do símbolo de atribuição, muitos usuários utilizam o símbolo da igualdade “=” para associarmos nomes aos objetos, que o ambiente R compreenderá. Contudo, discutiremos mas adiante, em Boas práticas de como escrever um código, que o uso da igualdade deverá em R ser usado apenas para a utilização em argumentos de uma função.

Quando desejamos executar mais de uma linha de comando por vez, separamos estas pelo símbolo “;” isto é,

``` r
x <- 10; w <- 15; x; w
```
[1] 10
[1] 15

Neste caso, executamos quatro comandos em uma linha. Associamos dois nomes a dois objetos e imprimimos os seus valores.

Por questão de comodidade, iremos a partir de agora, sempre nos referir a um objeto pelo nome associado a ele, para não está sempre se expressando como “um nome associado a um objeto.” Mas que fique claro a discussão realizada anteriormente sobre esses conceitos.

Nesse momento, nos limitaremos a falar sobre objetos que armazenam dados, do tipo caracteres, números e operadores lógicos (TRUE/FALSE).



### Atributos

Todos os objetos, terão pelo menos dois tipos de atributos, chamados de atributos intrínsecos. Os demais atributos, quando existem, podem ser verificados pela função attributes(). A ideia dos atributos pode ser pensada como metadados, isto é, um conjunto de informações que caracterizam o objeto.

Diremos também que todos os objetos R tem uma **classe**, e por meio dessas classes, determinadas funções podem ter comportamento diferente a objetos com classes diferentes. Agora, devemos deixar claro essa informação, apesar do R seguir o **princípio do Objeto**, nem tudo é orientado a objetos, como por exemplo, observamos na linguagens C++ e Java. Deixemos esse tópico para o módulo Programação em R (Nível Intermediário).

A forma de se verificar a classe de um objeto é pela função class(). Contudo, os objetos internos do R (base), quando solicitado sua classe pela função class(), acabam retornando, algumas vezes, resultados equivocados. Uma alternativa é utilizar a função sloop::s3_class() do pacote sloop. Isso também será discutido no módulo Programação em R (Nível Intermedirário).

Devemos estar atentos a uma questão. Existe um atributo também chamado classe (“class”), e nem todos os objetos necessariamente tem esse atributo, apenas aqueles orientados a objetos, como é o caso do objeto com atributo classe . Por exemplo, é devido a classe factor no objeto criado pela função factor() que apesar do seu resultado ser numérico, este não se comporta como numérico. Isto significa que o atributo classe muda o comportamento de como funções veem esse objeto.

Para verificarmos se tal objeto tem o atributo class, usamos a função attributes(). Quando este atributo existe, ele é coincidente com o resultado obtido também pela função class().

O tipo das classes podem ser numeric, logical, character, list, matrix, array, factor e data.frame. Por enquanto, nos concentraremos nas classes de objetos que armazenam dados para uso em análises.

Para remover o efeito da classe, usamos a função unclass() para tal.

Por exemplo, quando criamos um objeto da classe data.frame, vejamos o seu comportamento:

``` r
# Criamos um objeto de classe 'data.frame'
dados <- data.frame(a = 1:3, b = LETTERS[1:3])

# Imprimindo na tela
dados
```
  a b
1 1 A
2 2 B
3 3 C

``` r
# Verificando sua classe
class(dados)
```
[1] "data.frame"

``` r
# Verificando o efeito do objeto 'dados',
# sem o efeito da classe
dados2 <- unclass(dados); dados2
```
$a
[1] 1 2 3

$b
[1] "A" "B" "C"

attr(,"row.names")
[1] 1 2 3


``` r
# Qual a classe desse objeto sem o efeito da
# classe 'data.frame'
class(dados2)
```
[1] "list"

Observe que sem o atributo class= 'data.frame', o objeto tem classe list. Isto significa que, o objeto tem uma estrutura em forma de list, mas se comporta como um data.frame, que se apresenta como mostrado anteriormente.

Veremos no módulo Programação em R (Nível Intermediário) como criar atributos, classes, e mostrar que não conseguiremos mostrar todos os tipos de classes, pois a todo momento se cria classes em objetos R no desenvolvimento de pacotes.


### Atributos intrínsecos

Todos os objetos tem dois atributos intrínsecos: o **modo** e **comprimento**. O **modo** representa a natureza dos elementos objetos. Para o caso dos vetores atômicos, o modo dos vetores podem ser cinco, numérico (numeric), lógico (logic), caractere 15 (character), complexo (complex) ou bruto (`raw``). Este último, não daremos evidência para esse momento. O **comprimento** mede a quantidade de elementos no objeto.

Para determinarmos o **modo** de um objeto, usamos a função mode(). Vejamos:

``` r
# Objeto modo caractere
x <- "Ben"; mode(x)
```
[1] "character"

``` r
# Objeto modo numerico
y <- 10L; mode(y)
```
[1] "numeric"

``` r
# Objeto modo numerico
y2 <- 10; mode(y2)
```
[1] "numeric"

``` r
# Objeto modo logico
z <- TRUE; mode(z)
```
[1] "logical"

``` r
# Objeto modo complexo
w <- 1i; mode(w)
```
[1] "complex"

Contudo, essa função mode() se baseou nos atributos baseados na linguagem S. Temos uma outra função para verificarmos o modo do objeto que é typeof(). O atributo **modo** retornado de um objeto para esta última função, está relacionado a tipagem de variáveis da linguagem C, uma vez que boa parte das rotinas no R está nessa linguagem, principalmente as funções do pacote base. Existem 25 tipos que serão detalhados no módulo Programação em R (Nível Intermedirário).

``` r
# Objeto modo caractere
x <- "Ben"; typeof(x)
```
[1] "character"

``` r
# Objeto modo numerico (Inteiro)
y <- 10L; typeof(y) 
```
[1] "integer"

``` r
# Objeto modo numerico (Real)
y2 <- 10; typeof(y2)
```
[1] "double"

``` r
# Objeto modo logico
z <- TRUE; typeof(z)
```
[1] "logical"

``` r
# Objeto modo complexo
w <- 1i; typeof(w)
```
[1] "complex"

Observamos que apesar de alguns vetores serem vazios, estes ainda tem um modo, observe nas seguintes linhas de comando:

``` r
# Vetor numérico vazio de comprimento 1
numeric(0)
```
numeric(0)



``` r
# Verificando o seu modo
mode(numeric(0))
```
[1] "numeric"


``` r
typeof(numeric(0))
```
[1] "double"

``` r
# Vetor caractere vazio de comprimento 1
character(0)
```
character(0)

``` r
# Verificando o seu modo
mode(character(0))
```
[1] "character"

``` r
typeof(character(0))
```
[1] "character"

A diferença existente nos objetos y e y2 para as funções mode() e typeof() se referem apenas como o R armazena essas informações na memória do computador. Podemos perguntar ao R se dois números são iguais, assim:

``` r
# 10 eh identico a 10L ?
identical(10, 10L)
```
[1] FALSE


O retorno agora foi FALSE, que significa que o armazenamento dessas informações não são iguais. Posteriormente, entenderemos no que isso reflete no código usuário, uma vez que um código escrito pode uma perda de desempenho simplesmente pela não necessidade de determinados objetos ou cópias realizadas.

O termo double retornado pela função typeof() significa dupla precisão na linguagem de programação, que acaba tenho uma exigência de mais memória do que o objeto de modo integer. Esses termos são utilizados na linguagem C. Já a linguagem S não os diferencia, utiliza tudo como numeric.

Aqui vale um destaque para o termo numérico, que no R podem ter três significados:

- Pode significar um número real, isto é, para a computação um número de dupla precisão (numeric e double seriam iguais nesse aspecto). Veja linha de código:

``` r
# Criacao de dois objetos de modo numerico
a <- numeric(1); b <- double(1)
# Verificando o modo
mode(a); mode(b)
```
[1] "numeric"

[1] "numeric"

``` r
# Verificando se 'a' e 'b' sao identificos
identical(a, b)
```
[1] TRUE

- nos sistemas S3 e S4 (orientação a objetos), o termo numérico é usado como atalho para o modo integer ou double. Esse ponto veremos no módulo Programação em R (Nível Básico). Contudo, veja a linha de código:

``` r
sloop::s3_class(1)
```
[1] "double"  "numeric"


``` r
sloop::s3_class(1L)
```
[1] "integer" "numeric"


- Pode ser utilizado (is.numeric()) para verificar se determinados objetos tem o modo numérico. Por exemplo, temos um objeto de classe factor que é importante para a área da estatística experimental, representando os níveis de um fator em um experimento. Os elementos desse objeto pode ser número ou caracteres, mas serão representados como sempre por números. Entretanto, não se comportam como numérico. Veja a linha de comando:

``` r
# Criando um objeto de atributo classe 'factor':
fator <- factor("a"); fator
```
[1] a
Levels: a

``` r
# Para confirmar essa afirmacao anterior, vejamos o modo
mode(fator)
```
[1] "numeric"


``` r
typeof(fator)
```
[1] "integer"


``` r
# Apesar do resultado retornar 1, veja que ele nao se comporta como numerico
is.numeric(fator)
```
[1] FALSE

``` r
is.integer(fator)
```
[1] FALSE

Uma tabela a seguir, mostra o retorno dos seis principais modos de um objeto do tipo (estrutura) de vetores atômicos (Os modos apresentados baseiam-se apenas quanto a característica dos dados do objeto. É claro que um objeto não armazena apenas dados. Existem outras naturezas, que serão omitidas nesse momento):


typeof   | mode
--------- | ------
logical | logical
integer | numeric
double | numeric
complex | complex
character | character
raw | raw

O **comprimento** do objeto é informado pela função lenght(), do qual a representação em diagrama informa esse atributo. Vejamos as linhas de comando a seguir.

``` r
# Vetor de comprimento 5
v1 <- 1:5

# Vetor de comprimento 3
v2 <- c("Ben", "Maria", "Lana")

# Vetor de comprimento quatro
v3 <- c(TRUE, FALSE, TRUE, TRUE)

# Vejamos o comprimento dos vetores
length(v1)
```
[1] 5



``` r
length(v2)
```
[1] 3

``` r
length(v3)
```
[1] 4


Um diagrama apresentando esses três objetos no ambiente global, pode ser apresentado na Figura \@ref(fig:DiagramaObjetos). Observe que acrescentamos agora o **comprimento** dos objetos no diagrama entre colchetes, ao lado do atributo **modo**.







<div class="figure" style="text-align: center">
<img src="img/Diagrama_Objetos.PNG" alt="Objetos v1, v2 e v3." width="100%" />
<p class="caption">(\#fig:DiagramaObjetos)Objetos v1, v2 e v3.</p>
</div>
Um resumo as funções mensionadas podem ser refletidas com as seguintes indagações:

- base::class() e loop::c3_class(): Qual o tipo de objeto?
- base::mode(): Qual o tipo de dados baseados na linguagem S?
- base::typeof(): Qual o tipo de dados baseados na linguagem C?
- base::attributes(): O objeto tem atributos?
- base::length(): Qual o comprimento do objeto?

Usamos essa sintaxe pacote::nome_função() para entedermos qual o pacote da função que utilizamos. Contudo, essa forma tem uma importância no sentido de acesso a funções em um pacote sem necessitar anexá-lo no caminho de busca. Assunto abordado mais a frente.

## Coersão

Como falamos anteriormente, os vetores atômicos armazenam um conjunto de elementos de mesmo modo. A coerção é a forma como o R coage o modo dos objetos. Por exemplo, se um elemento de modo caractere estiver em um vetor, todos os demais elementos serão convertidos para esse modo. Veja:


``` r
# Criando um objeto x e imprimindo o seu resultado
x <- c("Nome", 3, 4, 5);x

```
[1] "Nome" "3"    "4"    "5" 


Observa que todos os elementos ganharam aspas, isto é, se tornaram um caractere ou uma cadeia de caracteres. A coersão entre vetores de modo numeric, character e logical será sempre assim:

<img src="img/Coersao_Vetores.PNG" width="100%" style="display: block; margin: auto;" />
No caso dos vetores lógicos, todo TRUE se converterá em 1, e FALSE em 0. Porém, os modos dos vetores podem ser coagidos pelo usuário, usando as funções do tipo as.<modo ou tipo>() com prefixo as., isto é, se desejarmos que um objeto meu_objeto tenha o modo “character,” basta usar as.character(meu_objeto). Para desejar saber se um objeto é de um determinado modo, usamos as funções do tipo is.<modo ou tipo>(), com o prefixo is.. Vejamos,

``` r
# Objeto de modo numerico
minha_idade <- 35
mode(minha_idade)

```
[1] "numeric"


``` r
# Coersão do objeto para modo caractere (`string`)
minha_idade <- as.character(minha_idade)
mode(minha_idade)

```
[1] "character"


``` r
# Verificando se o objeto tem modo 'character'
is.character(minha_idade)

```
[1] TRUE 


## Tipo de objetos

Por fim, pretendemos falar sobre os principais tipos de objetos. O **tipo** vamos entender como a estrutura de como os dados estão organizados em um objeto, relacionados aos seus atributos. Falamos anteriormente sobre a estrutura mais simples, que é o vetor atômico. Mas entendemos que um vetor em R podem ser considerados: atômicos ou listas. Podemos então subdividi-los em:

- Vetores atômicos:
 - Lógicos, Numéricos e Caracteres;
 - Matrizes unidimensionais (Matrix) e multidimensionais (Arrays);

- Vetores em listas:
 - Listas (Lists);
 - Quadro de dados (Data frames);
 
 Existem outros, mas para esse módulo, exploraremos estes nas seções seguintes. As funções para as coersões realizadas pelos usuários, são similares as funções de coersão para modo, isto é, usar as funções prefixadas as.<tipo>.
 
Daremos uma visão geral dos objetos apresentados até o momento na Tabela a seguir.

Objeto   | Classe | Modo  | São possíveis vários modos no mesmo objeto?
--------- | ------ | --------- | ------
Vetor | logical | numeric (integer ou double), character, complex, logical, raw | Não
Matriz | matrix | numeric (integer ou double), character, complex, logical, raw | Não
Array | array | numeric (integer ou double), character, complex, logical, raw| Não
lista | list | numeric (integer ou double), character, complex, logical, raw, expression, function| Sim
Quadro de dados | data.frame | numeric (integer ou double), character, complex, logical, raw| Sim



 
 
 
### Vetores

Podemos dizer que existem três tipos principais de vetores atômicos:

- Numéricos (numeric):
  - Inteiro (integer);
  - Real (double);
- Lógico (logical);
- Caractere (character)

Existem dois tipos raros que são os complexos (complex) e brutos (raw), que falaremos no módulo seguinte.


#### Vetores escalares

O menor comprimento de um vetor é de tamanho um, conhecido também como um escalar. Porém, para o R tudo é observado como um vetor. As sintaxes para os tipos especiais são: - os vetores lógicos assumem valores: TRUE ou FALSE, ou abreviados, T ou F, respectivamente. Existem valores especiais devido a precisão de operações na programação, que são os chamados pontos flutuantes. Nesse caso temos: Inf, -Inf e NaN, quando o resultados tende a $\infty$, $-\infty$, sem número, respectivamente;

``` r
# divisao de um numero por zero (+ infinito)
x <- 50 / 0; x

```
[1] Inf


``` r
# divisao de um numero por zero (- infinito)
-50 / 0

```
[1] -Inf


``` r
# Resultado sem número do tipo NaN
x - x

```
[1] NaN


- os vetores numéricos do tipo double podem ser representados de forma decima (0.123), científica (1.23e5), ou hexadecimal (3E0A);
- os vetores numéricos do tipo integer são representados pela letra L ao final do número inteiro, isto é, 1L, 1.23e5L, etc.;
- os caracteres são representados pelas palavras, letras, números ou caracteres especiais entre aspas, isto é, "Ben", "a". Pode ser utilizado também aspa simples, 'Ben', 'a', etc.



#### Vetores longos

Os vetores longos podem ser criados pela função c() a incial da palavra concatenar, que significa agrupar. Vejamos alguns exemplos:

``` r
# Criando um vetor 'double'
vetor.num <- c(1, 2, 3, 4, 5); vetor.num

```
[1] 1 2 3 4 5


``` r
typeof(vetor.num)

```
[1] "double"


Uma coisa interessante é que por padrão, a função c() sempre cria um vetor de modo double, a menos que o usuário determine que estes elementos sejam inteiros, isto é,

``` r
# Criando um vetor 'integer'
vetor.num2 <- c(1L, 2L, 3L, 4L, 5L); vetor.num; typeof(vetor.num2)

```
[1] 1 2 3 4 5

[1] "integer"


Uma forma mais eficiente para criarmos um vetor com elementos de sequências regulares, é por meio da função primitiva (:), isto é, <menor valor da sequência>:<maior valor da sequência>. Vejamos:

``` r
# Criando uma sequência de 1 a 5
vetor.num3 <- 1:5; vetor.num3; typeof(vetor.num3)

```
[1] 1 2 3 4 5

[1] "integer"

Veremos mais a frente outras funções para construir sequências regulares. Se verificarmos os três objetos, veremos que todos eles são iguais:

``` r
vetor.num == vetor.num2

```
[1] TRUE TRUE TRUE TRUE TRUE


``` r
vetor.num == vetor.num3

```
[1] TRUE TRUE TRUE TRUE TRUE


``` r
Vetor.num2 == vetor.num3

```
[1] TRUE TRUE TRUE TRUE TRUE


O que vai difenrenciá-los é a forma de armazená-lo (double ou integer), e por consequência, o espaço na memória ativa. Veja:

``` r
# Objetos:
vetor.num <- c(1, 2, 3, 4, 5)
vetor.num2 <- c(1L, 2L, 3L, 4L, 5L)
vetor.num3 <- 1:5
# Memoria:
lobstr::obj_size(vetor.num)

```
96 B


``` r
lobstr::obj_size(vetor.num2)

```
80 B

``` r
lobstr::obj_size(vetor.num3)

```
680 B

O que podemos observar é que o vetor de modo double precisa de mais memória do que o objeto de modo integer. O último objeto aparentemente ocupou mais memória. Contudo, essa função apresenta um recurso interessante apresentado nas versões posteriores R (3.5.0), que é chamado de abreviação alternativa. Esse recurso faz com que a sequência de números não seja armazenada completamente, apenas os extremos. Isso significa que para qualquer tamanho de sequência, a ocupação de memória do objeto será sempre a mesma. Outras formas de criar sequência de números é usando as funções rep() e seq(), do qual a ajuda pode ser realizada usando no console ?rep() e ?seq(), respectivamente.

Dessa forma, poderemos ter com o último objeto (vetor.num3) uma economia de memória, dependendo do tamanho do seu vetor, quando se compara com as outras opções. Veja:

``` r
# Tamanho de memoria dos objetos
lobstr::obj_size(1:10)

```
680 B

``` r
lobstr::obj_size(1:10000)

```
680 B

``` r
lobstr::obj_size(1:1000000)

```
680 B

``` r
lobstr::obj_size(c(1:10))

```
96 B

``` r
lobstr::obj_size(c(1:10000))

```
40,048 B

``` r
lobstr::obj_size(c(1:1000000))

```
4,000,048 B

#### Manipulando vetores

Quando algum elemento de um vetor não está disponível, representamos pela constante lógica NA, que pode ser coagida para qualquer outro modo de vetor, exceto para raw. Podemos ter constantes lógicas NA específicas para modos específicos: NA_integer_, NA_real_ (o equivalente para o modo double), NA_complex_ e NA_character_. Entretando, dependendo de onde o NA é inserido, o atributo modo no objeto já converte para NA específico de acordo com o seu atributo modo. Essa constante contido no vetor não altera o modo do vetor, isto é,

``` r
typeof(c(1, 2, 3, NA))

```
[1] "double"

``` r
typeof(c(1, 2, 3, NA))

```
[1] "double"

``` r
typeof(c("c", "b", "a", NA))

```
[1] "character"


Podemos criar vetores atômicos iniciais sem nenhuma elemento, por meio das funções numeric(0), character(0) e logical(0), isto é,


``` r
# Vetor numerico de comprimento 0
v1 <- numeric(0); length(v1)

```
[1] 0


``` r
v2 <- character(0); length(v2)

```
[1] 0


``` r
v3 <- logical(0); length(v2)

```
[1] 0


Para inserirmos valores a esses vetores usamos o sistema de indexação, que no caso da linguagem R, o contador começa a partir do número 1. Vejamos,

[1] 0

[1] 0

[1] 0


``` r
# Vetor numerico de comprimento 0
v1 <- numeric(0)
v2 <- character(0)
v3 <- logical(0)
# Inserimos 3 elementos em v1 e depois imprimos o seu resultado
v1[1] <- 5; v1[2] <- 3; v1[3] <- 10; v1; length(v1)

```

[1]  5  3 10

[1] 3

Assim, como exercício vocês podem completar para os dois outros vetores. Uma vez criado o vetor, se desejarmos acessar os seus elementos, usamos também o sistema de indexação:

``` r
# Vetor numerico de comprimento 0
v1 <- numeric(0)
v2 <- character(0)
v3 <- logical(0)

# Inserimos 3 elementos em v1 e depois imprimos o seu resultado
v1[1] <- 5; v1[2] <- 3; v1[3] <- 10

# Imprimindo apenas o primeiro valor
v1[1]

```
[1] 5

``` r
# Imprimindo todos
v1

```
[1]  5  3 10

##### Aritmética e outras operações

As operações com vetores não necessariamente são as operações realizadas baseadas na álgebra de matrizes. O que a linguagem R faz é realizar as operações elemento a elemento, mantendo o comprimento de tamanho igual ao tamanho do maior vetor na operação. Vejamos as operações aritméticas entre vetores de tamanho 1:

``` r
# Soma de dois vetores
2 + 3

```
[1] 5


``` r
# Exceto pela sintaxe, '+' eh uma chamada de funcao
`+`(2, 3)

```
[1] 5


``` r
# Subtracao de dois vetores
3 - 2

```
[1] 1


``` r
# Exceto pela sintaxe, '-' eh uma chamada de funcao
`-`(3, 2)

```
[1] 1


``` r
# Multiplicacao de dois vetores
3 * 2

```
[1] 6


``` r
# Exceto pela sintaxe, '*' eh uma chamada de funcao
`*`(3, 2)

```
[1] 6


``` r
# Divisao de dois vetores
3 / 2

```
[1] 1.5


``` r
# Exceto pela sintaxe, '/' eh uma chamada de funcao
`/`(3, 2)

```
[1] 1.5

Essas mesmas operações podem ser realizadas elemento a elemento para vetores de comprimento maior que 1, observe:

``` r
# Soma de vetores
c(4, 5, 6) + c(1, 2, 3)

```
[1] 5 7 9

``` r
# Subtracao de  vetores
c(4, 5, 6) + c(1, 2, 3)

```
[1] 5 7 9

``` r
# Multiplicacao dois vetores
c(4, 5, 6) * c(1, 2, 3)

```
[1]  4 10 18

``` r
# Divisao de dois vetores
c(4, 5, 6) / c(1, 2, 3)

```
[1] 4.0 2.5 2.0

Quando os vetores não têm mesmo comprimento, o R completará de forma sequencial o menor vetor até que ele atinja o tamanho do maior vetor, observe:

``` r
# Soma de vetores de comprimento diferente
1:10 + 3:10

```
 [1]  4  6  8 10 12 14 16 18 12 14
 
O segundo vetor recebeu os elementos 3, 4, 5, isto é, os três primeiros elementos do vetor, para que o seu comprimento se tornasse igual ao comprimento do primeiro vetor. Após isso, foi realizado a soma elemento a elemento. Esse provedimento ocorre com os demais tipos de operações.

Demais operações podem ser realizadas de acordo com as funções apresentadas na Tabela abaixo.

Função (Ou operador)   |Finalidade| 
:---------: | ------ |
+ | 	Soma unária, por exemplo (+ 4), ou binária entre dois vetores | 
- | Subtração unária, por exemplo (- 3), ou binária entre dois vetores | 
* | Multiplicação entre dois vetores | 
/ |Divisão entre dois vetores | 
^ ou ** | 	Exponenciação binária, isto é 2^3 ou 2 ** 3 | 
%/% | Divisão inteira | 
%% | Restante da divisão | 
sum() | Soma de elementos do vetor | 
prod() | 	Produtório dos elementos do vetor | 
sqrt()| Raiz quadrada dos elementos de um vetor| 
log() | Função Logaritmo neperiano | 
log10() |Função Logaritmo na base 10 | 
exp() | Função exponencial | 
mean() | Média dos elementos de um vetor | 
sd() | Desvio padrão dos elementos de um vetor | 
var() | Variância dos elementos de um vetor | 
median() | Mediana dos elementos de um vetor | 
round()| Arredondamento de vetor numérico. Outros tipos são: trunc(), floor() e ceiling(). | 

Demais funções podem ser procuradas no manual An Introduction to R, ou execute no console ?Arithmetic.

##### Operadores lógicos

Os operadores lógicos têm a função de avaliar determinada condição e retornar TRUE/FALSE. São eles:

Operador Lógico   | Sintaxe|Pergunta|
:---------: | ------ |
$<$ | 	a < b |	a é menor que b?| 
$>$ | a > b | a é maior que b? | 
== |a == b | a é igual b? | 
!= |a != b | a é diferente b?| 
$>=$ | 	a >= b | a é maior ou igual a b | 
$<=$ | a <= b | a é menor ou igual a b? | 
%in%| "a" %in% c("a", "b", "c") | O elemento "a" está no vetor c("a", "b", "c")? | 

A operação binária significa que a função exige dois argumentos (ou operandos), isto é, <Argumento 1> <Operador> <Argumento 2>. Para mais detalhes, use no console ?Syntax.

Vejamos alguns exemplos:

``` r
# Operador '>' entre vetores de comprimento 1
1 > 3
```
[1] FALSE

``` r
# Operador '<' com vetor de comprimento maior que 1
1 < c(0, 1, 3)

```
[1] FALSE FALSE  TRUE

``` r
# Operador '==' entre vetores
c(1, 2, 3) == c(3, 2, 1)

```
[1] FALSE  TRUE FALSE

``` r
# Operador '%in%' verificando se os elementos do primeiro vetor
# estao no segundo vetor
1 %in% c(3, 4, 5)

```
[1] FALSE

``` r
# Operador '%in%' verificando se os elementos do primeiro vetor
# estao no segundo vetor
c(1, 2) %in% c(3, 4, 5)

```
[1] FALSE FALSE

``` r
# Operador '%in%' verificando se os elementos do primeiro vetor
# estao no segundo vetor
c(1, 2, 3) %in% c(3, 4, 5)

```
[1] FALSE FALSE  TRUE

``` r
# Operador '%in%' verificando se os elementos do primeiro vetor
# estao no segundo vetor
c(1, 2, 3, 4) %in% c(3, 4, 5)

```
[1] FALSE FALSE  TRUE  TRUE

O que é interessante nesse operador %in%, que na realidade é uma função com dois argumentos, constitui uma forma de criar operadores binários especiais do tipo %<nome_sintatico>%, que esse tipo de função é uma das mais conhecidas hoje na análise de dados usando o operador pipe (%>%) do pacote magrittr da família de pacotes Tidyverse. A diferença no operador pipe é que o segundo operando (Argumento 2) é uma função que recebe no primeiro argumento o operando 1 (Argumento 1). Por fim, o operador %>% acaba sendo um operado unário. Veremos mais detalhes na seção sobre criação de funções.


##### Operadores Booleanos

O operadores booleanos avaliam diversas operações lógicas (condições) para ao final retornar um TRUE/FALSE. Vejamos a Tabela a seguir, com esses operadores e suas indagações.

Operador Booleano (ou Função)  | Sintaxe| Pergunta|
:---------: | ------ | ------ |
& ou && | 	cond1 & cond2 |	As cond1 e cond2 são verdadeiras?| 
$| ou ||$ | $cond1 | cond2$ | A cond1 ou cond2 é verdadeira? | 
xor() | xor(cond1, cond2)| Apenas a cond1 ou a cond2 é verdadeiro? | 
! |!cond1| É falso a cond1 ?| 
any() | 		any(cond1, cond2, ...)| Alguma das condições são verdadeiras?| 
all()| all(cond1, cond2, ...)| Todas as condições são verdadeiras? | 


``` r
# Criando objetos
x <- 1:3
y <- 1:3
z <- c(1, 2, 4)

# Primeira condicao
x == y

```
[1] TRUE TRUE TRUE


``` r
# Segunda condicao
y == z
```
[1]  TRUE  TRUE FALSE



``` r
# Terceira condicao
x == y & y == z

```
[1]  TRUE  TRUE FALSE

Fica como sugestão de exercício os leitores criarem condições para os demais operadores booleanos.

### Matrizes bidimensionais

A apresentação dos próximos objetos daqui pra frente, desde matrizes até quadro de dados (data frame) não é apresentar todas as manipulações possíveis sobre esses objetos. Mas mostrar a sua estrutura e condições básicas imposta sobre eles. Assim, não apresentaremos funções para manipulações com matrizes, por exemplo, porque isso não é o propósito do curso. Daremos a ideia de uma matriz é na realidade um vetor bidimensional, assim como um quadro de dados que na realidade é uma lista.

Quando usamos um atributo chamado dim em um vetor atômico, criamos na realidade vetores bi ou multidimencionais, isto é, objetos do tipo matrizes ou arrays. Observe o que falados anteriormente, o atributo pode mudar a estrutura do objeto

Vejamos alguns exemplos:

``` r
# Criando um vetor atomico
x <- 1:6; x

```
[1] 1 2 3 4 5 6



``` r
# Verificando se o objeto 'x' tem atributo adicionado
attributes(x)

```
NULL



``` r
# Vamos verificar a classe do objeto x
sloop::s3_class(x)

```
[1] "integer" "numeric"



``` r
# Adicionando o atributo dim
dim(x) <- c(2, 3) # 2 x 3 = 6 (Comp do vetor)
# attr(x, "dim") <- c(2, 3)

# Observando agora o comportamento do objeto 'x'
x

```
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6



``` r
# Verificando novamente se 'x' tem atributo
attributes(x)

```
$dim
[1] 2 3



``` r
# Verificando a classe do objeto
sloop::s3_class(x)

```
[1] "matrix"  "integer" "numeric"


O atributo dim recebeu uma informação bidimensional, isto é, o número de linhas e colunas, respectivamente. Uma outra forma para construir uma matriz é usando a função matrix, que de modo similar, temos:

``` r
# Criando uma matriz
matrix(1:6, 2, 3)

```
   [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6


``` r
# Criando uma matriz
matrix(1:6, 2, 3, byrow = TRUE)

```

    [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6


Se desejássemos que os números fossem inserido em linhas e não iniciados pelas colunas, usaríamos o argumento byrow = TRUE, isto é,

``` r
# Criando uma matriz
matrix(1:6, 2, 3, byrow = TRUE)

```

     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6

Para acessarmos ou alterarmos os elementos de uma matriz, usamos o sistema de indexação similar ao vetor, porém, devemos indexar as linhas e colunas. Por exemplo, o elemento da primeira linha e primeira coluna pode ser obtido por x[1, 1], e assim por diante. Todos os elementos da linha 1, x[1,], ou todos os elementos da coluna 1, x[,1].


### Matrizes multidimensionais

A ideia do objeto matriz multidimencional (ou array) é similar ao da matriz, a diferença é que agora é um vetor atômico de mais de duas dimensões. Vejamos,

``` r
# Criando um vetor atomico
x <- 1:12; x

```
 [1]  1  2  3  4  5  6  7  8  9 10 11 12


``` r
# Verificando se o objeto 'x' tem atributo adicionado
attributes(x)

```
NULL

``` r
# Vamos verificar a classe do objeto x
sloop::s3_class(x)

```
[1] "integer" "numeric"
 
 
``` r
# Adicionando o atributo dim
dim(x) <- c(2, 3, 2) # 2 x 3 x 2 = 12 (Comp do vetor x)
# attr(x, "dim") <- c(2, 3, 2)

# Observando agora o comportamento do objeto 'x'
x

```
, , 1

     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6

, , 2

     [,1] [,2] [,3]
[1,]    7    9   11
[2,]    8   10   12

 
 
``` r
# Verificando novamente se 'x' tem atributo
attributes(x)

```
$dim
[1] 2 3 2
 
 
``` r
# Verificando a classe do objeto
sloop::s3_class(x)

```
[1] "array"   "integer" "numeric"
 
Observe que criamos duas matrizes de dimensão (2 x 3). Para acessar os elementos desse objeto, usaremos também o sistema de indexação, agora acrescentando a terceira dimensão. Por exemplo, para acessar o elemento da linha 1, coluna 1, matriz 1, temos x[1, 1, 1], ou todos os elementos da linha 1, matriz 1, temos x[1, , 1].

Uma outra forma de criar um objeto array é usar a função array(). De modo similar, temos:

``` r
# Criando um array
array(1:12, c(2, 3, 2))

```
, , 1

     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6

, , 2

     [,1] [,2] [,3]
[1,]    7    9   11
[2,]    8   10   12

Um exercício para os leitores seria, como poderíamos criar um array de 4 dimensões?

Mostramos um quadro resumo de funções que podem ser utilizadas (Wickham (2019)). Para auxílio nas funções, use sempre o símbolo de interrogação antes das funções e execute no console. Por exemplo, ajuda da função names(), use ?names().

Vetor| Matriz| Array|
:---------: | ------ | ------ |
names() | 	rownames(), colnames() |	dimnames()| 
length()| nrow(), ncol() | dim() | 
c()| rbind(), cbind()| abind::abind() | 
- |	t()| aperm()| 
is.null(dim(x))| 		is.matrix()| is.array | 


### Listas

As listas são como vetores atômicos, porém mais complexos, isto é, os elementos de uma lista são vetores atômicos, como também outras listas, funções, expressões. Esta última é o que chamamos de objetos recursivos. A forma de se obter uma lista é pela função list(). Vejamos os comandos a seguir.

``` r
# Criando uma lista
l0 <- list(1:3, letters[5], list(1, 2, 3),
           mean, expression(x ~ y))
# Imprimindo a lista
l0

```
[[1]]
[1] 1 2 3

[[2]]
[1] "e"

[[3]]
[[3]][[1]]
[1] 1

[[3]][[2]]
[1] 2

[[3]][[3]]
[1] 3


[[4]]
function (x, ...) 
UseMethod("mean")
<bytecode: 0x0000000008b8d3d8>
<environment: namespace:base>

[[5]]
expression(x ~ y)

Podemos acessar ou alterar os elementos de uma lista por meio do operador $, ou pelo sistema de indexação, que diferencia um pouco da indexação dos vetores. Por exemplo, o primeiro elemento desse vetor pode ser acessado por l0[[1]], o terceiro l0[[3]], e assim por diante. Para acessar informações específicas dentro dos elementos, usamos l0[[3]][2], isto é, imprimimos o segundo valor do segundo elemento. Os elementos de um lista são na realidade outros objetos, do qual conseguimos acessar também os elementos desses objetos.

Quando nominamos os objetos contidos nas listas, podemos utilizar o operador $, para acessar esses objetos. Vejamos,

``` r
# Criando uma lista
l0 <- list(l01 = 1:3, 
           l02 = letters[5], 
           l03 = list(1, 2, 3),
           l04 = mean, 
           l05 = expression(x ~ y))
# Imprimindo o primeiro elemento (objeto) da lista 'l0'
l0$l01

```
[1] 1 2 3

``` r
# Imprimindo o segundo
l0$l02

```
[1] "e"

As listas têm importâncias diversas dentro da linhagem R, por exemplo, o atributo em um objeto é armazenado em forma de lista. A coerção sempre força um vetor atômico a uma lista. Vejamos as linhas de comando a seguir.

``` r
# Vejamos as linhas de comando
l1 <- list(list(1, 2), c(3, 4))
l2 <- c(list(1, 2), c(3, 4))
# Vejamos as suas estruturas
str(l1)

```
str(l2)


``` r
# Imprimindo o segundo
l0$l02

```
List of 4
 $ : num 1
 $ : num 2
 $ : num 3
 $ : num 4
 
 
Observamos no objeto l1, temos uma lista cujos elementos são outra lista, o elemento 3 e o elemento 4. O vetor c(3, 4) se transformou em dois elementos de l1. No objeto l2, poderíamos pensar que como a lista está dentro da função c(), os elementos da lista fariam parte dos elementos de um vetor. Porém isso não ocorre. O que temos é uma coerção em que a lista força ao vetor a se tornar lista. Por fim, temos em l2 quatro elementos em uma lista.

### Quadro de dados

O objeto quadro de dados (Data frame) é uma lista com classe data.frame, em que contém dois atributos. Porém, com algumas restrições:

- Os componentes devem ser vetores uni ou multidimencionais, listas ou até mesmo quadro de dados;

- As colunas das matrizes, listas ou quadro de dados são inseridas como colunas do quadro de dados;

- A partir da versão R (4.0.0), os vetores terão mesmo modo no quadro de dados. Antes os vetores em modo caractere eram convertidos em objeto do tipo fator. Para convertê-lo automaticamente use o argumento stringsAsFactors = TRUE. Por sugestão, prefira a mudança usando a função factor(), para ter um maior controle dos níveis;

Para criarmos um objeto do tipo quadro de dados (data frame), usamos a função data.frame(). Assim, como nas listas podemos inserir os objetos no quadro de dados inserindo o nome nas colunas ou não. A forma de acessar os elementos é interessante, podemos usar a sintaxe de indexação de uma lista ou de uma matriz. Vejamos os exemplos a seguir.

``` r
# Criando um quadro de dados
dados <- data.frame(x = 1:10, 
                    y = letters[1:10],
                    z = rep(c(TRUE, FALSE), 5))
# Imprimindo dados
dados

```
    x y     z
1   1 a  TRUE
2   2 b FALSE
3   3 c  TRUE
4   4 d FALSE
5   5 e  TRUE
6   6 f FALSE
7   7 g  TRUE
8   8 h FALSE
9   9 i  TRUE
10 10 j FALSE
 
 
 ``` r
# Acessando os elementos de forma de lista
dados[[1]]

```
[1]  1  2  3  4  5  6  7  8  9 10


 
 ``` r
dados$x

```
[1]  1  2  3  4  5  6  7  8  9 10
 
 
 ``` r
# Acessando os elementos em forma de matriz
dados[1, ] # Coluna 1

```
  x y    z
1 1 a TRUE
 
 
 ``` r
dados[1, 1] # Elemento da linha 1 coluna 1

```
[1] 1
 
 
 ``` r
dados[, 1] # Linha 1 
```
 [1]  1  2  3  4  5  6  7  8  9 10
 
Quando importamos um conjunto de dados, por exemplo usando a função read.table(), o objeto que armazena esses dados é um quadro de dados. Assunto discutido mais a frente.

A semelhança com a forma retangular de uma matriz, faz com que algumas funções utilizadas em matrizes sejam utilizadas em quadro de dados:

- As funções rownames() e colnames(), retornam ou inserem os nomes das linhas e colunas, respectivamente. A função names() retorna o nome das colunas.

- A dimensão das linhas e colunas podem ser obtidas pelas funções nrow() e ncol(), respectivamente. A função length() retorna o número de colunas.

Em algumas situações, estamos interessados em otimizar o nosso tempo de programação, e achamos muito demorado ou não conveniente a utilização da sintaxe objeto$elemento para acessar os elementos de uma lista. Dessa forma, poderemos utilizar a função attach() para que os elementos do quadro de dados estejam disponíveis (anexados) no caminho de busca, e assim, possamos acessar os elementos (ou objetos) do quadro de dados sem precisar mencioná-lo. Vejamos,

 ``` r
# Criando um quadro de dados
dados <- data.frame(x = 1:10, 
                    y = letters[1:10],
                    z = rep(c(TRUE, FALSE), 5))
# Usando a funcao attach()
attach(dados)

# Acessando os elementos
x; y; z
```
, , 1

     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6

, , 2

     [,1] [,2] [,3]
[1,]    7    9   11
[2,]    8   10   12
[1] 1 2 3
[1] 1 2 4



 ``` r
# Desanexando dados
detach(dados)
```

Essa função attach() tem implicações, quando por exemplo se deseja inseri-la na construção de um pacote R. Iremos discutir esse ponto mais a frente. Para desanexar o quadro de dados, use detach(). A função attach() é genérica e pode ser usada em qualquer objeto de modo list ser anexado no caminho de busca.

### Importando dados

A importação/exportação de dados era algo que em poucas linhas conseguíamos explicar sobre o ambiente R, no sentido de análise de dados. Entretanto, observando o terceiro princípio do R, afirmado por Chambers (2016):

- *Princípio da Interface*: Interfaces para outros programas são parte do R

Hoje é uma realidade a interação que o ambiente R tem com outras interfaces (programas, linguagens, etc.). A facilidade em utilizar outras linguagens dentro do ambiente R torna assim mais complexo a importação/exportação de dados, uma vez que o objetivo do R, apesar do R Core Team ainda limitar a sua definição como o ambiente para a computação estatística, a ferramenta se tornou tão versátil, que hoje torna humilde essa definição. Para mais detalhes acesse o manual R Data Import/Export. Um outro fator e tema atual é a era dos grandes bancos de dados (Big Data), do qual se tem um grande conjunto de variáveis e necessitamos fazer a importação por APIs, por exemplo, ou outras vias. Temas como esses, abordaremos no módulo Programação em R (Nível Avançado).

Nesse momento, limitaremos esse assunto ao objetivo de termos um conjunto de dados em arquivos de texto (extensões do tipo .txt, .csv, xls), formato binário (.xls ou .xlsx) ou digitados manualmente pelo teclado do computador. Assim, a primeira forma de como os dados estão dispostos, precisaremos importá-los e armazená-los em um quadro de dados (data frame), para que esteja disponível na área de trabalho (ambiente global) do R, e dessa forma, possamos utilizá-lo. Ao final do tratamento dos dados, podemos exportar essas informações para arquivos externos, e daí também, usaremos os arquivos de textos e o formato binário (.xls), mensionados anteriormente.

#### Preparação dos dados

A primeira coisa que devemos entender quando desejamos construir o arquivo de dados, é entender que sempre organizaremos as variáveis em colunas, com os seus valores em linhas, Figura \@ref(fig:ModeloEstruturalBD). Sempre a primeira linha das colunas representarar o nome das variáveis. Esse é outro ponto importante, pois devemos ter a noção que alguma linguagem irá ler esse banco de dados. Assim, quanto mais caracteres diferentes do padrão ASCII, mais difícil será a leitura desses dados. Assim, sugerimos alguns padrões:


- Evitem símbolos fora do padrão alfanumérico;
- Evitem mistura de letras minúsculas com letras maiúsculas. Isso facilitará o acesso a essas variáveis. Contudo, lembre-se do padrão de nomes sintéticos permissíveis do R;
- Lembre-se que o banco de dados será utilizado para que um programa faça a sua leitura, portanto, deixe a formatação da apresentação dos dados para arquivos específico. Sendo assim, evitem comentários nesses arquivos, ou qualquer outro tipo de informação que não seja o banco de dados;
- Evitem palavras longas, por exemplo, segundavariavel (má escolha), segvar (boa escolha), seg_var (boa escolha);
- Evitem palavras compostas com espaço entre elas. Para isso use o símbolo _, por exemplo, var 2 (má escolha), var2 (boa escolha), var_2 (boa escolha);


<div class="figure" style="text-align: center">
<img src="img/Modelo_Estrutural_BD.PNG" alt="Modelo estrutural de um banco de dados." width="100%" />
<p class="caption">(\#fig:ModeloEstruturalBD)Modelo estrutural de um banco de dados.</p>
</div>


#### Importando dados

A função primária responável pela importação de dados é a função scan(). Por exemplo, funções como read.table(), read.csv() e read.delim(), usam a função scan() em seu algoritmo.

A primeira ideia sobre importação de dados pode ser inserindo-os pelo teclado no próprio ambiente R. Para isso, usaremos a função scan(). Vejamos,

 ``` r
# Criando e inserido os elementos do objeto dados
x <- scan()
```
Após executado essa linha de comando, aparecerá no console 1: que significa, digitar o primeiro valor do objeto x, e depois clicar em ENTER. Depois 2:, que significa digitar o segundo valor, e clicar em ENTER. Depois de inserido todos os valores necessários, aperte a tecla ENTER duas vezes no console, para sair da função scan().

O mais tradicional é usar programa para criação de banco de dados e deixá-lo pronto para o R lê-lo. O tipo de arquivo de texto que melhor controla a separação de variáveis é com a extensão .csv, uma vez que separamos as variáveis por “;” é o padrão. O arquivo de texto com extensão .txt, geralmente usa espaços. Isso acaba gerando problema de leitura no R, porque muitos usuários usam nomes de variáveis muito grandes, palavras compostas, de forma a desalinhar as colunas das variáveis. Daí, como a separação das variáveis é por meio de espaços, acaba gerando problema de leitura. Uma outra forma, é fazer importação de dados gerados pelo próprio R, extensão .RData

Temos a opção de usar um editor de banco de dados para essas extensões por meio de programas como MS Excel, Libre Office, dentre outros. Estes exportam arquivos binários do tipo .xls, .xlsx, dentre outros. Uma sugestão para diminuir complicações, é exportar os bancos de dados para arquivos de texto sitados acima, que também é possível ser exportado por esses programas. Isso evita a necessidade de ser instalado mais pacotes e dor de cabeça. Porém, para quem ainda deseja enfrentar, sugerimos a leitura do pacote readr, como exemplo, porém existem diversos outros pacotes para este mesmo fim.

Uma vez que o banco de dados está pronto, a leitura destes pode ser feita por alguns caminhos. Mostraremos o mais trivial que é o botão Import Dataset, terceiro quadrante, aba Environment, na IDE do RStudio. Veja na Figura 13.

$$FIGURA$$
Posteriormente, indique o arquivo para leitura. Aparece algumas opções de tipo de arquivo. Em nosso caso, usaremos a opção From Text (base), que significa realizar a leitura para os tipos de arquivo .txt ou .csv. Daí os passos seguintes são:


1. Escolher o arquivo para leitura dos dados;
$$FIGURA$$

2. Configurar a leitura do banco de dados. Uma prévia pode ser vista no quadro Data Frame. Se for visualizado, algum problema, isso significa que deve ser informado opções adicionais como separador de variáveis (Separator), símbolo para casas decimais (Decimal), dentre outras opções. Por fim, digitar o nome associado ao objeto (Name) que será criado do tipo quadro de dados (data frame), e clicar no botão Import;
$$FIGURA$$

3. Uma vez inserido, o RStudio apresenta a linha de comando utilizada para importar os dados no console (2º quadrante), o conjunto de dados (1º quadrante), e a ligação entre o nome e o objeto no ambiente global (3º quadrante).
$$FIGURA$$

A outra forma é utilizar linhas de comando. Para isso utilizaremos a função read.table(). Antes de importarmos o banco de dados, algo interessante é inserir o arquivo de dados no diretório de trabalho no ambiente R. Para verificar o ambiente de trabalho use a função getwd(). Para alterar o local do ambiente de trabalho use setwd(). Se esse procedimento não for realizado, o usuário deve informar na função read.table(), o local exato do arquivo de texto.

Vamos usar como diretório o local C:\cursor. Lembre-se que no R, a barra deve ser invertida. Vamos inserir nesse diretório três arquivos alfafa.txt, datast1980.txt e producao.csv.

Os três conjuntos de dados são:

- alfafa.txt

$$TABELA$$
- datast1980.txt
$$TABELA$$

- producao.csv
$$TABELA$$
Vejamos as linhas de comando para importar os dados.


 ``` r
# Diretorio
getwd()

# Mudando para o diretório de interesse
setwd("C:/cursor")

# Verificando os arquivos no diretorio de trabalho
list.files()

# Importando os dados apontando para o diretorio do arquivo
dados1 <- read.table(file = "C:/cursor/alfafa.txt", header = TRUE)

# Considerando que o arquivo esta no diretorio de
# trabalho, isto eh, getwd()
dados2 <- read.table("alfafa.txt", header = TRUE)

# Importando os dados com decimais com ',' apontando para o diretorio do arquivo
dados3 <- read.table(file = "C:/cursor/dadost1980.txt", header = TRUE, dec = ",")

# Considerando que o arquivo esta no diretorio de
# trabalho, isto eh, getwd()
dados4 <- read.table(file = "dadost1980.txt", header = TRUE, dec = ",")

# Importando os dados com decimais ',', e separados por ';' apontando para o diretorio do arquivo
dados5 <- read.table(file = "C:/cursor/producao.csv", header = TRUE, dec = ",", sep = ";")

# Considerando que o arquivo esta no diretorio de
# trabalho, isto eh, getwd()
dados6 <- read.table(file = "producao.csv", header = TRUE, dec = ",", sep = ";")

# Importando da internet
dados7 <- read.table(file = "https://bendeivide.github.io/cursor/dados/alfafa.txt", header = TRUE)
```

Na última linha de comando, mostramos que também é possível importar dados de arquivos de texto da internet, e claro considerando que o usuário está com acesso a internet no momento da importação. E um recurso interessante que pode ser feito, principalmente para este caso, é salvar o banco de dados em um arquivo de dados no .RData. Dessa forma, todos os dados, inclusive os importados da internet serão agora armazenados nesse tipo de arquivo, e não precisaremos, nesse caso, de acesso a internet. Para salvar, usamos a função save(). Para carregar os dados e armazená-lo no ambiente global, usamos a função load(). Vejamos,

 ``` r
# Diretorio
getwd()

# Verificando os arquivos do diretorio de trabalho
list.files()

# Importando os dados da internet
dados7 <- read.table(file = "https://bendeivide.github.io/cursor/dados/alfafa.txt", header = TRUE)

# Salvando em '.RData'
save(dados7, file = "alfafa.RData")

# Carregando '.RData' para o ambiente global
load("alfafa.RData")
```

Percebemos que as extensões .txt e .csv são idênticos, exceto pela estrutura de como os dados estão dispostos. Para comprovar isso, o usuário manualmente poderá mudar a entensão de um arquivo do tipo .csv para um arquivo .txt e observar em um bloco de notas.

Até esse momento do curso, usamos as funções no R sem apresentar os argumentos dessas funções dentro dos parênteses. Isso porque quando inserimos os valores dos argumentos na posição correta destes, não precisaremos inserir o nome dos argumentos. Por exemplo, já usamos anteriormente a função mean() que calcula a média de um conjunto de valores, por exemplo, valores <- 1:10. Temos como primeiro argumento para essa função o x que representa um objeto R que recebe os valores para o cálculo. Assim, como sabemos que x é o primeiro argumento dessa função, podemos omitir o seu nome e calcular a média por mean(valores), que é o mesmo que mean(x = valores). Para mais detalhes, ?mean(). Para mais detalhes sobre a função read.table(), use ?read.table().

### Funções

Mais uma vez, nos reportamos aos princípios do R (Chambers (2016)), mais especificamente ao segundo princípio,

- Princípio da função: Tudo que acontece no R é uma chamada de função.

Para que possamos compreender esse princípio, precisamos entender que uma função é um objeto, isto é, modo function, assim como os vetores são, seguindo as mesmas ideias comentadas na seção anterior, e que as funções podem ser dividas em três componentes:

- Argumentos, função formals(),
- Corpo, função body() e
- Ambiente, função environment().

Para o caso das funções primitivas, escritas na linguagem C, essa regra foge a excessão, e será comentado nos módulos seguintes. Dizemos que funções são primitivas de modo builtin ou special.

A ideia de função aqui não pensando como uma relação matemática, mas como um sistema que tem uma entrada e saída. Podemos ter funções no ambiente R que organiza dados, e não operações matemáticas por exemplo. Vejamos a função sort() do pacote base que ordena de forma crescente ou descrescente um conjunto de valores,


 ``` r
# Vetor
y <- c(5, 3, 4); y

```
[1] 5 3 4


 ``` r
# Funcao
sort(x = y)

```
[1] 3 4 5


 ``` r
# Argumentos da funcao sort
formals(sort)

```
$x


$decreasing
[1] FALSE

$...



 ``` r
# Corpo da funcao
body(sort)

```
{
    if (!is.logical(decreasing) || length(decreasing) != 1L) 
        stop("'decreasing' must be a length-1 logical vector.\nDid you intend to set 'partial'?")
    UseMethod("sort")
}


 ``` r
# Ambiente
environment(sort)

```
<environment: namespace:base>

Nesse caso, os argumentos x, decreascing e ..., são nomes que aguardam receber objetos para a execução da função sort(). Nem todos os argumentos necessitam receber objetos, a estes chamamos de argumentos padrão, como o caso do argumento decreascing com padrão igual a FALSE, que significa que o ordenamento dos dados será de forma não-decrescente. Observe que na função sort() entramos apenas com o argumento x = y, não precisando inserir decreascing = FALSE. Agora, para modificar o argumento padrão, basta acrescentar a alteração na função, isto é,

 ``` r
# Funcao
sort(x = y, decreasing = TRUE)

```
[1] 5 4 3

O '...' é um argumento especial e significa que pode conter qualquer número de argumentos. Geralmente é utilizado em uma função quando não se sabe o número exato de argumentos. Na subseção Como criar funções, entenderemos melhor.

O próximo item é o corpo da função. É nele que inserirmos as instruções, isto é, as linhas de comandos necessárias a que destina a sua criação. Uma outra forma de acessarmos o corpo das funções é digitar no console apenas o seu nome sem o parêntese, isto é, sort.

Por fim, o ambiente que no caso da função sort() representa o ambiente do pacote base, isto é, o namespace do pacote.

Por fim, o ambiente que no caso da função sort() representa o ambiente do pacote base, isto é, o namespace do pacote.

O ambiente R apresenta uma versatilidade de manuais para a linguagem. Por exemplo, para verificar informações sobre um determinado pacote como o base, use help(package = "base"). A função help pode ser utilizada para funções de pacotes anexados. Por exemplo, help("sort"). O pacote base sempre estará anexado, isto é, disponível no caminho de busca para a utilização. Para os que não estão anexados, a função help deve informar o nome da função que necessita de ajuda, bem como o seu pacote. Por exemplo, temos uma função read.dbf() do pacote foreign, Base do R, porém, ele não está anexado ao inicializar o R. Assim, caso não anexe o pacote, usando library("foreign"), a ajuda sobre a função pode ser realizada com help("read.dbf", package = "foreign"). Outras sintaxes para a função help() é usar ? antes do nome de uma função de um pacote anexado, isto é, ?sort().

Para os manuais de ajuda na internet, use ?? antes do nome da função, por exemplo ??sort(), read.dbf(), etc. Essa sintaxe não precisa dos pacotes estarem anexados para ajuda de determinada função, porém o pacote necessita estar instalado. Para mais detalhes sobre pacotes, teremos uma seção sobre Pacotes.

As chamadas de funções no podem ocorrer de três formas: aninhada, intermediária ou de forma pipe. As duas primeiras formas da Base do R, e o segundo foi uma sintaxe utilizada pelo pacote magrittr.

Suponha que desejamos calcular o desvio padrão de um conjunto de valores. Vamos utilizar as três formas:

- Aninhado:

 ``` r
# Gerando 100 numeros aleatorios de uma distribuicao normal
set.seed(10) # Semente
x <- rnorm(100)

# Calculando o desvio padrao
sqrt(var(x))

```
[1] 0.9412359


- intermediária:

 ``` r
# Calculando o desvio padrao
vari <- var(x)
desvpad <- sqrt(vari); desvpad

```
[1] 0.9412359

- Pipe:

 ``` r
# Anexando o pacote
library(magrittr)

# Calculando o desvio padrao
x %>%
  var() %>%
  sqrt()

```
[1] 0.9412359

A ideia da chamada de função aninhada é inserir função como argumento de funções sem necessidade de associar nomes aos objetos. A ordem de execução começa sempre da direita para a esquerda. No caso da chamada de função intermediária, associamos nomes a cada função, e os passos seguem. Por fim, o operador especial pipe (%>%) tem como primeiro operando o primeiro argumento da função no segundo operando.

Quando desenvolvemos pacotes, preferimos os dois primeiros, pois é a forma tradicional de chamadas de função no R. A chamada de função pipe é muito utilizada para ciência dos dados.

#### Estruturas de controle

As funções que utilizaremos, a seguir, são utilizadas quando desejamos realizar processos repetitivos para um determinado fim ou condicionado, as famosas estruturas de controle. Assim, como em outras linguagens, as funções utilizadas são: if(), switch(), ifelse(), while(), repeat, for(). Esses objetos tem modo special 
Use a função typeof() para verificar.
20 , porque as expressão não são necessariamente avaliadas. Já a função ifelse() é de modo closure 21 . Esse é um tipo de função implementado por function().

A ideias das estruturas de controle de modo special é:

função (condição) {
  expressão
}

A sintaxe das funções repeat e swicth() fogem um pouco desse padrão, e explicaremos em sua aplicação.

Apesar da linguagem R ser interpretada, acaba ganhando a fama de que as funções loops são mais lentas. Em alguns casos, a construção do algoritmo proporciona isso e não a implementação dessas funções em si. Um exemplo que podemos citar, são as cópias de objetos podem ter um gasto de memória ativa imenso no processo e proporcionar um gasto computacional. E isso foi devido a forma de como o algoritmo copiou os objetos, e não as funções lopps. Veremos isso no módulo Programação em R (Nível Intermediário).

A primeira estrutura é o if(), com sintaxe:

if (condição) {
  expressão sob condição = TRUE
} else {
  expressão sob condição = FALSE
}
ou de forma alternativa:

if (condição) {
  expressão sob condição = TRUE
}
Observe o primeiro exemplo,

 ``` r
# Objeto numerico
x <- 10

# Estrutura 'if'
if (is.numeric(x)) {
  print("Isso é um número")
} else {
  print("Isso não é um número")
}

```
[1] "Isso é um número"

 ``` r
# eh o mesmo que
if (is.numeric(x) == TRUE) {
  print("Isso é um número")
} else {
  print("Isso não é um número")
}

```
[1] "Isso é um número"

observe na primeira forma que a condição na função nós não precisamos perguntar se is.numeric(x) == TRUE, porque isso já é implícito na função, e acaba levando a primeira expressão print("Isso é um número"). No R, essa estrutura de controle não é vetorizado, isto é, se a condição houver um vetor lógico maior que 1, apenas os primeiros itens serão usados. Vejamos,

 ``` r
# Objetos
x <- 5
w <- 3:8

# Primeira sintaxe (Preferivel)
if (x < w) {
  x
} else {
  w
}

```
[1] 3 4 5 6 7 8



 ``` r
# Segunda forma
# if (x < w) x else w

```

Como forma alternativa, pode ser usado a função ifelse, cuja sintaxe é:

ifelse(condição, expressão sob TRUE, expressão sob FALSE)

Assim, temos:

 ``` r
# Objetos
x <- 5
w <- 3:8

# Primeira sintaxe (Preferivel)
ifelse(x < w, x, w)
```
[1] 3 4 5 5 5 5

Podemos estar interessados em resultados específicos para determinadas condições. Por exemplo,

 ``` r
x <- 2 # numero ou palavra

# Estrutura 'if'
if (is.character(x)) {
  "palavra"
} else {
    if ((x %% 2) == 0) {
      "numero_par"
    } else {
        if ((x %% 2) == 1) {
          "numero_impar"
        }
    }
}
```
[1] "numero_par"


Outro exemplo seria,

 ``` r
# Objeto
set.seed(15) # Fixando a semente
x <- rnorm(1000) # Gerando 1000 numeros aleatorios

# medida descritiva
opcao <- "media" # opcoes: "media", "mediana", "medapar" (media aparada)

if (opcao == "media") {
  cat("A média aritmética é:", round(mean(x), 4))
} else {
    if (opcao == "mediana") {
      cat("A mediana é:", round(mean(x), 4))
    } else {
        if (opcao == "medapar") {
          cat("A média aparada é:", round(mean(x, trim = 0.1), 4))
        }
    }
}
```
A média aritmética é: 0.037

Poderíamos utilizar a função switch(), para esse mesmo código, isto é,

 ``` r
switch(opcao,
   media = cat("A média aritmética é:", round(mean(x), 4)),
   mediana = cat("A mediana é:", round(mean(x), 4)),
   medapar = cat("A média aparada é:", round(mean(x, trim = 0.1), 4))
)
```
A média aritmética é: 0.037

As três estruturas de loop no R são: repeat, while() e for(). A primeira delas é repeat, apresentamos sua sintaxe:

repeat {
   expressão ...
}

Juntamente com o repeat, usamos as funções break e next, pois a função repeat não tem uma condição explícita. Vejamos, alguns exemplos.

 ``` r
# Contador
i <- 1
# Loop repeat
repeat {
  if (i > 5) {
    break
  } else {
    print(i)
    i <- i + 1
  }
}
```
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5

Observe que quando i <- 6, o ciclo entrou na condição if(i > 5) e avaliou a função break, que resultou na quebra do ciclo. Assim, a função print(i) não foi mais acionada, e os resultados foram impressos até o número 5. No próximo exemplo, acrescentamos a função next.

 ``` r
# Contador
i <- 1
# Loop repeat
repeat {
  if (i > 5) {
    break
  }
  else {
    if (i == 3) {
      i <- i + 1
      next
    }
    print(i)
    i <- i + 1
    }
}
```
[1] 1
[1] 2
[1] 4
[1] 5

Similar a essa função, temos while(), que agora, temos uma condição de parada, cuja sintaxe é:

while (condição) {
   expressão ...
}
Nessa função, também podemos usar as funções break e next, como usados na função repeat. Vejamos um exemplo,

 ``` r
# Contador
i <- 1
# Loop while
while (i <= 5) {
  print(i)
  i <- i + 1
}
```
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5

Nesse caso, não foi necessário utilizar a função break, devido a condição que ela permite impor ao ciclo. Vejamos um outro exemplo,

 ``` r
# Contador
i <- 1
# Loop while
while (i <= 5) {
  if (i == 3) {
    i <- i + 1
    next
  }
  print(i)
  i <- i + 1
}
```
[1] 1
[1] 2
[1] 4
[1] 5

Observamos a utilização da função next, similar ao que foi realizado com a função repeat. Por fim, a função for(), cuja sintaxe é dada por:

for (contador in lista) {
   expressão ...
}

Com essa função, também podemos utilizar break e next. Porém, o controle do ciclo nessa sitação é maior, e menos necessário essas funções. Vejamos um primeiro exemplo,

 ``` r
# Loop for
for (i in 1:5) {
  print(i)
}
```
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5

Observe que a implementação, dos algoritmos anteriores, é bem mais simples usando a função for(). Vejamos um próximo exemplo,


 ``` r
# Loop for
for (i in 1:5) {
  if (i == 3) {
    next
  }
  print(i)
}
```
[1] 1
[1] 2
[1] 4
[1] 5

Mais uma vez, foi utilizado a função next, sem necessidade agora, de atualizar o contador i, uma vez que já está definido na função for().

Veremos na próxima subseção, que temos funções de alto nível que podem substituir as funções loops. São as chamadas funções da família apply.


#### Como criar funções

Até esse momento, usamos funções já desenvolvidas no R, seja dos pacotes da Base, seja via instalação dos pacotes via CRAN. Agora, iremos desenvolver as nossas próprias funções.

Como falado anteriormente, no início dessa seção, a estrutura da função criada se mantém, argumento, corpo e ambiente. Para isso, usaremos a função function. O modo desse objeto é closure 22 . Vejamos a sua sintaxe,

*Forma usual*
nome_funcao <- function(arg1, arg2, ...) {
   corpo: comandos..
}
*Forma simplificada*
nome_funcao <- function(arg1, arg2, ...) corpo


Vejamos um primeiro exemplo,


 ``` r
fun1 <- function(x) {
  res <- x + 1
  return(res)
}
```

Nesse caso, temos uma função chamada fun1, cujo argumento de entrada é x. Observe que uma função é como um objeto do tipo vetor, associamos um nome ao objeto da mesma forma. O corpo apresenta uma delimitação por chaves {...}, em que apresenta um comando de atribuição res que se associa a soma x + 1, e por fim, o resultado dessa função, imprime res, por meio da função return(). Para utilizar essa função, fazemos


 ``` r
fun1(x = 5)
```
[1] 6

O que aconteceu foi que ao assumir x = 5, essa informação foi repassada para o corpo da função, aonde existia x, foi substituído por 5, para esse caso. A função + é chamada, a expressão x + 1 avaliada, e nome res se associa ao resultado da expressão. Por fim, quando a função fun1 é chamada, o resultado de res é impresso no console, por meio de return(res). Vamos verificar os três componentes da função fun1,

 ``` r
# Argumentos
formals(fun1)
```
$x



 ``` r
# Corpo
body(fun1)
```
{
    res <- x + 1
    return(res)
}



 ``` r
# Ambiente
environment(fun1)
```
<environment: R_GlobalEnv>


O corpo da função é executado de forma sequencial, a partir da primeira linha até a última. Apesar de recomendado, também não é obrigatório o uso da função return(), veja

 ``` r
# Funcao
fun2 <- function(x) x + 1
# Executando
fun2(5)
```
[1] 6


#### Função anônima

Podemos também ter o que chamamos de **função anônima**, da qual não associamos nome as funções. Contudo, sendo criada esta não pode ser recuperada como qualquer outro objeto. Essa forma é interessante quando não precisamos dela após o seu uso. Por exemplo, queremos calcular a integral,

$$FUNCAO$$

e criamos uma função x2. Então,

 ``` r
integrate(f = function(x) x^2,
          lower = 0,
          upper = 1)
```
0.3333333 with absolute error < 3.7e-15

A função integrate é utilizada para o cálculo de integral, do qual, passamos os argumentos, função (f), limite inferior (lower) e limite superior (upper) da integração, respectivamente. Observe que não houve necessidade de nomear a função no argumento, pois não há objetivo de reutilizado.

#### Chamadas de função

As chamadas para essas funções ocorrem da mesma forma que as funções apresentadas da Base do R. Vejamos o cálculo do desvio padrão novamente,

 ``` r
# Funcao auxiliar 1
aux1 <- function(x) x - mean(x)
# Funcao auxiliar 2
aux2 <- function(x) x^2
# Funcao auxiliar 3
aux3 <- function(x) {
  sum(x) / (length(x) - 1)
}

# Gerando 100 numeros aleatorios de uma distribuicao normal
set.seed(10)
x <- rnorm(100)

# Calculo do desvio padrao (aninhado)
sqrt(aux3(aux2(aux1(x))))
```
[1] 0.9412359



 ``` r
# Calculo do desvio padrao (intemediario)
dp <- aux1(x)
dp <- aux2(dp)
dp <- aux3(dp)
dp <- sqrt(dp)
dp
```
[1] 0.9412359




 ``` r
# Calculo do desvio padrao (pipe)
x %>%
  aux1() %>%
  aux2() %>%
  aux3() %>%
  sqrt()
```
[1] 0.9412359


#### Chamadas de função

Os argumentos nas funções podem ser nomeados ou não. Quando nomeados, a ordem como são inseridos na função não importa. Já os argumentos não nomeados, seus valores precisam estar na ordem como a função foi desenvolvida. Vejamos,


 ``` r
estdesc <- function(x, opcao) {
  res <- switch(opcao,
           media = round(mean(x), 4),
           mediana = round(mean(x), 4),
           medapar = round(mean(x, trim = 0.1), 4))
  return(res)
}

# Objeto
set.seed(15)
x <- rnorm(1000)

# Argumentos nomeados na funcao
estdesc(x = x, opcao = "media")
```
[1] 0.037








 ``` r
estdesc(opcao = "media", x = x)
```
[1] 0.037









 ``` r
# Argumentos não nomeados ordenados
estdesc(x, "media")
```
[1] 0.037







 ``` r
# Argumentos não ordenados (Gera erro)
estdesc("media", x)
```
Error in switch(opcao, media = round(mean(x), 4), mediana = round(mean(x), : EXPR deve ser um vetor de comprimento 1


#### Objeto reticências (...)

O objeto reticências é do tipo pairlist, um tipo de objeto usado bastante internamente no R, e dificilmente utilizado no código interpretado. De modo que não temos acesso direto ao objeto .... Contudo, esse objeto tem um papel fundamental nas funções, quando damos a liberdade de inserir mais argumentos além dos definidos na função. Vejamos,

 ``` r
# Funcao que plota um grafico
grafico <- function(x, y, ...) {
  plot(x = x, y = y, ...)
}
# Vetores
x <- 1:10; y <- rnorm(10)
# Chamada 1, com os argumentos definidos
grafico(x = x, y = y)
```
$$IMAGEM$$
 ``` r
# Chamada 2, inserindo argumentos nao definidos
grafico(x = x, y = y, main = "Título")
```
$$IMAGEM$$

Isso ocorre, porque temos a função plot() no corpo da função grafico() que apresenta muitos argumentos. Dessa forma, criamos a função grafico(), com os argumentos que representam as coordenadas, mas a reticências (...) garantem que os demais argumentos de plots, omitidos, possam ser utilizados.

#### Escopo léxico

Vamos retornar aos componentes da função fun1,

 ``` r
# Argumentos
formals(fun1)
```
$x


 ``` r
# Corpo
body(fun1)
```
{
    res <- x + 1
    return(res)
}


 ``` r
# Ambiente
environment(fun1)
```
<environment: R_GlobalEnv>


Observe que o último componente é o ambiente onde o nome fun1 foi associado a função. Este ambiente é chamado de **ambiente envolvente**. Nesse caso é o ambiente global. Contudo, quando a função é executada, momentaneamente é criado o **ambiente de execução**. É nesse ambiente que os nomes que estão no corpo da função são associados aos objetos. Vejamos um primeiro exemplo,

 ``` r
x <- 10
fun <- function() {
  x <- 2
  x
}
# Chamando a funcao fun
fun()
```
[1] 2

Por causa do ambiente de execução que o objeto x dentro da função é retornado, ao invés do que foi definido fora da função. Isso porque o ambiente de execução mascara os nomes definidos dentro da função dos nomes definidos fora da função. Esse é uma primeira característica do **escopo léxico** nas funções em R.

Anteriormente, falamos sobre a **atribuição**, que representa a forma como os nomes se associam aos objetos. Agora, o **escopo** vem a ser a forma como os nomes encontram seus valores associados. O termo **léxico** significa que as funções podem encontrar nomes e seus respectivos valores associados, definidos no ambiente onde a função foi definida, isto é, no ambiente de função. Claro que isso segue regras, e a primeira foi a **máscara de nome** falada anteriormente.

Porém quando não existe um nome vinculado a um objeto, e este foi definido no ambiente de função, o valor é repassado dentro para função. Observe,

 ``` r
x <- 10
fun <- function() {
  x
}
# Chamando a funcao fun
fun()
```
[1] 10

O resultado de fun() foi 10, porque como a função procurou no ambiente de execuções e não encontrou esse nome, a função foi até o ambiente superior, no caso, o ambiente de execuções. Como falado anteriormente, todo ambiente tem um pai (ou ambiente superior). Essa hierarquização é observada no caminho de busca, que pode ser acessado por search(), ou seja,

 ``` r
search()
```
 [1] ".GlobalEnv"        "package:magrittr"  "package:leaflet"  
 [4] "package:stats"     "package:graphics"  "package:grDevices"
 [7] "package:utils"     "package:datasets"  "package:methods"  
[10] "Autoloads"         "package:base"  


O ambiente corrente do R sempre será o ambiente ambiente global (.GlobalEnv). O ambiente de execução não aparece, porque ele é momentâneo. Então após buscar no ambiente de execução e não encontrar, é pelo caminho de busca que a função irá procurar pelos objetos inseridos no corpo da função. Ele só existe quando a função é chamada e não quando ela é definida, isto é,

 ``` r
# Funcao
fun <- function() x + 10
# Objeto 1
x <- 10
# Chamada1
fun()
```
[1] 20

 ``` r
# Objeto 2
x <- 20
# Chamada 2
fun()
```
[1] 30

Observe que após ser criada a função fun(), o nome x se associou ao objeto 10. Posteriormente, fun() foi chamada e o resultado foi 20. Contudo, o nome x se associou a outro objeto 20, e após a segunda chamada da função fun(), o resultado foi 30, porque a função procura os valores quando ela é executada, e não quando é criada, é a característica de **pesquisa dinâmica** do escopo léxico.

Uma outra situação é a seguinte,

 ``` r
# Objeto
n <- 1
# Funcao
fun <- function() {
  n <- n + 1
  n
}
# Chamada 1
fun()
```
[1] 2

 ``` r
# Objeto
n <- 1
# Funcao
fun <- function() {
  n <- n + 1
  n
}
# Chamada 1
fun()
```
[1] 2


 ``` r
# Chamada 2
fun()
```
[1] 2

Nessas linhas de comando, poderíamos pensar que após ter executado a primeira chamada, que retornou valor 2, a segunda chamada retornaria o valor 3, como ocorre com as variáveis estáticas na linguagem C. Aqui nesse caso, resultado independente do número de chamadas será sempre o mesmo, porque uma outra característica do escopo léxico no R é o **novo começo**, porque a cada vez que a função é executada um novo ambiente de execução é criado, e portanto, cada execução dos comandos de atribuição e expressão são executados de forma independentes nas chamadas de funções.

Algo que não havíamos falado anteriormente, é que a função function() permite que não seja definido argumentos, devido a flexibilidade do escopo léxico das funções em R. É essa característica que faz com que os comandos no corpo das funções encontrem os objetos que não estão definidos na própria função. Mais detalhes, será visto no módulo Programação em R (Nível Intermediário).
