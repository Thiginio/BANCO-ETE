          /* Atividade ClassRoom BANCO ETE 	
          
		Aluno: Thiago Virginio	
		Turma: 1°A - DS - Subsequente; Noite	
		Matéria: LPC 
		Prof.: SILVIO MONTE 

	     Github: 
 				
	        1 - Apenas um cliente por execução;
	        2 - Ao criar conta corrente, obrigatório perguntar se deseja realizar deposito inicial e criar automaticamente conta poupança;
	        3 - Necessário saldo para transferência entre contas;
	        4 - As contas precisam ter: nome do titular, agência, número da conta e dígito verificador;
	        5 - Operações na CC: saque, depósito e exibir conta;
	        6 - Operações na CP: Aplicar na poupança, resgate e exibir conta;
	        7 - Comentar todo trecho do código.
	        8 - Postar no GitHub
	        
          */   
programa
{
	funcao inicio()
	{
		// Entrada de Variaveis
		
		cadeia cliente
		inteiro opcao, digitoAgencia, digitoContaC, contaCorrente, contaPoupanca, depositar
		real valor, saldoD = 0.0, saldoCC = 0.0, saldoCP = 0.0
		logico menu = verdadeiro, usuario = falso

          faca {

               // Opções de inicialização
  
			escreva("\n")
			escreva("============== BEM VINDO AO BANCO ETE ===============" + "\n")
			escreva("|                                                   |" + "\n")
			escreva("|        Escolha uma das seguintes opções:          |" + "\n")
			escreva("|                                                   |" + "\n")
			escreva("| 1. Criar/Abrir uma nova Conta                     |" + "\n")
			escreva("| 2. Exibir Saldo Atual da conta                    |" + "\n")
			escreva("| 3. Saque em Conta Corrente                        |" + "\n")
			escreva("| 4. Aplicar na Conta Poupança                      |" + "\n")
			escreva("| 5. Depósito em Conta Corrente                     |" + "\n")
			escreva("| 6. Resgate em Conta Poupança                      |" + "\n")
			escreva("| 7. Sair                                           |" + "\n")
			escreva("|                                                   |" + "\n")
			escreva("=====================================================" + "\n")
			escreva("\n")
			escreva("Insira opção: ")
			leia(opcao)
			limpa()

			escolha(opcao) 
			
			{

                   // Estrutura de Controles

				caso 1:
					escreva("Insira o Nome do Titular: ")
					leia(cliente)
					
					escreva("\nDigite o Número da sua agência: ")
					leia(digitoAgencia)
					
					escreva("\nDigite o número da Conta Corrente: ")
					leia(contaCorrente)
					
					escreva("\nDigite o Número Verificador da sua conta: ")
					leia(digitoContaC)
					limpa()

					escreva("\nConta Corrente criada com sucesso!", "\n")
					usuario = verdadeiro
					
					escreva("\nBem vindo(a) ao Banco ETE, " + cliente + "\n")
					
					escreva("Agencia: " + digitoAgencia + "\n")
					
					escreva("Conta Corrente: " + contaCorrente + "-" + digitoContaC + "\n")
					
					escreva("Saldo disponivel: R$ " + saldoD + "\n")

					escreva("\nDeseja realizar um deposito inicial na sua conta? [ 1 - SIM ][ 2 - NÃO ]\n")
					leia(depositar)
					limpa()

					se (depositar == 1) 
					
					{
						escreva("\nQual valor você deseja depositar? R$ ")
						leia(valor)
						
						saldoCC = saldoCC + valor
						
						escreva("\nDepósito realizado com sucesso!\n")
						
						escreva("O seu saldo atual na Conta Corrente é de: R$ " + saldoCC + "\n")
					} 
					
					senao

					{
						escreva("\nEscolha outra opção do nosso menu.\n")
					}

					pare

				caso 2:
					se (usuario == falso) 
					{
						escreva("\nVocê precisa de uma conta para acessar ao saldo do banco.\n")
					} 
					
					senao 
					
					{
						limpa()
						
						escreva("Saldo Conta Corrente: R$ " + saldoCC + "\n")
						
						escreva("Saldo Conta Poupança: R$ " + saldoCP + "\n")
					}
					pare

				caso 3:
					se (usuario == falso) 
					{
						escreva("\nVocê precisa de uma conta para fazer um saque no banco.\n")
					} 
					
					senao 
					
					{
						limpa()
						
						escreva("\nQual valor você deseja sacar? R$ ")
						leia(valor)

						se ((saldoCC - valor) >= 0) 
						{
							saldoCC = saldoCC - valor
							
							escreva("\nSaque realizado com sucesso!")
							
							escreva("\nSeu saldo atual na Conta Corrente é de: R$ " + saldoCC + "\n")
						} 
						
						senao 
						
						{
							escreva("\nValor insuficiente para saque! \n")
						}
					}
					pare

				caso 4:
					se (usuario == falso) 
					{
						escreva("\nVocê precisa de uma conta para aplicar.\n")
					} 
					
					senao 
					
					{
						limpa()
						
						escreva("\nQual valor deseja Aplicar? R$ ")
						leia(valor)

						se ((saldoCC - valor) >= 0) 
						{
							saldoCC = saldoCC - valor
							
							saldoCP = saldoCP + valor
							
							escreva("\nSaldo atual Conta Corrente: R$ " + saldoCC + "\n")
							
							escreva("Saldo atual Conta Poupança: R$ " + saldoCP + "\n")
						} 
						
						senao 
						
						{
							escreva("\nValor insuficiente para Aplicação.\n")
							
							escreva("Seu saldo atual na Conta Corrente é de: R$ " + saldoCC + "\n")
						}
					}
					pare

				caso 5:
					se (usuario == falso) 
					
					{
						escreva("\nVocê precisa de uma conta para fazer um Deposito.\n")
						
					} 
					
					senao 
					
					{
						limpa()
						escreva("\nQual valor você deseja depositar? R$ ")
						leia(valor)
						saldoCC = saldoCC + valor
						escreva("\nSeu saldo atual é de: R$ " + saldoCC + "\n")
					}
					pare

				caso 6:
					se (usuario == falso) 
					
					{
						escreva("\nInfelizmente você precisa de uma conta para fazer um resgate.\n")
					} 
					
					senao 
					
					{
						limpa()
						escreva("\nQual será o valor a ser resgatado? R$ ")
						leia(valor)

						se ((saldoCP - valor) >= 0) 
						{
							saldoCC = saldoCC + valor
							saldoCP = saldoCP - valor
							escreva("\nO seu saldo atual da Conta Corrente é de: R$ " + saldoCC + "\n")
							escreva("O seu saldo atual da Conta Poupança é de: R$ " + saldoCP + "\n")
						} 
						
						senao
						
						{
							escreva("\ninfelizmente, o valor é insuficiente para resgate.\n")
							escreva("O saldo atual em sua Conta Poupança é de: R$ " + saldoCP + "\n")
						}
					}
					pare

				caso 7:
					escreva("\nAté logo! Volte sempre que quiser!!!\n")
					menu = falso
					pare

				caso contrario:
				
					escreva("Por Favor, digite uma opção validade!", "\n")
			}
		} 		
		
		enquanto (menu == verdadeiro)
	}	

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1560; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */