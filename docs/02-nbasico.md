---
output:
  pdf_document: default
  html_document: default
---

# (PART) Programação em R (Nível Básico) {-}







# Instalação do R e RStudio para o SO Windows

A linguagem *R* é o objetivo principal desse curso. Assim, faremos inicialmente a sua instalação, uma vez que o *RStudio* é apenas uma GUI, e sem o *R*, não há sentido instalá-lo.

Dessa forma, seguem os passos para a instalação:

- Instalação do *R*: https://www.r-project.org

<!-- IMAGEM 01   -->
<div class="figure" style="text-align: center">
<img src="img/Instalacao_R_01.PNG" alt=" Primeiro passo para Instalação do R" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-1) Primeiro passo para Instalação do R</p>
</div>

<!-- IMAGEM 02   -->
<div class="figure" style="text-align: center">
<img src="img/Instalacao_R_02.PNG" alt="Segundo passo para Instalação do R" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-2)Segundo passo para Instalação do R</p>
</div>

<!-- IMAGEM 03   -->

<div class="figure" style="text-align: center">
<img src="img/Instalacao_R_03.PNG" alt="Terceiro passo para Instalação do R." width="100%" />
<p class="caption">(\#fig:unnamed-chunk-3)Terceiro passo para Instalação do R.</p>
</div>

- Instalação do *RStudio*: https://rstudio.com/products/rstudio/download/#download

<!-- IMAGEM 04   -->

<div class="figure" style="text-align: center">
<img src="img/Instalacao_R_Studio01.PNG" alt="Instalação do RStudio" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-4)Instalação do RStudio</p>
</div>

Justificamos a utilização do *RStudio* pela quantidade de recursos disponíveis e a diversidade de usuários *R*, que hoje o perfil não é apenas de um programador, mas de um usuário que necessita de uma ferramenta estatística para análise de seus dados. Dessa forma, até por questão de praticidade, e de uso pessoal, não deixaremos de repassar o entendimento sobre a linguagem *R* com o uso do *RStudio*.








## Como utilizar o R e o RStudio

A primeira ideia que temos sobre a linguagem *R* é a linha de comando, que é simbolizada pelo prompt de comando “>”. Este símbolo significa que o R está pronto para receber os comandos do usuário. O *prompt* de comando está localizado no console do *R*. Vejamos o console do *R* a seguir, que é o local que recebe as linhas de comando do usuário.



<div class="figure" style="text-align: center">
<img src="img/Console_do_R.PNG" alt="Console do R (Versão 4.0.3)" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-5)Console do R (Versão 4.0.3)</p>
</div>

O *R* ao ser iniciado, está pronto para receber as linhas de comando desejadas. Uma forma simples de armazernar os seus comandos é por meio de um *script*, isto é, um arquivo de texto com extensão .R. Para criar, basta ir em: Arquivo > Novo script.... Veremos muitas outras informações ao longo do curso.

<div class="figure" style="text-align: center">
<img src="img/Console_do_R_Comando.PNG" alt="Inserção de comandos no Console R" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-6)Inserção de comandos no Console R</p>
</div>


O *RStudio* se apresenta como uma interface para facilitar a utilização do *R*, tendo por padrão quatro quadrantes, demonstrado na Figura \@ref(fig:InterfaceRStudio)



<div class="figure" style="text-align: center">
<img src="img/Interface_RStudio.PNG" alt="Interface do RStudio (Versão 1.4.1103)" width="100%" />
<p class="caption">(\#fig:InterfaceRStudio)Interface do RStudio (Versão 1.4.1103)</p>
</div>



Muitas coisas na interface do *R* podem se tornar problemas para os usuários, uma vez que janelas gráficas, janelas de scripts, dentre outras, se sobrepõe. Uma vantagem no RStudio foi essa divisão de quadrantes, que torna muito mais organizado as atividades realizadas no *R*. De um modo geral, diremos que o: 

- **primeiro quadrante:** é responsável pela entrada de dados, comandos, isto é, o *input*. 
- **segundo quadrante:** é o console do R, representa tanto entrada quanto saída de informações (*input/output*).  
- **terceiro quadrante:** representa informações básicas como objetos no ambiente global, a memória de comandos na aba *History*, dentre outras, e também representa entrada e saída de informações (*input/output*). 
- **quarto quadrante:** por fim, é responsável pelas representaçõs gráficas, help dos pacotes, instalação de pacotes e renderização de páginas web.

Dependendo das atividades as abas podem aumentar.





## História do R

A linguagem *R* tem a sua primeira aparição científica publicada em 1996, com o artigo intitulado *R: A Language for Data Analysis and Graphics*, cujos os autores são os desenvolvedores da linguagem, George Ross Ihaka e Robert Clifford Gentleman.


<div class="figure" style="text-align: center">
<img src="img/Criadores_R.PNG" alt="Criadores do R." width="100%" />
<p class="caption">(\#fig:CriadoresR)Criadores do R.</p>
</div>


Durante a época em que estes professores trabalhavam na Universidade de Auckland, Nova Zelândia, desenvolvendo uma implementação alternativa da linguagem *S*, desenvolvida por John Chambers, que comercialmente era o *S-PLUS*, nasceu em 1991, o projeto da linguagem *R*, em que em 1993 o projeto é divulgado e em 1995 ocorre o primeiro lançamento oficial como software livre com a licença GNU. Devido a demanda de correções da linguagem estar acima da capacidade de atualização em tempo real, foi criado em 1997, um grupo central voluntário, responsável por essas atualizações, o conhecido *R Development Core Team*, que hoje está em 20 membros: Douglas Bates, John Chambers, Peter Delgaard, Robert Gentleman, Kurt Hornik, Ross Ihaka, Tomas kalibera, Michael Lawrence, Friedrich Leish, Uwe Ligges, Thomas Lumley, Martin Maechler, Martin Morgan, Paul Murrel, Martyn Plummer, Brian Ripley, Deepayan Sarkarm, Duncan Temple Lang, Luke Tierney e Simon Urbanek.

Por fim, o CRAN (*Comprehensive R Archive Network*) foi oficialmente anunciado em 23 de abril de 1997. O CRAN é um conjunto de sites (espelhos) que transportam material idêntico, com as contribuições do *R* de uma forma geral.

*R* é uma linguagem de programação e ambiente de software livre e código aberto (open source). Entendemos:

- *Software livre*: software que respeita a liberdade e sendo de comunidade dos usuários, isto é, os usuários possuem a liberdade de executar, copiar, distribuir, estudar, mudar, melhorar o software. Ainda reforça que um software é livre se os seus usuários possuem quatro liberdades:

    1. **Liberdade 0** - A liberdade de executar o programa como você desejar, para qualquer propósito;
    2. **Liberdade 1** - A liberdade de estudar como o programa funciona, e adaptá-la as suas necessidades;
    3. **Liberdade 2** - A liberdade de redistribuir cópias de modo que você possa ajudar outros;
    4. **Liberdade 3** - A liberdade de distribuir cópias de suas versões modificadas a outros;

Algo que deve estar claro é que um *software livre* não significa não comercial. Sem esse fim, o software livre não atingiria seus objetivos.

Agora perceba que, segundo Richard Stallman, a ideia de software livre faz campanha pela liberdade para os usuários da computação. Por outro lado, o código aberto valoriza principalmente a vantagem prática e não faz campanha por princípios.

- *Código aberto*: Para Richard Stallman código aberto apoia critérios um pouco mais flexíveis que os do software livre. Todos os códigos abertos de software livre lançados se qualificariam como código aberto. Quase todos os softwares de código aberto são softwares livres, mas há exceções, como algumas licenças de código aberto que são restritivas demais, de forma que elas não se qualificam como licenças livres. Nesse contexto, o autor cita muitas situações que diferenciam os dois termos. Vale a pena a leitura.

A linguagem *R* é uma combinação da linguagem *S* com a semântica de escopo léxico da linguagem *Scheme*. Dessa forma, a linguagem *R* se diferencia em dois aspectos principais:

- **Gerenciamento de memória**: usando as próprias palavras de Ross Ihaka, em *R*, alocamos uma quantidade fixa de memória na inicialização e a gerenciamos com um coletor de lixo dinâmico. Isso significa que há muito pouco crescimento de *heap* e, como resultado, há menos problemas de paginação do que os vistos em *S*.

- **Escopo**: na linguagem *R*, as funções acessam as variáveis criadas pelo o corpo da própria função, como também as variáveis contidas no ambiente que a função foi criada. No caso da linguagem *S*, isso não ocorre, assim, como por exemplo na linguagem *C*, em que as funções acessam apenas variáveis definidas globalmente.

Vejamos alguns exemplos para entendimento (Se você ainda não está ambientado ao *R*, estude esse módulo primeiro, e depois reflita sobre esses exemplos). Antes de executar as linhas de comando, instale o pacote lobstr como segue:




``` r
# Instale o pacote lobstr
install.packages("lobstr")

```

- Exemplo 1: As funções têm acesso ao escopo em que foram criadas.


```r
# Criando um nome "n" associado a um objeto 10 no escopo da funcao
n <- 10

# Criando um nome "funcao" associado a um objeto que é uma funcao
funcao <- function() {
  print(n)
}

# Imprimindo 'funcao'
funcao()
```

```
## [1] 10
```

- Exemplo 2: As variáveis criadas ou alteradas dentro de uma função, permanecem na função.

``` r
# Criando um nome "n" associado a um objeto 10 no escopo da funcao
n <- 10
lobstr::obj_addr(n) # Identificador do objeto

```

``` r
[1] "0x290f1900"

```



```r
# Criando um nome "funcao" associado a um objeto que é uma funcao
funcao <- function() {
  # Imprimindo n
  print(n)
  # Criando um nome "n" associado a um objeto 15 no corpo da funcao
  n <- 15
  # Imprimindo n
  print(n)
}
# Imprimindo 'funcao'
funcao()
```

```
## [1] 10
## [1] 15
```




```r
# Imprimindo 'n'. Retorna o objeto associado ao 'n' fora da função
n
```

```
## [1] 10
```


``` r
[1] "0x290f1900"

```

- Exemplo 3: As variáveis dentro de uma função permanecem nelas, exceto no caso em que a atribuição ao escopo seja explicitamente solicitada.


``` r
# Criando um nome "n" associado a um objeto 10 no escopo da funcao
n <- 10
lobstr::obj_addr(n) # Identificador do objeto

```

``` r
[1] "0x9f51a30"

```




```r
# Criando um nome "funcao" associado a um objeto que é uma funcao
funcao <- function() {
  # Imprimindo n
  print(n)
  # Criando um nome "n" associado a um objeto 15 no corpo da funcao
  n <<- 15
  # Imprimindo n
  print(n)
}
# Imprimindo 'funcao'
funcao()
```

```
## [1] 10
## [1] 15
```



```r
# Observe que depois de usar a superatribuicao ("<<-") dentro da funcao,
#o nome "n" passou a estar associado ao numero 15 e nao mais ao numero 10, observe
n
```

```
## [1] 15
```


``` r
lobstr::obj_addr(n) # Identificador do objeto

```

``` r
[1] "0x9f51950"

```


- Exemplo 4: Por fim, embora a linguagem R tenha um escopo padrão, chamado ambiente global, os escopos de funções podem ser alterados.




```r
# Criando um nome 'n' associado a um objeto 10 no escopo da funcao (ambiente global)
n <- 10
# Criando um nome 'funcao' associado a um objeto que é uma função criado no ambiete global
funcao <- function() {
  # Imprimindo n
  print(n)
}
# Imprimindo 'funcao' no ambiente global
funcao()
```

```
## [1] 10
```



```r
# Criando um novo ambiente
novo_ambiente <- new.env()
# Criando um nome "n" associado ao objeto 20 no ambiente  'novo_ambiente'
novo_ambiente$n <- 20
# Criando um objeto funcao no ambiente 'novo_ambiente'
environment(funcao) <- novo_ambiente
# Imprimindo 'funcao' no ambiente 'novo_ambiente'
funcao()
```

```
## [1] 20
```


Como a linguagem *S* é uma linguagem interpretada cuja base é a linguagem *FORTRAN*, a linguagem *R* também é uma linguagem interpretada e baseada além da linguagem *S*, tem como base as linguagens de baixo nível *C*, *FORTRAN* e a própria linguagem *R*.

Embora o *R* tenha uma interface baseada em linhas de comando, existem muitas interfaces gráficas ao usuário com destaque ao *RStudio*, criado por Joseph J. Allaire, Figura \@ref(fig:CriadorRStudio).

<div class="figure" style="text-align: center">
<img src="img/Criador_RStudio.PNG" alt="J. J. Allaire, o criador do RStudio" width="100%" />
<p class="caption">(\#fig:CriadorRStudio)J. J. Allaire, o criador do RStudio</p>
</div>


Essa interface tornou o *R* mais popular, pois além de produzir,hoje, pacotes de grande utilização como a família de pacotes *tidyverse*, *rmarkdown*, *shiny*, dentre outros, permite uma eficiente capacidade de trabalho de análise de utilização do R. Uma vez que o RStudio facilita a utilização de muitos recursos por meio de botões, como por exemplo, a criação de um pacote *R*. Há quem diga que para um iniciante em *R*, não seja recomendado utilizar o *RStudio* para o entendimento da linguagem. Cremos, que o problema não é a IDE utilizada, e sim, o caminho onde deseja chegar com a linguagem *R*.

No Brasil, o primeiro espelho do *CRAN* foi criado na UFPR, pelo grupo do Prof. Paulo Justiniano. Inclusive um dos primeiros materiais mais completos sobre a linguagem *R* produzidos no Brasil, foi dele, iniciado em 2005, intitulado "Introdução ao Ambiente Estatístico R". Vale a pena assistirmos do evento a palestra: *R Reflexões: um pouco de história e experiências com o R*, proferida pelo Prof. Paulo Justiniano Ribeiro Júnior, no *R Day - Encontro nacional de usuários do R*, ocorrido em 2018 em Curitiba/UFPR, do qual o vídeo está disponível no Canal (Youtube) LEG UFPR.

Para quem não sabe, o Prof. Paulo Justiniano (Figura \@ref(fig:RDay)) e sua equipe trouxeram o primeiro espelho do *R* para o Brasil e foi o desenvolvedor de um dos 100 primeiros pacotes submetidos ao *CRAN*. Devido a sua ida para Lancaster/Inglaterra para fazer o doutorado, em 1997, se deparou com o início dos estudos sobre o *R* fora do país. Isso porque havia uma necessidade muito grande de um programa para ser utilizado nas plataforma UNIX. Nesse momento a linguagem *S* estava sendo uma saída para isso, porém, o uso de memória que a linguagem consumia nos computadores, na criação das rotinas, era muito grande (Claro que grande para aquela época!). Não satisfeito, ao voltar para o Brasil, em 2002, se depara com alguns usuários da linguagem *S*, porém, com a mudança de cultura na utilização da linguagem *R*, passou a desenvolver materiais didáticos da linguagem para as disciplinas do departamento de Estatística (UFPR).



<div class="figure" style="text-align: center">
<img src="img/RDay.PNG" alt="Foto de divulgação de Paulo Justiniano no R Day." width="100%" />
<p class="caption">(\#fig:RDay)Foto de divulgação de Paulo Justiniano no R Day.</p>
</div>








<!--
======  03- nbasico.Rmd=========
================================
# Introdução ao R

## Como o R trabalha

## Comandos no R e Ambiente Global

### Console e *Prompt* de comando

### Comandos elementares

### Execução de comandos

### Chamada e correção de comandos anteriores

### Ambiente Global (área de trabalho ou *Workspace*)

## Arquivos `.RData` e `.Rhistory`

## Criando e salvando um *script*



# Objetos

## Atributos

### Atributos intrínsecos

## Coersão

## Tipo de objetos

### Vetores

#### Vetores escalares

#### Vetores longos

#### Manipulando vetores

### Matrizes bidimensionais

### Matrizes multidimensionais

### Listas

### Quadro de dados

### Funções

#### Estruturas de controle

#### Como criar funções

#### Escopo léxico



# Importando dados

## Preparação dos dados

## Importando dados




# Boas práticas de como escrever um código

## Nomes de arquivos

## Comentar as linahs de comando

## Nome de objetos

### Sintaxe





# Pacotes

## Estrutura básica de um pacote

## Instalação de um pacote

## Objetivos de um pacote

## Utilizando funções de um pacote

## Carregando e anexando um pacote

## *NAMESPACE* de um pacote

## Usando os operadores `::` e `:::`




# Ambientes e caminho de busca

## A superatribuição




# Interfaces com outras linguagens



# Considerações e preparação para Programação em R (Nível Intermediário)

-->










