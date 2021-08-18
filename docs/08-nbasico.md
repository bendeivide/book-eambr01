
---
output:
  pdf_document: default
  html_document: default
---

# Interfaces com outras linguagens

Como afirmado no terceiro princício,

- **Princípio da Interface**: Interfaces para outros programas são parte do R,

na base do R temos integrações prontas para implementar códigos em C e FORTRAN, como também outras linguagens. Por exemplo, na base do R existe um pacote chamado tcltk que integra a linguagem Tcl/Tk para o R. Esse pacote nos permite desenvolver interfaces gráficas para os nossos códigos.

Diversos outros pacotes, disponibilizados sob o CRAN realizaram diversas outras linguagens, que elencamos alguns,


Pacote   | Linguagem integrada
--------- | ------
tcltk | Linguagem Tcl/Tk
RGtk2 | Linguagem Gtk+
rJava | Linguagem Java
rmarkdown | Linguagens HTML, JavaScript, CSS, Markdown, LATEX
reticulate | Linguagem Python
JuliaCall, XRJulia |Linguagem Julia
Rcpp | Linguagem C++
gecoder | Linguagem Ruby
