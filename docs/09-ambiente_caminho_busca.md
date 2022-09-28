# Boas práticas de como escrever um código

## Introdução

Nesse momento, entendemos os principais objetos para escrevermos os nossos scripts. Quando escrevemos um código, duas consequências ocorrem:

- guardá-lo para futuras consultas, ou

- compartilhamento.

Nesses dois casos, percebemos que alguém irá ler esse código, ou até mesmo o próprio usuário, irá retornar àquelas linhas de código e tentar raciocinar quais as ideias por trás disso tudo. Para um melhor entendimento de seu script, nada mais importante do que uma boa escrita, separação das estruturas por hierarquização, comentários, etc.

Uma primeira ferramenta que pode ser configurada para quem usa o RStudio é acionar todas as opções de diagnóstico do seu código. Para isso no menu:

- Tools > Global options > Code > Editing. Marque todas as opções em General;

- Tools > Global options > Code > Display, Marque todas as opções;

- Tools > Global options > Code > Diagnostics. Marque todas as opções em R Diagnostics.

Com isso, colorações nas linhas de comando ocorrerão, distinguindo diversas estruturas, como linhas de comentário, funções, espaçamentos, dentre outras coisas.

Uma vez feito isso, vamos para o passo seguinte que são as boas práticas de como se escrever um script. Temos algumas ferramentas prontas, como o pacote styler e como alternativa o pacote **formatR**, que automatiza todo o nosso código seja em script, contido em um pacote, ou diretório. Acesse <https://yihui.org/formatr>, para mais detalhes. Para instalar e anexar o pacote styler, use as linhas de comando:


```r
> # Instalando pacote
> install.packages(styler)
> # Carregando e anexando
> library(styler)
```

Vejamos a Figura \@ref(fig:configuracaoStyler), para entendermos a funcionabilidade desse pacote.


```r
knitr::include_graphics("img/Configuracao_Styler.png")
```

<div class="figure" style="text-align: center">
<img src="img/Configuracao_Styler.png" alt="Passos para configurar o pacote styler." width="80%" />
<p class="caption">(\#fig:configuracaoStyler)Passos para configurar o pacote styler.</p>
</div>
