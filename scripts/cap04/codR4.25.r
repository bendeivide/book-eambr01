##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.25
##################################


# Repete o numero 2 tres vezes
rep(x = 2, times = 3)

# Repete o vetor 1:3 tres vezes
rep(x = 1:3, times = 3)

# Repete cada numero do vetor, tres vezes
rep(x = 1:3, each = 3)


# Repete cada numero do vetor duas vezes,
# porem, o comprimento dessa sequencia esta
# limitado a 4
rep(1:3, each = 2, length.out = 4)

# O vetor eh repetido ate obter uma sequencia de tamanho 7
rep(x = 1:3, length.out = 7)

# (Versao mais rapida de rep) O vetor eh repetido ate obter uma
# sequencia de tamanho 15
rep_len(x = 1:10, length.out = 15)

# Sequencia criada de 1 a 2, espacada em 0.1
seq(from = 1, to = 2, by = 0.1)

# Sequencia criada de 1 a 10, espacada em 1
seq(from = 1, to = 10, by = 1)

# Sequencia criada de 1 a 10 de forma equisespacada de comprimento 20
seq(from = 1, to = 10, length.out = 20)


# Eh o mesmo que 1:length(y)
y <- rnorm(10)
seq(along.with = y)

# Sequencia de 1 a 20
seq(20)

# Sequencia criada de 10 a 100 de mesmo comprimento de x
x <- 1:10
seq(from = 10, to = 100, along.with = x)

# (Versao mais rapida para seq) Eh o mesmo que
# 1:length(w)
w <- c(4, 3, 6, 9)
seq_along(w)

# (Versao mais rapida para seq) Eh o mesmo que 1:4
seq_len(4)

# Eh o mesmo que seq(3) e seq(2) concatenados
sequence(nvec = c(3, 2))

# Eh o mesmo que c(seq(from = 2, length.out = 3), seq(from = 2, length.out = 2))
sequence(nvec = c(3, 2), from = 2L)

# Eh o mesmo que c(seq(from = 2, by = 2, length.out = 3), seq(from = 2, by = 2, length.out = 2))
sequence(nvec = c(3, 2), from = 2L, by = 2L)

# Eh o mesmo que c(seq(by = -1, length.out = 3), seq(by = 1, length.out = 2)
sequence(nvec = c(3, 2), by = c(-1L, 1L))

# Repetir seq(3) cinco vezes e agrupar em matriz
replicate(n = 5, seq(3), simplify = TRUE)

# Repetir seq(3) cinco vezes e agrupar em lista
replicate(n = 5, seq(3), simplify = FALSE)

# Repetir rnorm(10) cinco vezes e agrupar em matriz
replicate(n = 3, expr = rnorm(10), simplify = TRUE)

# Repetir rnorm(10) cinco vezes e agrupar em lista
replicate(n = 3, expr = rnorm(10), simplify = FALSE)

# Analise de experimento
# 2 niveis com 8 repeticoes
gl(n = 2, k = 8, labels = c('Control', 'Treat'))

# Analise de experimento
## 20 parcelas com dois níveis (1 e 2)
gl(n = 2, k = 1, length = 20)
