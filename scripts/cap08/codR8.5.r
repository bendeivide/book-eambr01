##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R8.5
##################################


# Boa escolha:
# -----------
x <- 1:10
media <- mean(x + 1 / length(x), na.rm = TRUE)
base::mean(x)

#Má escolha:
  -----------
  x <- 1 : 10
media<-mean(x+1/length(x),na.rm=TRUE)
base :: mean(x)



# Boa escolha:
# -----------
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

# Má escolha:
# -----------
fx <- function(x) {
  if (x > 2) { print("Maior que 2!")}
  else { print("Menor que 2!")}
}
for (i in 1:10) {x <- i + 1}


# Boa escolha:
# -----------
if (verbose)
  x11 <- mat[1, 1]
x1  <- mat[1, ]
# Má escolha:
# -----------
if ( verbose )
  x11 <- mat[1,1]
x1  <- mat[1,]



# Boa escolha:
# -----------
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

# Má escolha:
# -----------
fx <- function(x) {
  if (x > 2) { print("Maior que 2!")}
  else { print("Menor que 2!")}
}
for (i in 1:10) {x <- i + 1}



# Boa escolha:
# -----------
fx <- function(x = NULL) 10
a  <- "Nome"

# Má escolha:
# -----------
fx = function(x = NULL) 10
a = "Nome"