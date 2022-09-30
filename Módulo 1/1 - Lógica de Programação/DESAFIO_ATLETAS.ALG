Algoritmo "desafio_atletas"

Var

   maisAlto, nome, sexo : caractere
   i, n : inteiro
   contador, contH, peso, testeAltura, altura, pesoMedio, alturaMedia, porcentagem : real
   soma, somaMulheres, contM : real

Inicio

      //Entrada de Dados
   escreva("Qual a quantidade de atletas? ")
   leia(n)

   soma <- 0
   contador <- 0
   contH <- 0
   contM <- 0
   somaMulheres <- 0
   testeAltura <- 0

   para i de 0 ate n-1 faca
      escreval("Digite os dados do atleta número ", i+1, ": ")
      escreva("Nome: ")
      leia(nome)
      
      escreva("Sexo: ")
      leia(sexo)

      enquanto (sexo <> "F") e (sexo <> "M")faca
         escreva("Valor inexistente, tente novamente: ")
         leia(sexo)
      fimenquanto
      
      escreva("Altura: ")
      leia(altura)
      
      enquanto altura <= 0 faca
         escreva("Valor invalido! Favor digitar um valor positivo: ")
         leia(altura)
      fimenquanto
      
      escreva("Peso: ")
      leia(peso)
      
      enquanto peso <= 0 faca
         escreva("Valor invalido! Favor digitar um valor positivo: ")
         leia(peso)
      fimenquanto

      soma <- soma + peso
      contador <- contador + 1

      se altura > testeAltura entao
         maisAlto <- nome
         testeAltura <- altura
      fimse

      se sexo = "M" entao
         contH <- contH + 1
      fimse

      se sexo = "F" entao
         somaMulheres <- somaMulheres + altura
         contM <- contM + 1
      fimse

   fimpara
   
   //Tratamento dos Dados

   pesoMedio <- soma / contador
   porcentagem <- contH * 100 / n
   alturaMedia <- somaMulheres / contM
   alturaMedia <- somaMulheres / contM
   
   //Saída de Dados
   
   escreval
   escreval("RELATÓRIO: ")
   escreval
   escreval("Peso médio dos atletas: ", pesoMedio:4:2)
   escreva("Atleta mais alto: ", maisAlto)
   escreval("Porcentagem de homens: ", porcentagem:4:2, " %")
   escreval("Altura média das mulheres: ", alturaMedia:4:2)

Fimalgoritmo