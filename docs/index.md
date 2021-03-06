--- 
title: "Estudando o Ambiente R"
subtitle: "Volume I: Nível Básico"
author: "Ben Dêivide, Diego Arthur e Henrique JP Alves"
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
