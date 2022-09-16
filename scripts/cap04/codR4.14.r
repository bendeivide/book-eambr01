##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.14
##################################


# Criando um objeto de atributo class 'factor':
fator <- factor('a'); fator

# O atributo class muda a forma dos elementos. Veja quando retiramos o atributo
# classe 'factor', o objeto retorna o valor 1
unclass(fator)


# Para confirmar essa afirmacao anterior, vejamos o modo
mode(fator); typeof(fator)

# Apesar do resultado retornar 1, veja que ele nao se comporta como numerico
is.numeric(fator); is.integer(fator)