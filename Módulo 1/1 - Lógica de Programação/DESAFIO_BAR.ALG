Algoritmo "desafio_bar"

Var

   sexo : caractere
   qtdCerveja, qtdRefrigerante, qtdEspetinho : inteiro
   consumo, ingresso, totalPagar : real
   

Inicio

   escreval("Sexo: ")
   leia(sexo)
   escreval("Quantidade de cerveja: ")
   leia(qtdCerveja)
   escreval("Quantidade de refrigerantes: ")
   leia(qtdRefrigerante)
   escreval("Quantidade de espetinhos: ")
   leia(qtdEspetinho)
   
   consumo <- (qtdCerveja * 5) + (qtdRefrigerante * 3) + (qtdEspetinho * 7)
   
   se sexo = "M" entao
      ingresso <- 10
   senao
      ingresso <- 8
   fimse
   
   se consumo >= 30 entao
      totalPagar <- consumo + ingresso
      escreval("RELATÓRIO:")
      escreval("Consumo = R$ ", consumo:4:2)
      escreval("Isento de Couvert")
      escreval("Ingresso = ", ingresso:4:2)
      escreval
      escreval("Valor a pagar = R$ ", totalPagar:4:2)
   senao
      totalPagar <- consumo + ingresso + 4
      escreval("RELATÓRIO:")
      escreval("Consumo = R$ ", consumo:4:2)
      escreval("Couvert = R$ 4.00")
      escreval("Ingresso = ", ingresso:4:2)
      escreval
      escreval("Valor a pagar = R$ ", totalPagar:4:2)
   fimse

Fimalgoritmo