# Objetos

Definimos um objeto como uma entidade no ambiente R com características internas contendo informações necessárias para interpretar sua estrutura e conteúdo. Essas características são chamadas de **atributos**. Vamos entender o termo estrutura como a disposição de como está o seu conteúdo. Por exemplo, a estrutura de um objeto mais simples no R é um **vetor atômico**, pois os elementos contidos nele, apresenta o mesmo **modo**, um tipo de atributo. Falaremos nisso, mais à frente. De forma didática, adaptaremos a representação dos objetos no formato de diagrama. Vejamos a seguinte linha de comando:



```r
> x <- 10
```

Todo mundo que tem uma certa noção sobre a linguagem **R** afirmaria: “criei um objeto x que recebe o valor 10”. Para Wickham (2019) essa afirmação é imprecisa e pode levar um entendimento equivocado sobre o que acontece de fato. Para o mesmo autor, o correto é afirmar que o objeto 10 está se ligando a um nome. E de fato, o objeto não tem um nome, mas o nome tem um objeto. O símbolo que associa um objeto a um nome é o de atribuição, <-, isto é, a junção do símbolo desigualdade menor e o símbolo de menos. Para ver qual objeto associado ao nome, o usuário precisa apenas digitar o nome no console e apertar a tecla *ENTER*.


Representaremos em termos de diagrama, um nome se ligando a um objeto, na Figura \@ref(fig:objx).


```r
knitr::include_graphics("img/Ligacao_Objeto.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Ligacao_Objeto.PNG" alt="Dizemos que o nome `'x'` se liga ao objeto do tipo (estrutura) vetor." width="420" />
<p class="caption">(\#fig:objx)Dizemos que o nome `'x'` se liga ao objeto do tipo (estrutura) vetor.</p>
</div>

O identificador na memória ativa desse objeto pode ser obtida por:


```r
> lobstr::obj_addr(x)
> # [1] "0xf8a104fc20"
```


O diagrama explica que o nome criado x se associou com um objeto do **tipo** (estrutura) vetor (vector) e **modo** numérico (numeric)1 , cuja identificação na memória ativa do seu computador foi <0xf8a104fc20>. É claro que para cada vez que o usuário abri o ambiente **R** e executar novamente esse comando, ou repeti o comando, esse identificador irá alterar.

Essa outra representação, Código R ??, ficará mais claro para a afirmação feita anteriormente, no segundo diagrama, Figura \@ref(fig:objxy), que representa a ligação do nome y ao mesmo objeto. Os termos nos diagramas, serão usados de acordo com a sintaxe da linguagem com os termos em inglês para melhor compreensão e fixação dos termos utilizados em R , uma vez que os termos na linguagem são baseados nesse idioma.


```r
> y <- x
> lobstr::obj_addr(y)
> # [1] "0xf8a104fc20"
```

Observem que não houve a criação de um outro objeto, mas apenas a ligação de mais um nome ao objeto existente, pois o identificador na memória ativa para o objeto não alterou, é o mesmo. Logo, não temos um outro objeto, mais dois nomes que se ligam ao mesmo objeto.


```r
knitr::include_graphics("img/Ligacao_Objeto2.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Ligacao_Objeto2.PNG" alt="Dizemos que o nome `'x'` e '`y`' se ligam ao objeto do tipo (estrutura) vetor." width="434" />
<p class="caption">(\#fig:objxy)Dizemos que o nome `'x'` e '`y`' se ligam ao objeto do tipo (estrutura) vetor.</p>
</div>


Mais especificamente, acrescentamos um outro diagrama, Figura \@ref(fig:objxyglobalenv), mostrando a representação do ambiente global (.GlobalEnv, nome associado ao objeto que representa o ambiente global).


```r
knitr::include_graphics("img/Objeto_Ambiente_Global.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Objeto_Ambiente_Global.PNG" alt="Dizemos que o nome `'x'` e `'y'` se ligam ao objeto do tipo (estrutura) vetor e essa ligação fica armazenada no ambiente global." width="80%" />
<p class="caption">(\#fig:objxyglobalenv)Dizemos que o nome `'x'` e `'y'` se ligam ao objeto do tipo (estrutura) vetor e essa ligação fica armazenada no ambiente global.</p>
</div>

De todo modo, deixaremos para o Volume II, uma abordagem mais profunda sobre o assunto. O símbolo de atribuição poderá ser representado na direção da esquerda para à direita ou vice-versa, isto é,


```r
> x <- 10
> 10 -> x
```

Essas duas linhas de comando anteriores podem ter passado despercebidas pelo leitor em uma situação. Se na segunda linha tivéssemos alterado o valor do objeto de 10 para 30, por exemplo, a associação de x seria ao objeto 30. Isso significa que se o nome já existe, ele será apagado da memória ativa do computador e associado ao novo objeto 2. Veja,


```r
> lobstr::obj_addr(x)
> # [1] "0xf8a104fc20"
> x <- 30
> lobstr::obj_addr(x)
> # [1] "0x42db6dbb50"
```
Uma outra forma menos convencional é usar a função assign(), isto é,


```r
assign("m", 15)
m
```

```
## [1] 15
```

Ao invés do símbolo de atribuição, muitos usuários utilizam o símbolo da igualdade “=” para associarmos nomes aos objetos, que o ambiente **R** compreenderá. Contudo, discutiremos mas adiante, Capítulo ??, que o uso da igualdade deverá em **R** ser usado apenas para a utilização em argumentos de uma função.

Quando desejamos executar mais de uma linha de comando por vez, separamos estas pelo símbolo “;”, isto é,


```r
x <- 10; w <- 15; x; w
```

```
## [1] 10
```

```
## [1] 15
```

Neste caso, executamos quatro comandos em uma linha. Associamos dois nomes a dois objetos e imprimimos os seus valores.

Por questão de comodidade, iremos a partir de agora, sempre nos referir a um objeto pelo nome associado a ele, para não está sempre se expressando como “um nome associado a um objeto”. Mas que fique claro a discussão realizada anteriormente sobre esses conceitos.

Nesse momento, nos limitaremos a falar sobre objetos que armazenam dados, do tipo caracteres,
números e operadores lógicos (TRUE/FALSE).

## Atributos

Todos os objetos, terão pelo menos dois tipos de atributos, chamados de atributos intrínsecos. Os demais atributos, quando existem, podem ser verificados pela função attributes(). A ideia dos atributos pode ser pensada como metadados, isto é, um conjunto de informações que caracterizam o objeto.

Diremos também que todos os objetos **R** tem uma classe, e por meio dessas classes, determinadas funções podem ter comportamento diferente a objetos com classes diferentes. Agora, devemos deixar claro essa informação, apesar do R seguir o princípio do objeto, nem tudo é orientado a objetos, como por exemplo, observamos na linguagens C++ e Java. Deixemos esse tópico para discorrer no Volume II.

A forma de se verificar a classe de um objeto é pela função class(). Contudo, os objetos internos do **R** (base), quando solicitado sua classe pela função class(), acabam retornando, algumas vezes, resultados equivocados. Uma alternativa é utilizar a função sloop::s3_class() do pacote **sloop**.Isso também será discutido no Volume II.

Devemos nos atentar a uma questão: **existe um atributo também chamado classe** (class), e nem todos os objetos necessariamente tem esse atributo, apenas aqueles orientados a objetos, como é o caso do objeto com atributo classe. Por exemplo, é devido a classe factor no objeto criado pela função factor() que apesar do seu resultado ser numérico, este não se comporta como numérico. Isto significa que o atributo classe muda o comportamento de como funções veem esse objeto. Entretanto, mesmo os objetos que não apresentam esse atributo, quando pedimos pela chamada class() desse referido objeto, haverá o retorno do que chamamos de **classe implícita**, que nada mais é do que a tipagem do objeto baseado no atributo modo (mode() ou typeof()). A Classe implícita não é definida pelo atributo class, mas pela tipagem do objeto. Isso também será abordado no Volume II.

Para verificarmos se tal objeto tem o atributo class, usamos a função attributes(). Quando este atributo existe, ele é coincidente com o resultado obtido também pela função class().

O tipo da classe implícita pode ser *numeric*, *logical*, *character*, *list*, *matrix*, *array*. Outros objetos apresentam classes definidas pelo atributo class, como factor, data.frame, dentre outros.

Para remover o efeito do atributo class, usamos a função unclass() para tal.

Por exemplo, quando criamos um objeto da classe data.frame, vejamos o que acontece quando removemos esse atributo no Código R 5.2.


```r
# Criamos um objeto de classe 'data.frame'
dados <- data.frame(a = 1:3, b = LETTERS[1:3])
# Imprimindo na tela
dados
```

```
##   a b
## 1 1 A
## 2 2 B
## 3 3 C
```

```r
# Verificando sua classe
class(dados)
```

```
## [1] "data.frame"
```

```r
# Verificando o efeito do objeto 'dados',
# sem o efeito da classe
dados2 <- unclass(dados); dados2
```

```
## $a
## [1] 1 2 3
## 
## $b
## [1] "A" "B" "C"
## 
## attr(,"row.names")
## [1] 1 2 3
```

```r
# Qual a classe desse objeto sem o efeito da
# classe 'data.frame'
class(dados2)
```

```
## [1] "list"
```

Observe que sem o atributo *class= 'data.frame'*, o objeto tem classe list. Isto significa que, o objeto tem uma estrutura em forma de list, mas se comporta como um *data.frame*, que se apresenta como mostrado anteriormente. 

Veremos no Volume II como criar atributos, classes, e mostrar que não conseguiremos mostrar todos os tipos de classes, pois a todo momento se cria classes em objetos R no desenvolvimento de pacotes.



### Atributos intrínsecos

Todos os objetos tem dois atributos intrínsecos: o **modo** e **comprimento**. O modo representa a natureza dos elementos objetos. Para o caso dos vetores atômicos, o **modo** dos vetores podem ser cinco, numérico (*numeric*), lógico (*logic*), caractere 3 (*character*), complexo (*complex*) ou bruto (*raw*). Este último, não daremos evidência para esse momento, lembrando que essa tipagem está relacionada alinguagem S. O **comprimento** mede a quantidade de elementos no objeto. Para determinarmos o **modo** de um objeto, usamos a função *mode()*. Vejamos alguns exemplos pelo Código R 5.3.


```r
> # Objeto modo caractere
> x <- "Ben"; mode(x)
```

```
## [1] "character"
```

```r
> # Objeto modo numerico
> y <- 10L; mode(y)
```

```
## [1] "numeric"
```

```r
> # Objeto modo numerico
> y2 <- 10; mode(y2)
```

```
## [1] "numeric"
```

```r
> # Objeto modo logico
> z <- TRUE; mode(z)
```

```
## [1] "logical"
```

```r
> # Objeto modo complexo
> w <- 1i; mode(w)
```

```
## [1] "complex"
```

Contudo, essa função *mode()* se baseou nos atributos baseados na linguagem S. Temos uma outra função para verificarmos o **modo** do objeto que é por typeof(). O atributo **modo** retornado de um objeto para esta última função, está relacionado a tipagem da linguagem C, Código R 5.4, uma vez que boa parte das rotinas no **R** está nessa linguagem, principalmente as funções do pacote **base**. Existem 24 tipos que serão detalhados no Volume II.



```r
> # Objeto modo caractere
> x <- "Ben"; typeof(x)
```

```
## [1] "character"
```

```r
> # Objeto modo numerico (Inteiro)
> y <- 10L; typeof(y) 
```

```
## [1] "integer"
```

```r
> # Objeto modo numerico (Real)
> y2 <- 10; typeof(y2)
```

```
## [1] "double"
```

```r
> # Objeto modo logico
> z <- TRUE; typeof(z)
```

```
## [1] "logical"
```

```r
> # Objeto modo complexo
> w <- 1i; typeof(w)
```

```
## [1] "complex"
```
Observamos que apesar de alguns vetores serem vazios, estes ainda tem um modo, observe nas seguintes linhas de comando, no Código R 5.5.



```r
> # Vetor numérico vazio de comprimento 1
> numeric(0)
```

```
## numeric(0)
```

```r
> # Verificando o seu modo
> mode(numeric(0))
```

```
## [1] "numeric"
```

```r
> typeof(numeric(0))
```

```
## [1] "double"
```

```r
> # Vetor caractere vazio de comprimento 1
> character(0)
```

```
## character(0)
```

```r
> # Verificando o seu modo
> mode(character(0))
```

```
## [1] "character"
```

```r
> typeof(character(0))
```

```
## [1] "character"
```

A diferença existente nos objetos $y$ e $y^2$ para as funções *mode()* e *typeof()* se referem apenas
como o **R** armazena essas informações na memória do computador. Podemos perguntar ao **R** se
dois números são iguais, assim:


```r
> # 10 eh igual a 10L ?
> 10 == 10L
```

```
## [1] TRUE
```

Veja que o resultado é *TRUE*, isto é, sim eles são iguais. Agora, veja a próxima linha de comando:


```r
> # 10 eh identico a 10L ?
> identical(10, 10L)
```

```
## [1] FALSE
```

O retorno agora foi *FALSE*, que significa que o armazenamento dessas informações não são iguais. Posteriormente, entenderemos no que isso reflete no código do usuário, uma vez que um código escrito pode apresentar uma perda de desempenho simplesmente pela não necessidade de determinados objetos serem copiados.

O termo *double* retornado pela função *typeof()* significa dupla precisão na linguagem de programação, que acaba tenho uma exigência de mais memória do que o objeto de modo integer. Esses termos são utilizados na linguagem C. Já a linguagem S não os diferencia, utiliza tudo como *numeric*.

Aqui vale um destaque para o termo numérico, que no **R** podem ter três significados:

- Pode significar um número real, isto é, para a computação um número de dupla precisão (*numeric* e *double* seriam iguais nesse aspecto), Código R 5.6;


```r
> # Criacao de dois objetos de modo numerico
> a <- numeric(1); b <- double(1)
> # Verificando o modo
> mode(a); mode(b)
```

```
## [1] "numeric"
```

```
## [1] "numeric"
```

```r
> # Verificando se 'a' e 'b' sao identificos
> identical(a, b)
```

```
## [1] TRUE
```

- nos sistemas S3 e S4 (orientação a objetos), o termo numérico é usado como atalho para o modo integer ou double. Esse ponto veremos Volume II. Contudo, vejamos o Código R 5.7;


```r
> sloop::s3_class(1)
```

```
## [1] "double"  "numeric"
```

```r
> sloop::s3_class(1L)
```

```
## [1] "integer" "numeric"
```

- Pode ser utilizado (*is.numeric()*) para verificar se determinados objetos tem o modo numé- rico. Por exemplo, temos um objeto de classe factor que é importante para a área da estatística experimental, representando os níveis de um fator em um experimento. Os elementos desse objeto pode ser número ou caracteres, mas serão representados como sempre por números. Entretanto, não se comportam como numérico, Código R 5.8;


```r
> # Criando um objeto de atributo classe 'factor':
> fator <- factor("a"); fator
```

```
## [1] a
## Levels: a
```

```r
> # O atributo classe muda a forma dos elementos. Veja quando retiramos o atributo 
> # classe 'factor', o objeto retorna o valor 1
> unclass(fator)
```

```
## [1] 1
## attr(,"levels")
## [1] "a"
```

```r
> # Para confirmar essa afirmacao anterior, vejamos o modo
> mode(fator)
```

```
## [1] "numeric"
```

```r
> typeof(fator)
```

```
## [1] "integer"
```

```r
> # Apesar do resultado retornar 1, veja que ele nao se comporta como numerico
> is.numeric(fator)
```

```
## [1] FALSE
```

```r
> is.integer(fator)
```

```
## [1] FALSE
```

A Tabela 5.1 a seguir, mostra o retorno dos seis principais modos de um objeto do tipo (estrutura) de vetores atômicos (Os modos apresentados baseiam-se apenas quanto a característica dos dados do objeto. É claro que um objeto não armazena apenas dados. Existem outras naturezas, que serão omitidas nesse momento).

typeof   | mode
:---------: | :------:
logical | logical
integer | numeric
double | numeric
complex | complex
character | character
raw | raw


O **comprimento** do objeto é informado pela função lenght(), do qual a representação em diagrama informa esse atributo. Vejamos as linhas de comando no Código R 5.9.


```r
> # Vetor de comprimento 5
> v1 <- 1:5
> # Vetor de comprimento 3
> v2 <- c("Ben", "Maria", "Lana")
> # Vetor de comprimento quatro
> v3 <- c(TRUE, FALSE, TRUE, TRUE)
> # Vejamos o comprimento dos vetores
> length(v1)
```

```
## [1] 5
```

```r
> length(v2)
```

```
## [1] 3
```

```r
> length(v3)
```

```
## [1] 4
```

Um diagrama apresentando esses três objetos no ambiente global, pode ser apresentado na Figura \@ref(fig:v1v2v3). Observe que acrescentamos agora o **comprimento** dos objetos no diagrama entre colchetes, ao lado do atributo **modo**.


```r
knitr::include_graphics("img/Diagrama_Objetos.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Diagrama_Objetos.PNG" alt="Objetos `v1`, `v2` e `v3`." width="442" />
<p class="caption">(\#fig:v1v2v3)Objetos `v1`, `v2` e `v3`.</p>
</div>


Um resumo as funções mensionadas podem ser refletidas com as seguintes indagações:

- base::class() e loop::c3_class(): Qual o tipo de objeto?
- base::mode(): Qual o tipo de dados baseados na linguagem S?
- base::typeof(): Qual o tipo de dados baseados na linguagem C?
- base::attributes(): O objeto tem atributos?
- base::length(): Qual o comprimento do objeto?

Usamos essa sintaxe pacote::nome_função() para entedermos qual o pacote da função que utilizamos. Contudo, essa forma tem uma importância no sentido de acesso a funções em um pacote sem necessitar anexá-lo no caminho de busca. Assunto abordado mais a frente.


## Coerção

Como falamos anteriormente, os vetores atômicos armazenam um conjunto de elementos de mesmo modo. A coerção é a forma como o **R** coage o **modo** dos objetos. Por exemplo, se um elemento de **modo** caractere estiver em um vetor, todos os demais elementos serão convertidos para esse modo. Vejamos a linha de comando, a seguir.


```r
> # Criando um objeto x e imprimindo o seu resultado
> x <- c("Nome", 3, 4, 5);x
```

```
## [1] "Nome" "3"    "4"    "5"
```

Observe que todos os elementos ganharam aspas, isto é, se tornaram um caractere ou uma cadeia de caracteres. A coersão entre vetores de modo numeric, character e logical será sempre como verificado pela Figura \@ref(fig:CoersaoVetores).

<img src="img/Coersao_Vetores.PNG" width="100%" style="display: block; margin: auto;" />

No caso dos vetores lógicos, todo TRUE se converterá em 1, e FALSE em 0. Porém, os modos dos vetores podem ser coagidos pelo usuário, usando as funções do tipo as.<modo ou tipo>() com prefixo as., isto é, se desejarmos que um objeto meu_objeto tenha o modo “character,” basta usar as.character(meu_objeto). Para desejar saber se um objeto é de um determinado modo, usamos as funções do tipo is.<modo ou tipo>(), com o prefixo "is.". Vejamos o Código R 5.10, para elucidar o que discutimos anteriormente.


```r
> # Objeto de modo numerico
> minha_idade <- 35
> mode(minha_idade)
```

```
## [1] "numeric"
```

```r
> # Coersão do objeto para modo caractere (`string`)
> minha_idade <- as.character(minha_idade)
> mode(minha_idade)
```

```
## [1] "character"
```

```r
> # Verificando se o objeto tem modo 'character'
> is.character(minha_idade)
```

```
## [1] TRUE
```





## Tipo de objetos

Por fim, pretendemos falar sobre os principais tipos de objetos. O **tipo** vamos entender como a estrutura de como os dados estão organizados em um objeto, relacionados aos seus atributos. Falamos anteriormente sobre a estrutura mais simples, que é o vetor atômico. Mas entendemos que um vetor em **R** podem ser considerados: atômicos ou listas. Podemos então subdividi-los em:


- Vetores atômicos:
  - Lógicos, Numéricos e Caracteres;
  - Matrizes unidimensionais (Matrix) e multidimensionais (Arrays);

- Vetores em listas:
  - Listas (Lists);
  - Quadro de dados (Data frames);

Existem outros, mas para esse módulo, exploraremos estes nas seções seguintes. As funções para as coerções realizadas pelos usuários, são similares as funções de coerção para modo, isto é, usar as funções prefixadas as.*<modo>*.

Daremos uma visão geral dos objetos apresentados até o momento na Tabela 5.2.



### Vetores

Podemos dizer que existem três tipos principais de vetores atômicos: 

- Numéricos (numeric):
  - Inteiro (integer);
  - Real (double);
- Lógico (logical);
- Caractere (character)

Existem dois tipos raros que são os complexos (complex) e brutos (raw), que falaremos no Volume
II.

#### Vetores escalares ou constantes
O menor comprimento de um vetor é de tamanho um, conhecido também como um escalar. Porém, para o **R** tudo é observado como um vetor. As sintaxes para os tipos especiais são:

- os vetores lógicos assumem valores: TRUE ou FALSE, ou abreviados, T ou F, respectivamente. Existem valores especiais devido a precisão de operações na programação, que são os chamados pontos flutuantes. Nesse caso temos: Inf, -Inf e NaN, quando o resultados tende a $\infty$, $-\infty$, sem número, respectivamente;

- os vetores numéricos do tipo ‘double‘ podem ser representados de forma decima (0.123), científica (1.23e5), ou hexadecimal (3E0A);

- os vetores numéricos do tipo integer são representados pela letra L ao final do número inteiro,
isto é, 1L, 1.23e5L, etc.;

- os caracteres são representados pelas palavras, letras, números ou caracteres especiais entre aspas, isto é, ’Ben’, ’a’. Pode ser utilizado também aspa simples, ’Ben’, ’a’, etc.



| Objeto | Classe | Modo | São possíveis vários modos no mesmo objeto?|
|:------:|:------:|:----:|:------------------------------------------:|
|Vetor   | `numeric` (`integer` ou `double`), `character`, `complex`, `logical`, `raw` | `numeric` (`integer` ou `double`), `character`, `complex`, `logical`, `raw` | Não |
|Matriz | `matrix` | `numeric` (`integer` ou `double`), `character`, `complex`, `logical`, `raw` | Não |
| Array |`array` | `numeric` (`integer` ou `double`), `character`, `complex`, `logical`, `raw` | Não |
| lista | `list` | `numeric` (`integer` ou `double`), `character`, `complex`, `logical`, `raw`, `expression`, `function` | Sim |
| Quadro de dados | `data.frame` |`numeric` (`integer` ou `double`), `character`, `complex`, `logical`, `raw` | Sim |


$$CODIGO-1$$
$$CODIGO-2$$
$$CODIGO-3$$

$$CODIGO-4$$

$$CODIGO-5$$

#### Vetores longos

Os vetores longos podem ser criados pela função c(), a inicial da palavra concatenar (do inglês, concatenate), que significa agrupar. Vejamos um primeiro exemplo no Código R 5.16.


```r
> # Criando um vetor 'double'
> vetor.num <- c(1, 2, 3, 4, 5); vetor.num
```

```
## [1] 1 2 3 4 5
```

```r
> typeof(vetor.num)
```

```
## [1] "double"
```

Uma coisa interessante é que por padrão, a função c() sempre cria um vetor de modo double, a
menos que o usuário determine que estes elementos sejam inteiros, como pode ser visto no Código
R 5.17.


```r
> # Criando um vetor 'integer'
> vetor.num2 <- c(1L, 2L, 3L, 4L, 5L); vetor.num; typeof(vetor.num2)
```

```
## [1] 1 2 3 4 5
```

```
## [1] "integer"
```

Uma forma mais eficiente para criarmos um vetor com elementos de sequências regulares, é por meio da função primitiva (:), isto é, <menor valor da sequência>:<maior valor da sequência>, isto é,



```r
> # Criando uma sequência de 1 a 5
> vetor.num3 <- 1:5; vetor.num3; typeof(vetor.num3)
```

```
## [1] 1 2 3 4 5
```

```
## [1] "integer"
```
Veremos mais a frente outras funções para construir sequências regulares. Se verificarmos os três objetos, veremos que todos eles são iguais:


```r
> vetor.num == vetor.num2
```

```
## [1] TRUE TRUE TRUE TRUE TRUE
```

```r
> vetor.num == vetor.num3
```

```
## [1] TRUE TRUE TRUE TRUE TRUE
```

```r
> vetor.num2 == vetor.num3
```

```
## [1] TRUE TRUE TRUE TRUE TRUE
```

O que vai diferenciá-los é a forma de armazená-lo (double ou integer), e por consequência, o espaço na memória ativa, como podemos observar no Código R 5.18.


```r
> # Objetos:
> vetor.num <- c(1, 2, 3, 4, 5)
> vetor.num2 <- c(1L, 2L, 3L, 4L, 5L)
> vetor.num3 <- 1:5
> # Memoria:
> lobstr::obj_size(vetor.num)
```

```
## 96 B
```

```r
> lobstr::obj_size(vetor.num2)
```

```
## 80 B
```

```r
> lobstr::obj_size(vetor.num3)
```

```
## 680 B
```



O que podemos observar é que o vetor de modo double precisa de mais memória para armazenar os valores do que o objeto de modo integer. O último objeto, gerado pela chamada ‘:‘(), aparentemente ocupa mais memória. Porém, essa função apresenta um recurso interessante apresentado nas versões posteriores **R** (3.5.0), que é chamado de **abreviação alternativa**. Esse recurso faz com que a sequência de números não seja armazenada completamente, apenas os extremos. Isso significa que para qualquer tamanho de sequência, a ocupação de memória do objeto será sempre a mesma. Lembrando que essa sequência sempre terá o modo double na tipagem C. Outras formas de criar
sequências de números é usando as funções *rep()*, *rep_len()* (mais rápido), *seq()*, *seq_along()* (mais rápido) e *seq_len()* (mais rápido), *sequence()*, *replicate()*, *gl()*, e que pode ser observado no Código R 5.19.


```r
> # Repete o numero 2 tres vezes
> rep(x = 2, times = 3)
```

```
## [1] 2 2 2
```

```r
> # Repete o vetor 1:3 tres vezes
> rep(x = 1:3, times = 3)
```

```
## [1] 1 2 3 1 2 3 1 2 3
```

```r
> # Repete cada numero do vetor, tres vezes
> rep(x = 1:3, each = 3)
```

```
## [1] 1 1 1 2 2 2 3 3 3
```

```r
> # Repete cada numero do vetor duas vezes,
> # porem, o comprimento dessa sequencia esta
> # limitado a 4
> rep(1:3, each = 2, length.out = 4)
```

```
## [1] 1 1 2 2
```

```r
> # O vetor eh repetido ate obter uma
> # sequencia de tamanho 7
> rep(x = 1:3, length.out = 7)
```

```
## [1] 1 2 3 1 2 3 1
```

```r
> # (Versao mais rapida de rep) O vetor eh repetido ate obter uma
> # sequencia de tamanho 15
> rep_len(x = 1:10, length.out = 15)
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10  1  2  3  4  5
```


```r
> # Sequencia criada de 1 a 2, espacada em 0.1
> seq(from = 1, to = 2, by = 0.1)
```

```
##  [1] 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0
```

```r
> # Sequencia criada de 1 a 10, espacada em 1
> seq(from = 1, to = 10, by = 1)
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10
```

```r
> # Sequencia criada de 1 a 10 de forma equisespacada
> # de comprimento 20
> seq(from = 1, to = 10, length.out = 20)
```

```
##  [1]  1.000000  1.473684  1.947368  2.421053  2.894737  3.368421  3.842105
##  [8]  4.315789  4.789474  5.263158  5.736842  6.210526  6.684211  7.157895
## [15]  7.631579  8.105263  8.578947  9.052632  9.526316 10.000000
```

```r
> # Eh o mesmo que 1:length(y)
> y <- rnorm(10)
> seq(along.with = y)
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10
```

```r
> # Sequencia de 1 a 20
> seq(20)
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
```

```r
> # Sequencia criada de 10 a 100 de mesmo comprimento
> # de x
> x <- 1:10
> seq(from = 10, to = 100, along.with = x)
```

```
##  [1]  10  20  30  40  50  60  70  80  90 100
```

```r
> # (Versao mais rapida para seq) Eh o mesmo que
> # 1:lenght(w)
> w <- c(4, 3, 6, 9)
> seq_along(w)
```

```
## [1] 1 2 3 4
```

```r
> # (Versao mais rapida para seq) Eh o mesmo que 1:4
> seq_len(4)
```

```
## [1] 1 2 3 4
```

Dessa forma, poderemos ter com o último objeto (vetor.num3) uma economia de memória, dependendo do tamanho do seu vetor, quando se compara com as outras opções, isto é,


```r
> # Tamanho de memoria dos objetos
> lobstr::obj_size(1:10)
```

```
## 680 B
```

```r
> lobstr::obj_size(1:10000)
```

```
## 680 B
```

```r
> lobstr::obj_size(1:1000000)
```

```
## 680 B
```

```r
> lobstr::obj_size(c(1:10))
```

```
## 96 B
```

```r
> lobstr::obj_size(c(1:10000))
```

```
## 40,048 B
```

```r
> lobstr::obj_size(c(1:1000000))
```

```
## 4,000,048 B
```


#### Manipulando vetores

Quando algum elemento de um vetor não está disponível, representamos pela constante lógica NA, que pode ser coagida para qualquer outro modo de vetor, exceto para raw. Podemos ter constantes lógicas NA específicas para modos específicos: NA_integer_, NA_real_ (o equivalente para o modo double), NA_complex_ e NA_character_. Entretando, dependendo de onde o NA é inserido, o atributo modo no objeto já converte para NA específico de acordo com o seu atributo modo. Essa constante contido no vetor não altera o modo do vetor, isto é,


```r
> typeof(c(1, 2, 3, NA))
```

```
## [1] "double"
```

```r
> typeof(c(1, 2, 3, NA))
```

```
## [1] "double"
```

```r
> typeof(c("c", "b", "a", NA))
```

```
## [1] "character"
```
Podemos criar vetores atômicos iniciais sem nenhuma elemento, por meio das funções numeric(0),
character(0) e logical(0), isto é,


```r
> # Vetor numerico de comprimento 0
> v1 <- numeric(0); length(v1)
```

```
## [1] 0
```

```r
> v2 <- character(0); length(v2)
```

```
## [1] 0
```

```r
> v3 <- logical(0); length(v2)
```

```
## [1] 0
```

### Matrizes bidimensionais

### Matrizes multidimensionais

### Listas

### Quadro de dados

### Funções

#### Estruturas de controle

#### Como criar funções

#### Escopo léxico
