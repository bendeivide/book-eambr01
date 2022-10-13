##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R9.1
##################################


# Carregando e anexando o pacote midrangeMCP
library(midrangeMCP)
# Usando a função MRtest() desse pacote
#-----
# Dados simulados de um experimento em DIC (Delineamento Inteiramente Casualizado)
# Variavel resposta
rv <- c(100.08, 105.66, 97.64, 100.11, 102.60,     121.29, 100.80, 99.11, 104.43, 122.18, 119.49, 124.37, 123.19, 134.16, 125.67, 128.88, 148.07, 134.27, 151.53, 127.31)
# Tratamento
treat <- factor(rep(LETTERS[1:5], each = 4))
# Anava
res     <- anova(aov(rv~treat))
DFerror <- res$Df[2]
MSerror <- res$`Mean Sq`[2]
# Aplicando testes
results <- midrangeMCP::MRtest(y = rv,
                               trt = treat,
                               dferror = DFerror,
                               mserror = MSerror,
                               alpha = 0.05,
                               main = 'PCMs',
                               MCP = c('all')); results

midrangeMCP::MRbarplot(results)