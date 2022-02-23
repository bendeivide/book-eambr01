--- 
title: "Estudando o Ambiente R"
subtitle: "Volume I: Nível Básico"
author: "Ben Dêivide, Diego Arthur"
date: "2022-02-23"
#lang: pt
csl: abnt.csl
site: bookdown::bookdown_site
bibliography:
- biblio.bib
- packages.bib
biblio-style: apalike
link-citations: yes



url: 'https://bendeivide.github.io/book-eambr/'
github-repo: bendeivide/book-eambr

---
# Bem-vindo {-}

<a href="http://bendeivide.github.io/cursor"><img src="capa.png" align="right" width="250" height="366" class="cover" alt="Compre pela internet" /></a> Esse é um *livro digital* da coleção __"[Estudando o ambiente R]()"__, *Volume 1: Nível Básico*, com o selo [Democratizando Conhecimento (DC)](https://bendeivide.github.io/dc/). O Livro é destinado aos usuários R que objetivam aprofundar o entendimento do ambiente R para seus projetos pessoais e profissionais.

O número de leitores  que acessaram esse livro:
</br>
<div align='center'><a href='https://www.free-website-hit-counter.com'><img src='https://hitwebcounter.com/counter/counter.php?page=7819661&style=0024&nbdigits=9&type=page&initCount=0' border='0' alt='Free Website Hit Counter'></a><br / ><small><a href='https://www.free-website-hit-counter.com' title="Free Website Hit Counter">Free website hit counter</a></small></div>

## Licença {-}

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Licença Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />Este trabalho está licenciado com uma Licença <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons - Atribuição-NãoComercial 4.0 Internacional</a>.

<a href="https://bendeivide.github.io/dc/"><img src="Logo-DC-preto2.png" align="left" width="180" /></a>

# Epígrafe {-}

*A melhor linguagem é a que você domina!* (Ben Dêivide)

# Prefácio {-}

A coleção *Estudando o ambiente R* é fruto de cursos ministrados sobre essa linguagem, bem como consultorias e estudos ao longo dos anos. Em 2005, quando ingressei na academia no curso de Engenharia Agronômica fiquei fascinado com a disciplina de Estatística no segundo semestre do ano corrente. Na sequência, acabo tendo o primeiro contato com o ambiente R, com pouco mais de 9 anos de seu lançamento e redistribuição. Poucos materiais naquela época haviam disponíveis em língua portuguesa. Porém, foi o suficiente para eu entender que estava diante de uma grande ferramenta computacional e estatística, necessária para o entendimento, pois sabia que poderia me gerar além de conhecimento, bons frutos acadêmicos.

Hoje, no ano de 2021, usuário há mais de 15 anos dessa linguagem, percebi que me sentia desconfortável, como apenas usário dessa ferramenta de trabalho. E assim, quando queremos aprender algo não há ferramenta melhor do que *aprender por ensinar*. E assim, lotado no Departamento de Estatística, Física e Matemática ([DEFIM](http://defim.ufsj.edu.br/)), campus Alto Paraopeba, pela Universidade Federal de São João del-Rei ([UFSJ](https://www.ufsj.edu.br/)), juntamente com o Centro Acadêmico de Engenharia de Telecomunicações (UFSJ), resolvemos em parceria, ministrar nesse momento de pandemia uma sequência de módulos para o curso R, desde o nível Básico até ao módulo Avançado. 

A ideia desse curso foi apresentar algo diferente relacionado a maioria dos cursos em R, que foi sempre apresentar essa ferramenta dentro dos conceitos da área da Estatística. Apesar de uma coisa ser intrínseca a outra, há muitas particularidades no ambiente R que são complexos, e muitas vezes julgados erroneamente. Um dos exemplos clássicos é que *loops* em R são lentos e com alto gasto de memória, quando na realiadade, isso ocorre muitas vezes pelo não entendimento do sistema de cópia de objetos nesse ambiente. Ainda mais, o entendimento desses cursos é agravado porque o entendimento sobre a estatística além de um cunho matemático, tem o seu cunho filosófico de como as metodologias foram desenvolvidas, e o entendimento mútuo da Estatística e o ambiente R, podem não ter o conhecimento real que essa potencial ferramenta pode proporcionar, uma vez que muitos assuntos complexos podem estar envolvidos em uma única aula. 

Assim, desenvolvemos na coleção *Estudando o ambiente R* os três volumes iniciais, referentes a apenas a linguagem R, sendo *Volume I: Nível Básico*, *Volume II: Nível Intermediário* e *Volume III: Nível Avançado*. Fazendo a alusão dos três livros iniciais sobre a linguagem S de John Chambers, faremos uma explanação sobre assuntos de menor complexidade até noções mais complexas sobre o ambiente R, restringindo apenas a sintaxe e semântica da linguagem. Os volumes subsequentes serão destinados a *Documentações no R*, *Desenvolvimento de pacote R*, *Gráficos*, *Banco de dados*, *Interface Gráfica ao Usuário*, *Interface R com outras linguagens*, dentre outros.

Tentando engajar nossos alunos, e agora colegas de trabalho, tenho a parceria no Volume I, de [Diego Arthur](https://digoarthur.github.io/), uma pessoa que tenta se superar a cada desafio e assunto estudado.

Por fim, espero que esse primeiro volume possa servir de referência para os passos iniciais nessa ferramenta tão importante para a área de análise de dados.

<div align="right" >
Ben Dêivide de Oliveira Batista
</div>

<!--chapter:end:index.Rmd-->



# Entendendo a coleção *Estudando o ambiente R *

A Coleção *Estudando o ambiente R* não tem como objetivo principal de ensinar análise de dados. Mas sim, proporcionar ao leitor um conhecimento sobre a linguagem [R](http://r-project.org/){target='_blank'}, de modo que se possa usufruir todos os recursos que esse ambiente possa proporcionar.

Ainda como complemento, não queremos nesse material, convencê-lo a utilizar a linguagem [R](http://r-project.org/){target='_blank'}, pois a melhor linguagem é aquela que você domina. Contudo, pretendemos mostrar que os recursos utilizados pelo [R](http://r-project.org/){target='_blank'} não estão mais limitados a própria análise de dados. Um exemplo é esse material, que nesse momento usufruímos da própria linguagem para repassar as nossas experiências sem ao menos ter o domínio sobre linguagens do tipo `HTML`, `CSS`, `JavaScript`, dentre outras, necessárias para uma boa renderização de página *web*. Isso mostra a potencial ferramenta de trabalho que o ambiente [R](http://r-project.org/){target='_blank'} pode ser para a vida profissional.

Dessa forma, propormos um entendimento sobre a sintaxe e semântica de como a linguagem [R](http://r-project.org/){target='_blank'} é desenvolvida. Com isso, o leitor será capaz após a leitura dos dois primeiros volumes, de estudar um pouco mais sobre essa ciência que nos últimos anos vem ganhando mais evidência, que é a Estatística. Tudo isso devido ao grande volume de informações obtidos nessa era tecnológica. Juntamente com ela, o [R](http://r-project.org/){target='_blank'} se tornará uma poderosa ferramenta para entender os padrões que estão por trás dos dados, que por sinal, é a moeda valiosa do momento, ou melhor, sempre foi!

Aprenderemos também recursos diversos na área da computação, como programação defensiva, desenvolvimento de interfaces gráficas, paralelização, como também recursos na área da estatística sem complexidades teóricas, como o desenvolvimento de gráficos e o uso de banco de dados. Ensinaremos também o desenvolvimento de materiais como artigos, livros, *websites*, *blogs*, *dashboards*. Por fim, chegaremos a maior cobiça de um programador [R](http://r-project.org/){target='_blank'}, desenvolver um pacote.

<blockquote>
<p>
<em> Observem que em muitos momentos utilizamos o artigo "o" para a linguagem [R](http://r-project.org/){target='_blank'}. Pois é, isso ocorre porque ela também é considerada um software ou ambiente. Daí, também podemos chamá-la de software [R](http://r-project.org/){target='_blank'}, ou preferivelmente, ambiente [R](http://r-project.org/){target='_blank'}. </em>
</p>
</blockquote>

Os módulos dessa coleção terão os três volumes base para o entendimento do ambiente [R](http://r-project.org/){target='_blank'}:

- Volume I: Nível Básico;
- Volume II: Nível Intermediário; e 
- Volume III: Nìvel Avançado.

A seguir, explanaremos sobre cada um dos módulos.

## Volume I: Nível Básico

Esse primeiro volume, que representa o livro corrente, apresenta um breve **histórico** sobre a linguagem, a sua instalação, bem como os recursos que a IDE^[Do inglês, *Integrated Development Environment*, que significa ambiente de desenvolvimento integrado] [RStudio](http://rstudio.org/){target='_blank'}, o conhecimento da **sintaxe** e **semântica** da linguagem [R](http://r-project.org/){target='_blank'}, compreendendo as estruturas bases da linguagem, sobre o que é um **objeto** e como construir uma **função**, o entendimento sobre **fluxos de controle**. O que é um **pacote**, **carregar** e **anexar** um pacote, e quem são as pessoas que fazem parte da manutenção dessa linguagem, também serão assuntos desse primeiro módulo. **Caminhos de busca**, **ambientes** e *namespaces*, teremos noções básicas. Algo muito interessante, que pode mudar a vida de um programador em [R](http://r-project.org/){target='_blank'} são as **boas práticas para a escrita de um código**, tema também abordado nesse módulo.

A ideia desse volume é proporcionar um entendimento básico, um primeiro contato com a linguagem, fazendo com que o leitor possa dar os primeiros passos, executando as primeiras linhas de comando. Mas também, dando o enfoque com erros tão recorrentes, como o entendimento sobre um objeto, ou o anexo de um pacote no caminho de busca. Temas como esses, dentre outros, serão a forma inicial que encontramos, para que posteriormente, seja dado um aprofundamento sobre a estrutura de um objeto [R](http://r-project.org/){target='_blank'} bem como a sua manipulação, e adicionado a isso, a inserção de como são os paradigmas da programação nesse ambiente. Essa última parte será estudada, no Volume II, apresentado a seguir.

## Volume II: Nível Intermediário

O volume II é introduzido com uma melhor caracterização do ambiente [R](http://r-project.org/){target='_blank'} quanto ao seu **escopo léxico**, como **linguagem interpretada**, como **programação funcional**, como **programação meta-paradigma**, como **programação dinâmica**; apresentaremos **manipulações de objetos em mais detalhe**, bem como o surgimento de alguns outros objetos como *tibble*, **cópias de objetos**. Uma característica do ambiente [R](http://r-project.org/){target='_blank'} é que a linguagem pode ser **orientada a objetos** e isso será estudado nesse módulo. Introduziremos ao **desenvolvimento de pacotes R**, e aprofundaremos sobre os **ambientes**. Por fim, mostraremos como desenvolver Projeto do [RStudio](http://rstudio.org/){target='_blank'} e integrá-los ao [GitHub](http://github.com/){target='_blank'}, e dessa forma, introduziremos sobre o sistema [Git](https://git-scm.com/).

Esse talvez seja o maior volume, dentre os três iniciais, porque apenar de não precisarmos entender mais a ideia dos objetos, que foram retratadas no Volume I, a inserção dos paradigmas da programação para este volume, trará uma maior riqueza de características para o [R](http://r-project.org/){target='_blank'}, mostrando a sua versatilidade. Também, daremos um maior detalhamento como manipular objetos, e as otimizações existentes da linguagem, como por exemplo, a modificação no local, que se entendida, poderá perceber que o *loop* no ambiente [R](http://r-project.org/){target='_blank'} não é lento quanto parece. Ao final desse volume, falaremos sobre como propagar o seu código com o sistema [Git](https://git-scm.com/) na plataforma [GitHub](http://github.com/){target='_blank'}, sincronizado com os projetos do [RStudio](http://rstudio.org/){target='_blank'}.

## Volume III: Nível Avançado

O Volume III, será a total exploração do manual [R Internals](https://cran.r-project.org/doc/manuals/R-ints.html). Apesar de ser um assunto voltado para membros do [R Core Team](https://www.r-project.org/contributors.html), pretendemos entender como o [R](http://r-project.org/){target='_blank'} trabalha nos bastidores. Dessa forma, teremos total controle sobre as nossas rotinas. Contudo, para usários que pretendem entender o  ambiente [R](http://r-project.org/){target='_blank'} de forma aplicada, pode avançar esse volume para a leitura dos volumes seguintes.

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

Apresentamos uma lista de pacotes, Tabela <a href="#tab:instalar-pacotes">1.1</a>, utilizados ao longo da coleção para os exemplos abordados, como também para o próprio desenvolvimento dos livros.

Table: TABELA 1.1:  Pacotes a serem instalados para o acompanhamento dos exemplos e exercícios da coleção *Estudando o ambiente R*.

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






<!--chapter:end:01-intro.Rmd-->

<!-- # (PART) Programação em R (Nível Básico) {-} -->
## História do R
A linguagem **R** tem a sua primeira aparição científica publicada em 1996, com o artigo intitulado
R: A Language for Data Analysis and Graphics, cujos os autores são os desenvolvedores da linguagem,
George Ross Ihaka e Robert Clifford Gentleman.

<div class="figure" style="text-align: center">
<img src="img/Criadores_R.PNG" alt="Criadores do R." width="100%" />
<p class="caption">FIGURA 1.1: Criadores do R.</p>
</div>

Durante a época em que estes professores trabalhavam na Universidade de Auckland, Nova Zelândia, desenvolvendo uma implementação alternativa da lingugagem S, desenvolvida por John Chambers, que comercialmente era o **S-PLUS**, nasceu em 1991, o projeto da linguagem **R** , em que em 1993 o projeto é divulgado e em 1995, o primeiro lançamento oficial, como software livre com
a licença GNU. Devido a demanda de correções da linguagem que estava acima da capacidade de
atualização em tempo real, foi criado em 1997, um grupo central voluntário, responsável por essas
atualizações, o conhecido R Development Core Team2, que hoje está em 20 membros (atualizado
em 5 de novembro de 2021): Douglas Bates, John Chambers, Peter Delgaard, Robert Gentleman,
Kurt Hornik, Ross Ihaka, Tomas Kalibera, Michael Lawrence, Friedrich Leisch, Uwe Ligges, Thomas
Lumley, Martin Maechler, Sebastian Meyer, Paul Murrel, Martyn Plummer, Brian Ripley, Deepayan
Sarkarm, Duncan Temple Lang, Luke Tierney e Simon Urbanek. Por fim, o CRAN (Comprehensive R Archive Network) foi oficialmente anunciado em 23 de abril de 1997 3. O CRAN é um conjunto de sites (espelhos) que transportam material idêntico, com
as contribuições do **R** de uma forma geral.

## O que é o R ?

R é uma linguagem de programação e ambiente de software livre e código aberto (open source). Entendemos4:

- **Software livre**: *software* que respeita a liberdade e sendo de comunidade dos usuários, isto é, os usuários possuem a liberdade de executar, copiar, distribuir, estudar, mudar, melhorar o *software*. Ainda reforça que um *software* é livre se os seus usuários possuem quatro liberdades:

    1. Liberdade 0 - A liberdade de executar o programa como você desejar, para qualquer propósito;
    2. Liberdade 1 - A liberdade de estudar como o programa funciona, e adaptá-la as suas necessidades;
    3. Liberdade 2 - A liberdade de redistribuir cópias de modo que você possa ajudar outros;
    4. Liberdade 3 - A liberdade de distribuir cópias de suas versões modificadas a outros;
  
Algo que deve estar claro é que um *software* livre não significa não comercial. Sem esse fim, o *software* livre não atingiria seus objetivos. Agora perceba que, segundo Richard Stallman, a ideia de software livre faz campanha pela liberdade para os usuários da computação. Por outro lado, o código aberto valoriza principalmente a vantagem prática e não faz campanha por princípios.

- *Código aberto*: Para Richard Stallman 6 código aberto apoia critérios um pouco mais flexíveis que os do software livre. Todos os códigos abertos de software livre lançados se qualificariam como código aberto. Quase todos os softwares de código aberto são software livre, mas há exceções, como algumas licenças de código aberto que são restritivas demais, de forma que elas não se qualificam como licenças livres. Nesse contexto, o autor cita muitas situações que diferenciam os dois termos. Vale a pena a leitura.

A linguagem **R** é uma combinação da linguagem S com a semântica de escopo léxico da linguagem Scheme. Dessa forma, a linguagem **R** se diferencia em dois aspectos principais 7:

- **Gerenciamento de memória**: usando as próprias palavras de Ross Ihaka, em **R**, alocamos uma quantidade fixa de memória na inicialização e a gerenciamos com um coletor de lixo dinâmico. Isso significa que há muito pouco crescimento de *heap* e, como resultado, há menos problemas de paginação do que os vistos em S.


- **Escopo**: na linguagem *R*, as funções acessam as variáveis criadas pelo o corpo da própria função, como também as variáveis contidas no ambiente que a função foi criada. No caso da linguagem S, isso não ocorre, assim, como por exemplo na linguagem C, em que as funções acessam apenas variáveis definidas globalmente.


Vejamos alguns exemplos para entendimento (Se você ainda não está ambientado ao **R**, estude esse módulo primeiro, e depois reflita sobre esses exemplos). Antes de executar as linhas de comando, instale o pacote **lobstr** como segue:

$$CODIGO$$



Como a linguagem *S* é uma linguagem interpretada cuja base é a linguagem *FORTRAN*, a linguagem *R* também é uma linguagem interpretada e baseada além da linguagem *S*, tem como base as linguagens de baixo nível *C*, *FORTRAN* e a própria linguagem *R*.

Embora o *R* tenha uma interface baseada em linhas de comando, existem muitas interfaces gráficas ao usuário com destaque ao *RStudio*, criado por Joseph J. Allaire, Figura <a href="#fig:CriadorRStudio">1.2</a>.

<div class="figure" style="text-align: center">
<img src="img/Criador_RStudio.PNG" alt="J. J. Allaire, o criador do RStudio" width="100%" />
<p class="caption">FIGURA 1.2: J. J. Allaire, o criador do RStudio</p>
</div>


Essa interface tornou o *R* mais popular, pois além de produzir,hoje, pacotes de grande utilização como a família de pacotes *tidyverse*, **rmarkdown**, **shiny**, dentre outros, permite uma eficiente capacidade de trabalho de análise de utilização do **R**. Uma vez que o **RStudio** facilita a utilização de muitos recursos por meio de botões, como por exemplo, a criação de um pacote *R*. Há quem diga que para um iniciante em **R**, não seja recomendado utilizar o *RStudio* para o entendimento da linguagem. Cremos, que o problema não é a IDE utilizada, e sim, o caminho onde deseja chegar com a linguagem **R**.

No Brasil, o primeiro espelho do CRAN foi criado na UFPR, pelo grupo do Prof. Paulo Justiniano. Inclusive um dos primeiros materiais mais completos sobre a linguagem **R** produzidos no Brasil, foi dele, iniciado em 2005, intitulado "Introdução ao Ambiente Estatístico **R**". Vale a pena assistirmos do evento a palestra: R Reflexões: um pouco de história e experiências com o R, proferida pelo Prof. Paulo Justiniano Ribeiro Júnior, no R Day - Encontro nacional de usuários do R, ocorrido em 2018 em Curitiba/UFPR, do qual o vídeo está disponível no Canal (Youtube) LEG UFPR.



## Instalação do R e RStudio 

Para realizarmos a instalação do ambiente **R** , uma vez que o **RStudio** é apenas uma IDE, e sem o **R**, não há sentido instalá-lo, seguimos os seguintes passos:

- Instalação do R - <https://www.r-project.org>, Figura <a href="#fig:InstalacaoR01">1.3</a> e <a href="#fig:InstalacaoR02">1.4</a>:


<div class="figure" style="text-align: center">
<img src="img/Instalacao_R_01.PNG" alt=" Primeiro passo para Instalação do R" width="100%" />
<p class="caption">FIGURA 1.3:  Primeiro passo para Instalação do R</p>
</div>

<!-- IMAGEM 02 -->
<div class="figure" style="text-align: center">
<img src="img/Instalacao_R_02.PNG" alt="Segundo passo para Instalação do R" width="100%" />
<p class="caption">FIGURA 1.4: Segundo passo para Instalação do R</p>
</div>

- Instalação do RStudio - <https://rstudio.com/products/rstudio/download/#download>:


Justificamos a utilização do **RStudio** pela quantidade de recursos disponíveis e a diversidade de usuários **R**, que hoje o perfil não é apenas de um programador, mas de um usuário que necessita de uma ferramenta estatística para análise de seus dados. Dessa forma, até por questão de praticidade, e de uso pessoal, não deixaremos de repassar o entendimento sobre a linguagem **R** com o uso do **RStudio**.

Outra coisa importante, é que esses passos para a instalação do R e RStudio se basearam no sistema operacional Windows, mas para detalhes sobre essas instalações em outros sistemas operacionais, acesse: 
<https://bendeivide.github.io/cursor>.


<div class="figure" style="text-align: center">
<img src="img/Instalacao_R_Studio01.PNG" alt="Instalação do RStudio" width="100%" />
<p class="caption">FIGURA 1.5: Instalação do RStudio</p>
</div>































<!--chapter:end:02-install_history_R.Rmd-->

# Como o R trabalha

Iniciamos a discussão por uma afirmação de John McKinley Chambers, do qual afirmou que o R tem três princípios (Chambers 2016):



```r
knitr::include_graphics("img/Criador_S.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Criador_S.PNG" alt="John Chambers^[Fonte da foto: Retirada de sua página pessoal, [https://statweb.stanford.edu/~jmc4/](https://statweb.stanford.edu/~jmc4/)], o criador da linguagem `S`." width="178" />
<p class="caption">FIGURA 2.1: John Chambers^[Fonte da foto: Retirada de sua página pessoal, [https://statweb.stanford.edu/~jmc4/](https://statweb.stanford.edu/~jmc4/)], o criador da linguagem `S`.</p>
</div>

- **Princípio do Objeto**: Tudo que existe em **R** é um objeto;
- **Princípio da Função**: Tudo que acontece no **R** é uma chamada de função;
- **Princípio da Interface**: Interfaces para outros programas são parte do **R**;

Ao longo de todo o curso, para os três módulos, iremos nos referir a esses princípios. Vamos inicialmente observar uma adaptação da ilustração feita por Paradis (2005), mostrando como o R trabalha, Figura <a href="#fig:rworks">2.2</a>.

Toda ação que acontece no **R** é uma chamada de função (Operadores e funções), que por sua vez é armazenada na forma de um objeto, e este se associa a um nome. A forma de execução de uma função é baseada em argumentos (dados, fórmulas, expressões, etc), que são entradas, ou argumentos padrões que já são pré-estabelecidos na criação da função. Esses tipos de argumentos podem ser modificados na execução da função. Por fim, a saída é o resultado, que é também um objeto, e pode ser usado como argumento de outras funções.


```r
knitr::include_graphics("img/Funcionamento_R.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Funcionamento_R.PNG" alt="Esquema de como o `R` funciona." width="50%" />
<p class="caption">FIGURA 2.2: Esquema de como o `R` funciona.</p>
</div>

Na Figura <a href="#fig:rworks">2.2</a>, observamos que todas as ações realizadas sobre os objetos ficam armazenadas na memória ativa do computador. Esses objetos são criados por comandos (teclado ou mouse) através de funções ou operadores (chamada de função), dos quais leem ou escrevem arquivos de dados do disco rígido, ou leem da própria internet. Por fim, o resultado desses objetos podem ser apresentados no console (memória ativa), exportados em formato de imagem, página web, etc. (disco rígido), ou até mesmo ser reaproveitado como argumento de outras funções, porque o resultado também é um objeto.



## Como utilizar o R e o RStudio

A primeira ideia que temos sobre a linguagem **R** é a linha de comando, que é simbolizada pelo prompt de comando “>”. Este símbolo significa que o **R** está pronto para receber os comandos do usuário. O prompt de comando está localizado no console do **R**. Vejamos o console do **R** a seguir, que é o local que recebe as linhas de comando do usuário, Figura <a href="#fig:promptr">2.3</a>.

O **R** ao ser iniciado, está pronto para receber as linhas de comando desejadas. Uma forma simples de armazernar os seus comandos é por meio de um script, isto é, um arquivo de texto com extensão .R. Para criar, basta ir em: Arquivo > Novo script.... Veremos muitas outras informações ao longo do curso.

O **RStudio** se apresenta como uma interface para facilitar a utilização do **R**, tendo por padrão quatro quadrantes, demonstrado na Figura <a href="#fig:iderstudio">2.4</a>

Muitas coisas na interface do **R** podem se tornar problemas para os usuários, uma vez que janelas gráficas, janelas de scripts, dentre outras, se sobrepõe. Uma vantagem no **RStudio** foi essa divisão de quadrantes, que torna muito mais organizado as atividades realizadas no **R**.De um modo geral, diremos que o primeiro quadrante é responsável pela entrada de dados, comandos, isto é, o input. O segundo quadrante, que é o console do R , representa tanto entrada como saída de informações (input/output). Dependendo as atividades as abas podem aumentar. O terceiro quadrante representa informações básicas como objetos no ambiente global, a memória de comandos na aba History, dentre outras, e também representa entrada como saída de informações (input/output). Por fim, o quarto quadrante é responsável por representação gráficas, instalação de pacotes, renderização de páginas web.



```r
knitr::include_graphics("img/Console_do_R.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Console_do_R.PNG" alt="Console do R (Versão 4.0.3)." width="80%" />
<p class="caption">FIGURA 2.3: Console do R (Versão 4.0.3).</p>
</div>


```r
knitr::include_graphics("img/Interface_RStudio.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Interface_RStudio.PNG" alt="Interface do RStudio (Versão 1.4.1103)." width="80%" />
<p class="caption">FIGURA 2.4: Interface do RStudio (Versão 1.4.1103).</p>
</div>




## Comandos no R

### Console e *Prompt* de comando

Como falado anteriormente, o **R** é uma linguagem baseada em linhas de comando, e as linhas de comando, são executadas uma de cada vez, no console. Assim que o prompt de comando está visível na tela do console, o **R** indica que o usuário está pronto para inserir as linhas de comando. O símbolo padrão do prompt de comando é “>”, porém, ele pode ser alterado. Para isso, use a linha de comando, por exemplo <a href="#cod:promptdor"><strong>??</strong></a>


```r
R>options(prompt = "R>")
R># Toda vez que o console iniciar, começarar por 'R>'
R>10
```

```
## [1] 10
```



O conjunto de símbolos que podem ser utilizados no **R** depende do sistema operacional e do país em que o **R** está sendo executado. Basicamente, todos os símbolos alfanuméricos podem ser utilizados, mas para evitar problemas quanto ao uso das letras aos nomes, opte pelos caracteres ASCII.

A escolha do nome associado a um objeto tem algumas regras:

- Deve consistir em letras, dígitos, “.” e “_”;

- Os nomes devem ser iniciado por uma letra ou um ponto não seguido de um número, isto é, Ex.: .123, 1n, dentre outros;

- As letras maiúsculas se distinguem das letras minúsculas;

- Não pode inicia por “_” ou dígito, é retornado um erro no console caso isso ocorra;

- Não pode usar qualquer uma das palavras reservadas pela linguagem, isto é, TRUE, FALSE, if,
for, dentre outras, que pode ser consultado usando o comando ?Reserved().

Um nome que não segue essas regras é chamado de um nome **não sintático**. Um comando que pode ser usado para converter nomes não sintatícos em nomes **sintáticos** é *make.names*.


```r
# Nome nao sintatico
.123 <- 50
## Error in 0.123 <- 50 : lado esquerdo da atribuicao inválida (do_set)
# Qual a sugestao de nome sintatico para '.123'?
make.names(.123)
[1] "X0.123"
```

Apesar dessas justificativas, algumas situações como as apresentadas nos exemplos anteriores são possíveis, ver Wickham (2019) na Seção 2.2.1.




### Comandos elementares

Os **comandos elementares** podem ser divididos em **expressões** e **atribuições**. Por exemplo, podemos estar interessados em resolver a seguinte expressão $10+15=25$. No console quando passamos pelo comando:



```r
R>10 + 15
```

```
## [1] 25
```

No *console* quando passamos pelo comando do Código R 4.2, o **R** avalia essa expressão internamente e imprime o resultado na tela, após apertar o botão ENTER do teclado. Esse fato é o que ocorre no segundo princípio mencionado por Chambers (2016), tudo em **R** acontece por uma chamada de função. Na realidade o símbolo + é uma função interna do **R** , que chamamos de função primitiva, porque foi implementada em outra linguagem. Assim, esse é o resultado de três objetos (“10”, “+”, “15”) que são avaliados internamente, do qual a função ‘+‘(e1, e2) é chamada, e em seguida o resultado é impresso no console. Intrinsecamente, podemos também afirmar que a função print() também trabalha nessa situação, fazendo o papel de imprimir o resultado no console.

Do mesmo modo, se houver algum problema em algum dos objetos o retorno da avaliação pode ser uma mensagem de erro. Um caso muito prático é quando utilizamos o separador de casas decimais, sendo a **vírgula ","**, para os números. Quando na realidade deve ser um **ponto "."**, respeitando o sistema internacional de medidas. A vírgula é utilizada para separar elementos, argumentos em uma função, etc. Vejamos um exemplo no Código R 4.3.


```r
10.5 + 15.5
```

```
## [1] 26
```

Porém, tem que ficar claro que uma expressão é qualquer comando repassado no console. Este comando é avaliado e seu resultado impresso, há menos que explicitamente o usuário queira tornálo invisível. Caso algum elemento do comando não seja reconhecido pelo **R**, há um retorno de alguma mensagem em forma de “erro” ou “alerta”, tentando indicar o possível problema. Todos esses processos ocorrem na memória ativa do computador, e uma vez o resultado impresso no console, o valor é perdido, há menos que você atribua essa expressão a um nome, que erroneamento usamos o termo: “criamos um objeto!”. A atribuição dessa expressão será dada pela junção de dois símbolos <-, falado mais a frente. Um comando em forma de atribuição também avalia a sua expressão, um nome se associa ao seu resultado, e o resultado será mostrado, se posteriormente, após a execução você digitar o “nome” atribuído a esse resultado. Vejamos um exemplo o Código R 4.4.


```r
# Foi criado um objeto do tipo caractere e o nome "meu_nome" foi associado a ele
# O 'R' avalia essa expressão, mas não imprime no console!
meu_nome <- "Ben"
# Para imprimir o resultado da expressão, digitamos o nome "meu_nome" no console
# e apertamos o botão ENTER do teclado!
meu_nome
```

```
## [1] "Ben"
```

### Execução de comandos

Quando inserimos um comando no console, executamos uma linha de comando por vez ou separados por “;” em uma mesma linha. Vejamos o Código


```r
# Uma linha de comando por vez
meu_nome <- "Ben" # Criamos e associamos um nome ao objeto
meu_nome # Imprimos o objeto
```

```
## [1] "Ben"
```

```r
# Tudo em uma linha de comando
meu_nome <- "Ben"; meu_nome
```

```
## [1] "Ben"
```

Se um comando for muito grande e não couber em uma linha, ou caso deseje completar um
comando em mais de uma linha, após a primeira linha haverá o símbolo “+” iniciando a linha seguinte ao invés do símbolo de prompt de comando (“>”), até que o comando esteja sintaticamente
completo. Vejamos o Código R 4.6, a seguir.


```r
# Uma linha de comando em mais de uma linha
(10 + 10) /
  2
```

```
## [1] 10
```

Por fim, todas linhas de comando quando iniciam pelo símbolo jogo da velha, “#” indica um comentário e essa linha de comando não é avaliada pelo console, apenas impressa na tela. E ainda, as linhas de comandos no console são limitadas a aproximadamente 4095 bytes (não caracteres).

### Chamada e correção de comandos anteriores

Uma vez que um comando foi executado no console, esse comando por ser recuperado usando as teclas de setas para cima e para baixo do teclado, recuperando os comandos anteriorermente executados, e que os caracteres podem ser alterados usando as teclas esquerda e direita do teclado, removidas com o botão Delete ou Backspace do teclado, ou acrescentadas digitando os caracteres necessários. Uma outra forma de completar determinados comandos já existentes, como por exemplo, uma função que já existe nas bibliotecas de instalação do **R**, usando o botão Tab do teclado. O usuário começa digitando as iniciais, e para completar o nome aperta a tecla Tab. Posteriormente, basta completar a linha de comando e apertar ENTER para executá-la. Para entender mais detalhes, acesse o link: <https://youtu.be/0MRPmVsPvk4>, e veja em vídeo-aula mais detalhes.

Esses recursos no **RStudio** são mais dinâmicos e vão mais além. Por exemplo, quando usamos um objeto do tipo função, estes apresentam o que chamamos de argumento(s) dentro do parêntese de uma função, do qual são elementos necessários, para que a função seja executada corretamente. Nesse caso, ao inseri o nome dessas funções no console, usando o **RStudio**, ao iniciá-la com a abertura do parêntese, abre-se uma janela informando todos os argumentos possíveis dessa função. Isso torna muito dinâmico escrever linhas de comando, porque não precisaremos estar lembrando do nome dos argumentos de uma função, mas apenas entender o objetivo dessa função. Para entender mais detalhes, acesse o link: <https://youtu.be/KL3WAB_GFNI>, e veja em vídeo-aula mais detalhes.

## Ambiente Global (área de trabalho ou *Workspace*)

Quando usamos um comando de atribuição no console, o R armazena o nome associado ao objeto
criado na área de trabalho (Workspace), que nós chamamos de Ambiente Global. Teremos uma seção
introdutória na seção Ambientes e caminhos de busca, mas entendamos inicialmente que o objetivo
de um ambiente é associar um conjunto de nomes a um conjunto de valores. Vejamos o Código R
4.7.


```r
# Nomes criados no ambiente 
x <- 10 - 6; y <- 10 + 4; w <- "Maria Isabel"
# Verificando o nomes contidos no ambiente global
ls()
```

```
## [1] "meu_nome" "w"        "x"        "y"
```

Observemos que todos os objetos criados até o momento estão listados, e o que é mais surpreendente é que ambientes podem conter outros ambientes e até mesmo se conterem. Observe o objeto meu_nome é um ambiente e está contido no Ambiente global. Será sempre dessa forma que recuperaremos um objeto criado no console do **R** . Caso contrário, se no console esse comando não for de atribuição esse objeto é perdido.


## Arquivos `.RData` e `.Rhistory`

Ao final do que falamos até agora, todo o processo ao inserir linhas de comando do console, e desejarmos finalizar os trabalhos do ambiente **R** , dois arquivos são criados, sob a instrução do usuário em querer aceitar ou não, um *.RData* e outro *.Rhistory*, cujas finalidades são:

- .RData: salvar todos os objetos criados que estão atualmente disponíveis;

- .Rhistory: salvar todas as linhas de comandos inseridas no console.

Ao iniciar o **R** no mesmo diretório onde esses arquivos foram salvos, é carregado toda a sua área de trabalho anteriormente, bem como o histórico das linhas de comando utilizadas anteriormente.


## Criando e salvando um *script*

A melhor forma de armazenarmos nossas linhas de código inseridas no console é criando um Script. Este é um arquivo de texto com a extensão *.R*. Uma vez criada, poderemos ao final salvar o arquivo e guardá-lo para utilizar futuramente.

No **R** , ao ser iniciado poderemos ir no menu em Arquivo > Novo script.... Posteriormente, pode ser inserido as linhas de comando, executadas no console pela tecla de atalho F5. As janelas do Script e console possivelmente ficarão sobrepostas. Para uma melhor utilização, estas janelas podem ficar lado a lado, configurando-as no menu em Janelas > Dividir na horizontal (ou Dividir lado a lado).

No **RStudio**, poderemos criar um Script no menu em File > New File > R Script, ou diretamente no ícone abaixo da opção File no menu, cujo o símbolo é um arquivo com o símbolo “+” em verde, que é o ícone do New File, e escolher R Script. Esse arquivo abrirá no primeiro quadrante na interface do **RStudio**.

Para salvar, devemos clicar no botão com o símbolo de disquete (R/RStudio), escolher o nome do arquivo e o diretório onde o arquivo será armazenado no seu computador. Algumas ressalvas devem ser feitas:

- Escolha sempre um nome sem caracteres especiais, com acentos, etc.;

- Escolha sempre um nome curto ou abreviado, que identifique a finalidade das linhas de comando escritas;

- Evite espaços se o nome do arquivo for composto. Para isso, use o símbolo underline "_";

- Quando escrever um código, evite também escrever caracteres especiais, exceto em casos de necessidade, como imprimir um texto na tela, títulos na criação de gráficos, dentre outras. Nos referimos especificamente, nos comentários do código.

Um ponto bem interessante é o diretório. Quando criamos um Script a primeira vez, e trabalhamos nele a pós a criação, muitos erros podem ser encontrados de início. Um problema clássico é a importação de dados. O usuário tem um conjunto de de dados e deseja fazer a importação para o R , porém, mesmo com todos os comandos corretos, o console retorna um erro, informando que não existe esse arquivo que contém os dados para serem informados. Isso é devido ao diretório de trabalho atual. Para verificar qual o diretório que está trabalhando no momento, use a linha de comando:



```r
getwd()
```

Para alterar o diretório de trabalho, o usuário deve usar a seguinte função setwd("Aqui, deve ser apontado para o local desejado!"). Supomos que salvamos o nosso Script em C:\meus_scripts_r. Assim, usamos a função setwd() e ao apontarmos o local, as barras devem ser inseridas de modo invertido, isto é, setwd("C:/meu_scripts_r"), além de estar entre aspas.

No RStudio , isso pode ser feito em Session > Set Working Directory > To Source File Location. Isso levará ao diretório corrente do Script. Se desejar escolher outro diretório, vá em Session > Set Working Directory > Choose Directory.... Porém, uma vez criado um Script, e utilizado novamente, se o usuário estiver abrindo o RStudio também naquele primeiro momento, por padrão, o diretório de trabalho corrente será o mesmo do diretório do Script. Isso acaba otimizando o trabalho.

Devemos nos atentar também, quando trabalhamos utilizando Scripts ou arquivos de banco de dados, em locais diferentes do diretório corrente. Um outro recurso interessante é a função source(), que tem o objetivo de executar todas as linhas de comando de um Script sem precisar abri-lo. Isso pode ser útil, quando criamos funções para as nossas atividades, porém elas não se encontram no Script de trabalho para o momento. Assim, podemos criar um Script auxiliar que armazenas todas as funções criadas para as análises desejadas, e no Script corrente, poderemos chamá-las sem precisar abri o Script auxiliar. Todos os objetos passam a estar disponíveis no ambiente global.

Por fim, algo de muita importância para um programador e usuário de linguagem, comente suas linhas de comando. Mas faça isso a partir do primeiro dia em que foi desenvolvido o primeiro Script. Isso criará um hábito, uma vez que o arquivo não está sendo criado apenas para um momento, mas para futuras consultas. E quando voltamos a Scripts com muitas linhas de comando, principalmente depois de algum tempo, e sem comentários, possivelmente você passará alguns instantes para tentar
entender o que foi escrito.

Outra coisa importante, é a boa prática de escrita de um código, Capítulo ??, e o RStudio nos proporciona algumas ferramentas interessantes. Mas isso será visto mais a frente.


<!--chapter:end:03-como_R_trabalha.Rmd-->

# Objetos

Definimos um objeto como uma entidade no ambiente R com características internas contendo informações necessárias para interpretar sua estrutura e conteúdo. Essas características são chamadas de **atributos**. Vamos entender o termo estrutura como a disposição de como está o seu conteúdo. Por exemplo, a estrutura de um objeto mais simples no R é um **vetor atômico**, pois os elementos contidos nele, apresenta o mesmo **modo**, um tipo de atributo. Falaremos nisso, mais à frente. De forma didática, adaptaremos a representação dos objetos no formato de diagrama. Vejamos a seguinte linha de comando:



```r
> x <- 10
```

Todo mundo que tem uma certa noção sobre a linguagem **R** afirmaria: “criei um objeto x que recebe o valor 10”. Para Wickham (2019) essa afirmação é imprecisa e pode levar um entendimento equivocado sobre o que acontece de fato. Para o mesmo autor, o correto é afirmar que o objeto 10 está se ligando a um nome. E de fato, o objeto não tem um nome, mas o nome tem um objeto. O símbolo que associa um objeto a um nome é o de atribuição, <-, isto é, a junção do símbolo desigualdade menor e o símbolo de menos. Para ver qual objeto associado ao nome, o usuário precisa apenas digitar o nome no console e apertar a tecla *ENTER*.


Representaremos em termos de diagrama, um nome se ligando a um objeto, na Figura <a href="#fig:objx">3.1</a>.


```r
knitr::include_graphics("img/Ligacao_Objeto.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Ligacao_Objeto.PNG" alt="Dizemos que o nome `'x'` se liga ao objeto do tipo (estrutura) vetor." width="839" />
<p class="caption">FIGURA 3.1: Dizemos que o nome `'x'` se liga ao objeto do tipo (estrutura) vetor.</p>
</div>

O identificador na memória ativa desse objeto pode ser obtida por:


```r
> lobstr::obj_addr(x)
> # [1] "0xf8a104fc20"
```


O diagrama explica que o nome criado x se associou com um objeto do **tipo** (estrutura) vetor (vector) e **modo** numérico (numeric)1 , cuja identificação na memória ativa do seu computador foi <0xf8a104fc20>. É claro que para cada vez que o usuário abri o ambiente **R** e executar novamente esse comando, ou repeti o comando, esse identificador irá alterar.

Essa outra representação, Código R ??, ficará mais claro para a afirmação feita anteriormente, no segundo diagrama, Figura <a href="#fig:objxy">3.2</a>, que representa a ligação do nome y ao mesmo objeto. Os termos nos diagramas, serão usados de acordo com a sintaxe da linguagem com os termos em inglês para melhor compreensão e fixação dos termos utilizados em R , uma vez que os termos na linguagem são baseados nesse idioma.


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
<img src="img/Ligacao_Objeto2.PNG" alt="Dizemos que o nome `'x'` e '`y`' se ligam ao objeto do tipo (estrutura) vetor." width="869" />
<p class="caption">FIGURA 3.2: Dizemos que o nome `'x'` e '`y`' se ligam ao objeto do tipo (estrutura) vetor.</p>
</div>


Mais especificamente, acrescentamos um outro diagrama, Figura <a href="#fig:objxyglobalenv">3.3</a>, mostrando a representação do ambiente global (.GlobalEnv, nome associado ao objeto que representa o ambiente global).


```r
knitr::include_graphics("img/Objeto_Ambiente_Global.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Objeto_Ambiente_Global.PNG" alt="Dizemos que o nome `'x'` e `'y'` se ligam ao objeto do tipo (estrutura) vetor e essa ligação fica armazenada no ambiente global." width="80%" />
<p class="caption">FIGURA 3.3: Dizemos que o nome `'x'` e `'y'` se ligam ao objeto do tipo (estrutura) vetor e essa ligação fica armazenada no ambiente global.</p>
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

Um diagrama apresentando esses três objetos no ambiente global, pode ser apresentado na Figura <a href="#fig:v1v2v3">3.4</a>. Observe que acrescentamos agora o **comprimento** dos objetos no diagrama entre colchetes, ao lado do atributo **modo**.


```r
knitr::include_graphics("img/Diagrama_Objetos.PNG")
```

<div class="figure" style="text-align: center">
<img src="img/Diagrama_Objetos.PNG" alt="Objetos `v1`, `v2` e `v3`." width="884" />
<p class="caption">FIGURA 3.4: Objetos `v1`, `v2` e `v3`.</p>
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

Observe que todos os elementos ganharam aspas, isto é, se tornaram um caractere ou uma cadeia de caracteres. A coersão entre vetores de modo numeric, character e logical será sempre como verificado pela Figura <a href="#fig:CoersaoVetores"><strong>??</strong></a>.

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

<!--chapter:end:04-objetos.Rmd-->

# Importando dados

## Preparação dos dados

## Importando dados

<!--chapter:end:05-importacao_exportacao_dados.Rmd-->

# Boas práticas de como escrever um código

## Nomes de arquivos

## Comentar as linahs de comando

## Nome de objetos

### Sintaxe

<!--chapter:end:06-boas_praticas.Rmd-->

# Pacotes

## Estrutura básica de um pacote

## Instalação de um pacote

## Objetivos de um pacote

## Utilizando funções de um pacote

## Carregando e anexando um pacote

## *NAMESPACE* de um pacote

## Usando os operadores `::` e `:::`

<!--chapter:end:07-pacotes.Rmd-->

# Ambientes e caminho de busca

## A superatribuição

<!--chapter:end:08-ambiente_caminho_busca.Rmd-->

# Interfaces com outras linguagens

<!--chapter:end:09-interfaces_r.Rmd-->

# Considerações e preparação para Programação em R (Nível Intermediário)

<!--chapter:end:10-consideracoes_preparacao_volumeII.Rmd-->


# Referências {-}


<!--chapter:end:99-referencias.Rmd-->

