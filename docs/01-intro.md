

# Entendendo a coleção *Estudando o ambiente R *

A coleção *Estudando o ambiente R* não tem como objetivo principal ensinar análise de dados, mas proporcionar ao leitor um conhecimento sobre a linguagem [R](http://r-project.org/){target='_blank'}, de modo a usufruir de todos os recursos que o ambiente proporciona. Pressupomos também, que na leitura do livro haja um conhecimento básico sobre linguagem de programação.

::: {.rmdimportant}

:::: {style="display: flex;"}

::: {}

![](stop.png){width=3cm, height=3cm}

:::

::: {}

**Linguagem [R](http://r-project.org/){target='_blank'}**



O [R](http://r-project.org/){target='_blank'} é um ambiente de *software* livre e código aberto, com recursos gráficos, cujo objetivo se inicia pela análise e apresentação de dados até recursos para desenvolvimento de página *web*, por exemplo. Devido a contribuição da linguagem ser realizada por toda a comunidade científica e sociedade como um todo, os recursos desenvolvidos pelo [R](http://r-project.org/){target='_blank'} são dos mais diversos possíveis.

:::

::::

:::



Ainda como complemento, não queremos neste material convencê-lo a utilizar o ambiente [R](http://r-project.org/){target='_blank'}, pois a melhor linguagem é a que dominamos. Contudo, pretendemos mostrar que os recursos utilizados pelo [R](http://r-project.org/){target='_blank'} não estão limitados apenas a análise de dados nos dias atuais. Um exemplo é o desenvolvimento escrito  do material didático desta coleção, que pode ser acessado em: [https://bendeivide.github.io/cursor/](https://bendeivide.github.io/cursor/). Usufruímos das próprias ferramentas do [R](http://r-project.org/){target='_blank'} para repassar as nossas experiências, sem ao menos ter o domínio sobre linguagens do tipo `HTML`, `CSS`, `JavaScript`, dentre outras, necessárias para uma boa renderização de uma página *web*. Isso mostra a potencial ferramenta de trabalho que o [R](http://r-project.org/){target='_blank'} pode ser para nossa vida profissional.

Dessa forma, propomos um entendimento sobre a sintaxe e semântica^[Em linguagem de programação, a sintaxe representa a estrutura de como a linguagem é escrita. Ao passo que a semântica representa o comportamento associado a essas estruturas.] de como a linguagem [R](http://r-project.org/){target='_blank'} é desenvolvida. Seremos capazes, após a leitura dos dois primeiros *Volumes*, de acompanhar qualquer curso de Estatística com aplicações em [R](http://r-project.org/){target='_blank'}, dedicando-se apenas aos assuntos pertinentes à área da Estatística, uma vez que o embasamento sobre a linguagem será suprida por esta coleção. A nova revolução dos dados, se deve ao grande volume de informações obtidas nessa era tecnológica. Juntamente com a Estatística, o [R](http://r-project.org/){target='_blank'} representa uma poderosa ferramenta para entender os padrões que estão por trás dos dados, que por sinal, são a moeda valiosa do momento, ou melhor, sempre foram!

Aprenderemos também recursos diversos na área da computação, como programação defensiva,  desenvolvimento de interfaces gráficas ao usuário (IGU), paralelização, recursos na área da estatística, como o desenvolvimento de gráficos e o uso de banco de dados. Ensinaremos também o desenvolvimento de materiais como artigos, livros, *websites*, *blogs*, *dashboards*. Por fim, chegaremos a maior cobiça de um programador [R](http://r-project.org/){target='_blank'}: desenvolver um pacote.

::: {.rmdimportant}

:::: {style="display: flex;"}

::: {}

![](stop.png){width=3cm, height=3cm}

:::

::: {}

**Por que os artigos "o" e "a" para o [R](http://r-project.org/){target='_blank'}?**


Em muitos momentos utilizaremos o artigo "o" para a linguagem [R](http://r-project.org/){target='_blank'}. Pois é, isso ocorre porque ela também é considerada um *software* ou ambiente. Daí, chamamos de programa [R](http://r-project.org/){target='_blank'}, ou preferivelmente, ambiente [R](http://r-project.org/){target='_blank'}.

:::

::::

:::


A coleção apresenta três *Volumes* iniciais para o entendimento do ambiente  [R](http://r-project.org/){target='_blank'}:

- [R](http://r-project.org/){target='_blank'} Básico (Volume I);
- [R](http://r-project.org/){target='_blank'} Intermediário (Volume II); e 
- [R](http://r-project.org/){target='_blank'} Avançado (Volume III).

A seguir, explanaremos sobre cada um dos volumes.

## [R](http://r-project.org/){target='_blank'} Básico (Volume I)

Este primeiro *Volume*, apresenta um breve **histórico** sobre a linguagem, a sua instalação, bem como os recursos da *IDE*^[Do inglês, *Integrated Development Environment*, que significa ambiente de desenvolvimento integrado.] [RStudio](http://rstudio.org/){target='_blank'}, o conhecimento da **sintaxe** e **semântica** da linguagem [R](http://r-project.org/){target='_blank'}, as estruturas bases da linguagem, o que é um **objeto** e como construir uma **função**, o entendimento sobre **controle de fluxos**. O que é um **pacote**, **carregar** e **anexar** um pacote, e quem são os mantenedores da linguagem, também serão assuntos deste primeiro *Volume*. Noções básicas sobre o **caminho de busca**, **ambientes** e **_namespaces_** serão abordados. Algo muito interessante, que pode mudar o *script* de um programador em [R](http://r-project.org/){target='_blank'}, são as **boas práticas para a escrita de um código**, tema também abordado neste *Volume*.

A ideia do *Volume I* é proporcionar um entendimento básico, um primeiro contato com a linguagem, fazendo com que nós possamos dar os primeiros passos, executando as primeiras linhas de comando. Apresentaremos erros recorrentes, como o entendimento sobre um objeto, ou o anexo de um pacote ao caminho de busca. Temas como esses, dentre outros, foram a forma inicial que encontramos para aprofundar sobre a estrutura de um objeto [R](http://r-project.org/){target='_blank'}, bem como a sua manipulação. Adicionado a isso, faremos a inserção de como são os paradigmas da programação no ambiente. Esta última parte será estudada no *Volume II*, apresentada a seguir.

## [R](http://r-project.org/){target='_blank'} Intermediário (Volume II)

O **Volume II** é introduzido com uma maior caracterização do ambiente [R](http://r-project.org/){target='_blank'} quanto ao seu **escopo léxico**, como **linguagem interpretada**, como **programação funcional**, como **programação meta-paradigma**, como **programação dinâmica**; apresentaremos **manipulações de objetos em mais detalhe**, bem como o surgimento de algumas outras estruturas de dados como *tibble*, **cópias de objetos**, detre outras situações. Uma característica do ambiente [R](http://r-project.org/){target='_blank'} é que a linguagem pode ser **orientada a objetos** e isso será estudado neste *Volume*. Introduziremos o **desenvolvimento de pacotes R**, e aprofundaremos sobre os **ambientes**. Por fim, mostraremos como desenvolver um projeto do **[R](http://r-project.org/){target='_blank'}** e integrá-lo ao [GitHub](http://github.com/){target='_blank'}, e dessa forma, introduziremos sobre o sistema [Git](https://git-scm.com/).

Este talvez seja o maior *Volume* dentre os três iniciais, pois apesar de não ser mais necessário entender a ideia de objeto, retratada no *Volume I*, a inserção dos paradigmas da programação para o *Volume II* trará uma maior riqueza de características para o [R](http://r-project.org/){target='_blank'}, mostrando a sua versatilidade. Também, daremos um maior detalhe sobre como manipular objetos, e as otimizações existentes da linguagem como por exemplo, a modificação no local, que se entendida, perceberemos que o *loop* no ambiente [R](http://r-project.org/){target='_blank'} não é lento como ouvimos falar. Ao final do *Volume II*, falaremos sobre como propagar um código com o sistema [Git](https://git-scm.com/) na plataforma [GitHub](http://github.com/){target='_blank'}, sincronizado com os projeto [RStudio](http://rstudio.org/){target='_blank'}.

## [R](http://r-project.org/){target='_blank'} Avançado (Volume III)

O *Volume III*, será a total exploração do manual [R Internals](https://cran.r-project.org/doc/manuals/R-ints.html). Apesar de ser um assunto voltado para membros do [R Core Team](https://www.r-project.org/contributors.html), pretendemos entender como o [R](http://r-project.org/){target='_blank'} trabalha nos bastidores. Dessa forma, teremos total controle sobre as nossas rotinas. Contudo, para usários que pretendem entender o  ambiente [R](http://r-project.org/){target='_blank'} de forma aplicada, pode avançar esse volume para a leitura dos volumes seguintes.

## Demais volumes

Os demais volumes compreendem lacunas necessárias para serem abordadas com profundidade, tais como: *Documentações no R*, *Desenvolvimento de pacote R*, *Gráficos*, *Banco de dados*, *Interface Gráfica ao Usuário*, *Interface R com outras linguagens*, dentre outros.

## Referências complementares da Coleção {#referencias}

Citaremos alguns livros e materiais utilizados para o desenvolvimento dessa coleção, que alguns podem ser acessados *online* via *bookdown*, tais como:


 - [An Introduction to R](https://cran.r-project.org/doc/manuals/r-release/R-intro.html) (R Core Team)
 - [R Data Import/Export](https://cran.r-project.org/doc/manuals/r-release/R-data.html) (R Core Team)
 - [R Installation and Administration](https://cran.r-project.org/doc/manuals/r-release/R-admin.html)  (R Core Team)
 - [Writing R Extensions](https://cran.r-project.org/doc/manuals/r-release/R-exts.html) (R Core Team)
 - [R Language Definition](https://cran.r-project.org/doc/manuals/R-lang.html) (R Core Team)
 - [R Internals](https://cran.r-project.org/doc/manuals/R-ints.html) (R Core Team)
 
 - [Advanced R](https://adv-r.hadley.nz/) [@hadley2019]
 - [Advanced R Solutions](http://advanced-r-solutions.rbind.io/) [@hadleyetal2021]
 - [R Packages](https://r-pkgs.org/index.html) [@hadley2015]
 - [R for Data Science](https://r4ds.had.co.nz/) [@hadley2017]
 - Extending R [@chambers2016]
 - Software for Data Analysis: Programming with R [@chambers2008]
 - R in a Nutshell [@adler2012]
 - The New S Language (Livro Branco) [@chambers1988]
 - Statistical Models in S (Livro Azul) [@chambers1991]
 - Programming with Data (Livro Verde) [@chambers1998]

Vale salientar que esses três últimos livros, se pudéssemos unir, seria a bíblia do ambiente [R](http://r-project.org/){target='_blank'}.

## Pacotes R utilizados para essa coleção {#pacutilizados}

Apresentamos uma lista de pacotes, Tabela \@ref(tab:instalar-pacotes), utilizados ao longo da coleção para os exemplos abordados, como também para o próprio desenvolvimento dos livros.

Table: (\#tab:instalar-pacotes) Pacotes a serem instalados para o acompanhamento dos exemplos e exercícios da coleção *Estudando o ambiente R*.

| Pacote | Finalidade |
|:------:|:---------------------:|
| [lobstr](https://lobstr.r-lib.org/)  | Estudar a sintaxe do ambiente [R](http://r-project.org/){target='_blank'} |
| [codetools](https://cran.r-project.org/package=codetools/)| Estudar a sintaxe do ambiente [R](http://r-project.org/){target='_blank'} |
|[XR](https://cran.r-project.org/package=XR/) | Estudar a sintaxe do ambiente [R](http://r-project.org/){target='_blank'} |
| [rlang](https://rlang.r-lib.org/) | Estudar a sintaxe do ambiente [R](http://r-project.org/){target='_blank'} |
| [sloop](https://sloop.r-lib.org/) | Compreender interativamente a programação orientada a objetos |
| [styler](https://styler.r-lib.org) | Auxilia no estilo de código |
| [formatR](https://yihui.org/formatr) | Auxilia no estilo de código |
| [distill](https://rstudio.github.io/distill/) | Criação da página *web*|





