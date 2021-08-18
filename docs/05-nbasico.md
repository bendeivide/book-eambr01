
---
output:
  tufte::tufte_html:
    tufte_variant: "envisioned"
  
  
---




# Boas práticas de como escrever um código

Nesse momento, entendemos os principais objetos para escrevermos os nossos scripts. Quando escrevemos um código, duas consequências ocorrem: - guardá-lo para futuras consultas, ou - compartilhamento.

Nesses dois casos, percebemos que alguém irá ler esse código, ou até mesmo o próprio usuário, irá retornar àquelas linhas de código e tentar raciocinar quais as ideias por trás disso tudo. Para um melhor entendimento de seu script, nada mais importante do que uma boa escrita, separação das estruturas por hierarquização, comentários, etc.

Uma primeira ferramenta que pode ser configurada para quem usa o rstudio é acionar todas as opções de diagnóstico do seu código. Para isso no menu:

- Tools > Global options > Code > Editing. Marque todas as opções em General;
- Tools > Global options > Code > Display, Marque todas as opções;
- Tools > Global options > Code > Diagnostics. Marque todas as opções em R Diagnostics.

Com isso, colorações nas linhas de comando ocorrerão, distinguindo diversas estruturas, como linhas de comentário, funções, espaçamentos, dentre outras coisas.

Uma vez feito isso, vamos para o passo seguinte que são as boas práticas de como se escrever um script. Temos algumas ferramentas prontas, como o pacote styler e como alternativa o formatR, que automatiza todo o nosso código seja em script, contido em um pacote, ou diretório. Acesse https://yihui.org/formatr, para mais detalhes. Para instalar e anexar o pacote styler, use as linhas de comando:

 ``` r
# Instalando pacote
install.packages(styler)
# Carregando e anexando
library(styler)

```
Vejamos a seguinte ilustração, para entendermos a funcionabilidade desse pacote.

$$IMAGEM$$


Pela Figura 17, percebemos que inicialmente, a leitura do código sem nenhum padrão de hierarquização, de funções dentro de funções, torna mais difícil a leitura quando não seguimos algumas regras básicas de espaçamentos iniciais nas linhas de comando. Ao passo que, após aplicar a função styler:::style_active_file(), conseguimos distinguir quais as funções que estão dentro de outras, bem como as suas expressões.

## Nomes de arquivos

Apesar de toda essa facilidade, vamos apresentar algumas ideias. A primeira noção é o nome do arquivo. Padronizem a extensão .R e evitem espaços em nomes compostos,

Boa escolha:
-----------
script.R
nome_composto.R
nome-composto.R

Má escolha:
-----------
script.r
nome composto.r


## Comentar as linahs de comando

Sempre que escrever uma linha de comando ou uma sequência de linhas de comando para um mesmo fim, comente sobre a ideia que esse fragmento de código quer repassar, usando #. Evitem acentos e símbolos especiais, porque os novos acessos ao script, dependendo da codificação que o RStudio esteja utilizando ou o seu sistema operacional, pode desconfigurar todo o arquivo.

Boa escolha:
-----------
# Objeto x
x <- 1:10
# Calculo da media
mean(x)

Má escolha:
-----------
x <- 1:10
mean(x)

## Nome de objetos

Levem em consideração que nomes de objetos é uma forma de acessarmos os objetos no R, e não os nomes das variáveis que serão utilizados em nossos relatórios para escrever sobre um problema real. Portanto, a escolha desses nomes devem ser mais simples, curtos, sem acentos ou símbolos não ASCII, e de preferência apenas letras minúsculas.

Boa escolha:
-----------
nome_curto
aux1

Má escolha:
-----------
nome_muito_grande
Nome_Grande
Aux1

Sempre que possível evite nomes já utilizados no R, para outros fins,

Má escolha:
-----------
T <- "Nada"
c <- 5
sd <- 5 + 1
mean <- 3 * 4

Para verificar se determinado nome já existe, use a função exists(), isto é, exists("mean"). Se a função retornar TRUE, significa que já existe esse nome, caso contrário, FALSE.

### Sintaxe

Um dos erros mais comuns na sintaxe de um código é o **espaçamento** entre os operadores básicos na linguagem R, exceto para os operadores :, :: e :::. Use sempre um espaço após a vírgula.

Boa escolha:
-----------
x <- 1:10
media <- mean(x + 1 / length(x), na.rm = TRUE)
base::mean(x)

Má escolha:
-----------
x <- 1 : 10
media<-mean(x+1/length(x),na.rm=TRUE)
base :: mean(x)

Para facilitar pode ser utilizado a função styler::style_text(), isto é,

 ``` r
comando <- "media<-mean(x+1/length(x),na.rm=TRUE)"
styler::style_text(comando)

```
media <- mean(x + 1 / length(x), na.rm = TRUE)


Se necessário use mais de um espaço em uma linha para o alinhamento para <- ou =, bem como um espaço antes do parêntese, a menos que seja uma função,

Boa escolha:
-----------
data.frame(a = 1,
           b = "Ben")

function(){
  x    <- 10
  vari <- x + 1
  return(vari)
}

for (i in 1:10) i + 1

Má escolha:
-----------
function () 1
for(i in 1:10) i + 1

Não insira espaços na condição entre parêntese ou nos itens de indexação, a menos que este último contenha uma vírgula,

Boa escolha:
-----------
if (verbose)
x11 <- mat[1, 1]
x1  <- mat[1, ]

Má escolha:
-----------
if ( verbose )
x11 <- mat[1,1]
x1  <- mat[1,]

Quando usamos chaves em um comando, devemos evitar abri-lo e fechá-lo na mesma linha. E ainda, quando é função, as linhas de comando inseridas dentro das chaves, inserimos um recuo de dois espaços para entendermos a hierarquização das funções, isto é, função dentro de função. Veja,

Boa escolha:
-----------
fx <- function(x) {
  if (x > 2) {
    print("Maior que 2!")
  } else {
    print("Menor que 2!")
  }
}

for (i in 1:10) {
  x <- i + 1
}

Má escolha:
-----------
fx <- function(x) {
if (x > 2) {
print("Maior que 2!")
} else {
print("Menor que 2!")
}
}

for (i in 1:10) {x <- i + 1}


Observe também que sempre quando iniciamos a abertura de uma chave, damos um espaço para separar do fechamento do parêntese, sempre quando usamos em uma função. Por fim, sempre use a atribuição com <-, e = para definir os argumentos de uma função,

Boa escolha:
-----------
fx <- function(x = NULL) 10
a  <- "Nome"

Má escolha:
-----------
fx = function(x = NULL) 10
a = "Nome"

Para códigos mais complexos, use o pacote styler e como alternativa o formatR, pois muito mais recursos podem ser utilizados. Para consultas, acesse também Wickham (2015), mais específico, Estilo de código, e ainda Advanced R, 1ed, Style guide, The tidyverse style guide e Google’s R Style Guide.
