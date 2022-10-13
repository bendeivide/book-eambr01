##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R9.5
##################################


# Instale o pacote SMR
  # install.packages(SMR)  # Descomente a linha de comando para instalar
  # Carregando e chamando funcoes exportadas do pacote SMR
  SMR::pSMR(q = 2, size = 10, df = 3)

# Carregando e chamando funcoes nao exportadas ao pacote
  SMR:::GaussLegendre(size = 4)
