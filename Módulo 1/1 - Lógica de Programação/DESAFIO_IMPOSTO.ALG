Algoritmo "desafio_imposto"

Var

salario, servico, capital, medico, educacao : real
impSalario, impServ, impCap : real
maxDed, gastosDed, impBruto, impDev, deducao : real

Inicio

      //Entrada de dados ------------------------------------
      
      escreva("Renda anual com sal?rio: ")
      leia(salario)
      escreva("Renda anual com presta??o de servi?o: ")
      leia(servico)
      escreva("Renda anual com ganho de capital: ")
      leia(capital)
      escreva("Gastos m?dicos: ")
      leia(medico)
      escreva("Gastos educacionais: ")
      leia(educacao)
      
      //Processamento de dados ------------------------------------
      
      //Sal?rio
      se (salario / 12) < 3000 entao
         impSalario <- 0
      senao
           se (salario / 12) < 5000 entao
              impSalario <- 10
           senao
                impSalario <- 20
           fimse
      fimse
      
      impSalario <- salario * impSalario / 100
      
      //Presta??o de Servi?o
      se servico > 0 entao
         impServ <- 15
      senao
         impServ <- 0
      fimse
      
      impServ <- servico * impServ / 100
      
      //Ganho de Capital
      se capital > 0 entao
         impCap <- 20
      senao
         impCap <- 0
      fimse

      impCap <- capital * impCap / 100
      
      //Dedu??es
      maxDed <- ((impSalario + impServ + impCap) * 30) / 100
      gastosDed <- medico + educacao
      
      //Resumo
      impBruto <- impSalario + impServ + impCap
      
      se maxDed < gastosDed entao
         impDev <- impBruto - maxDed
         deducao <- maxDed
      senao
         impDev <- impBruto - gastosDed
         deducao <- gastosDed
      fimse

      
      
      //Sa?da de dados ------------------------------------
      escreval("----------------------------------")
      escreval
      escreval("RELAT?RIO DE IMPOSTO DE RENDA")
      escreval
      escreval("CONSOLIDADO DE RENDA:")
      escreval("Imposto sobre sal?rio: ", impSalario:4:2)
      escreval("Imposto sobre servi?o: ", impServ:4:2)
      escreval("Imposto sobre ganho de capital: ", impCap:4:2)
      escreval
      escreval("DEDU??ES:")
      escreval("M?ximo dedut?vel: ", maxDed:4:2)
      escreval("Gastos dedut?veis: ", gastosDed:4:2)
      escreval
      escreval("RESUMO:")
      escreval("Imposto bruto total: ", impBruto:4:2)
      escreval("Abatimento: ", deducao:4:2)
      escreval("Imposto devido: ", impDev:4:2)

Fimalgoritmo