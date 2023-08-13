programa {
	
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
	inclua biblioteca Texto --> x
	inclua biblioteca Tipos --> ti
	
	const inteiro tamanhoListaLivros = 3
	
	cadeia livrosCatA[tamanhoListaLivros] = {"Código Limpo.", "Introdução à Inteligência Artificial: uma abordagem não técnica.", "HTML5 e CSS3: guia prático e visual."}
	cadeia autorLivrosCatA[tamanhoListaLivros] = {"Robert Cecil Martin.","Tom Taulli.", "Elizabeth Castro."}
	cadeia valorLivrosCatA[tamanhoListaLivros] = {"R$ 91,99.", "R$ 68,49.", "R$ 109,27."}
	cadeia tituloLivroCatA[tamanhoListaLivros] = {"CLI", "IIA", "HTM"}
	
	cadeia livrosCatB[tamanhoListaLivros] = {"Akira (Vol. #1.)", "Dragon Ball Super (Vol. #1.)", "Card Captor Sakura (Vol. #2.)"}
	cadeia autorLivrosCatB[tamanhoListaLivros] = {"Katsuhiro Otomo.", "Akira Toriyama.", "Nanase Ohkawa."}
	cadeia valorLivrosCatB[tamanhoListaLivros] = {"R$ 80,31", "R$ 43,81", "R$ 23,92"}
	cadeia tituloLivroCatB[tamanhoListaLivros] = {"AKR", "DBS", "CCS"}
	
	cadeia livrosCatC[tamanhoListaLivros] = {"Além do bem e do mal.", "O segundo sexo.", "Mulheres, raça e classe."}
	cadeia autorLivrosCatC[tamanhoListaLivros] ={"Friedrich Nietzsche.", "Simone de Beauvior.", "Angela Davis."} 
	cadeia valorLivrosCatC[tamanhoListaLivros] = {"R$ 27,99.", "R$ 99,90.", "R$ 51,78."}
	cadeia tituloLivroCatC[tamanhoListaLivros] = {"ABM", "OSX", "MRC"}

	cadeia matrizLogins[5][2] = {{"Beatriz", "1234"}, {"Bruno", "5678"}, {"Cintia", "1510"}, {"Cristian", "9123"}, {"Felipe", "4567"}}
	cadeia usuario=""
	cadeia senha=""
	cadeia usuario2=""
	cadeia senha2=""

	funcao login(){
		
		escreva("Por favor, digite seu usuário: ")
		leia(usuario)
		escreva("Agora por favor, digite sua senha: ")
		leia(senha)
		limpa()
	}

	funcao desenhaLogo()
    {
        const inteiro LINHA = 5, COLUNA = 95

        escreva("                      ____ ____ ____ ____ _________ ____ ____ ____ ____ _____\n")
        escreva("                     ||T |||E |||C |||H |||       |||B |||O |||O |||K |||S ||\n")
        escreva("                     ||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||\n")
        escreva("                     |/__\\|/__\\|/__\\|/__\\|/_______\\|/__\\|/__\\|/__\\|/__\\|/__\\|\n\n\n")

        para(inteiro i=0; i<LINHA; i++) {
            para(inteiro j=0; j<COLUNA; j++) {
                se(i == 2 e j < 20) {
					para(inteiro k=0; k<COLUNA; k++){
						se(k<4 ou k>=91) {
							escreva("|")
						} senao se((k>=5 e k<45) ou (k>=50 e k<90)) { 
							se(k==5 e j==5) { 
								escreva("TECH BOOKS ®")
							} senao se(k>5 e k<=33 e j==5) {
								escreva("_")
							} senao se(k>20 e k<45 e j==5) {
								escreva("")
							} senao {
								escreva("_")
							}
						} senao se(k == 47 ou k == 48) {
							escreva("║")
						} senao se(k == 46) {
							escreva("")
						} senao {
							escreva(" ")
						}
					}
					se(j != 19) {
						escreva("\n")
					}
				} senao se(i < 2 e j == 45) {
					escreva(" \\/ ")
				} senao se(i > 2 e j == 45) {
					escreva(" /\\ ")
				} senao se(i != 2 e j < 91) {
					escreva("#")
				}
			}
			escreva("\n")
		}
	}
	
	funcao folhearPaginas() {
		escreva("Folheando Páginas")
		para(inteiro i = 0; i < 3; i++) {
			escreva(".")
			u.aguarde(500)
		}
		escreva("\n\n")
	}

	funcao inteiro menuPrincipal() {
		cadeia valor
		faca {
			limpa()
			escreva("\nUsuário logado como: ", usuario,"\n\n")
			escreva("+---------------------------------------------------+\n")
			escreva("! Bem-vindo(a) à livraria Tech Books!               !\n")
			escreva("!---------------------------------------------------!\n")
			escreva("! Opções disponíveis:                               !\n")
			escreva("!					            !\n")
			escreva("! 1. Tecnologia             		            !\n")
			escreva("! 2. Mangá             			            !\n")
			escreva("! 3. Filosofia		                            !\n")
			escreva("! 4. Sair da livraria		                    !\n")
			escreva("+---------------------------------------------------+\n\n")
			escreva("Digite a sua categoria desejada: ")
			leia(valor)
			limpa()
			se(ti.cadeia_e_inteiro(valor,10) == falso) {
				escreva("Hey, parece que você está tentando burlar o sistema. Voltando ao menu.\n\n")
				folhearPaginas()
				u.aguarde(500)
			}
			senao se(ti.cadeia_para_inteiro(valor,10) < 1 ou ti.cadeia_para_inteiro(valor,10) > 4) {
      			escreva("Voce escolheu um número inválido. Por favor, escolha uma das opções apresentadas.\n")
				u.aguarde(2000)
      		}
		} enquanto(ti.cadeia_e_inteiro(valor,10) == falso)
		retorne ti.cadeia_para_inteiro(valor,10)
	}

	funcao inteiro mostrarProdutos() {
		
		
		inteiro numero
		faca{
			escreva("Escolha entre os livros:\n1-livro1\n2-livro2\n3-livro3\n4-Sair\n")
          	leia(numero)
          	se(numero < 1 ou numero > 4) {
          		escreva("Opção invalida!\n")
          	}	
		} enquanto(numero < 1 ou numero > 4)
		retorne numero
	}
	
	funcao desenhaLivro(cadeia titulo, cadeia valor, cadeia autor, cadeia tituloCapa){
		escreva("_________________________________________________________________________\n")
		desenhaCapaIndiv(tituloCapa)
		escreva("\n")
		escreva("Livro: ", titulo, "\n")
		escreva("Autor(a): ", autor, "\n")
		escreva("Preço(a): ", valor, "\n")
		escreva("*\n")
		
	}

	funcao desenhaCapaIndiv(cadeia letras){
		cadeia letra1 = x.extrair_subtexto(letras, 0, 1)
		cadeia letra2 = x.extrair_subtexto(letras, 1, 2)
		cadeia letra3 = x.extrair_subtexto(letras, 2, 3)
		escreva("\n")
		escreva("   ,   ,\n")
  		escreva("  /////|\n")
 		escreva(" ///// |\n")
		escreva("|~~~|  |\n")
		escreva("|===|  |\n")
		escreva("|"+letra1+"  |  |\n")
		escreva("| "+letra2+" |  |\n")
		escreva("|  "+letra3+"| /\n")
		escreva("|===|/\n")
		escreva("'---'\n")
	}

	funcao logico validarEntrada() {
		cadeia opcao
		escreva("Deseja ter a melhor experiência literária da sua vida? S/N\n")
		escreva("Digite o que o seu coração mandar: ")
		leia(opcao)
		se(opcao == "S" ou opcao == "s") {
			retorne verdadeiro
		}
		senao {
			escreva("Obrigado pelo seu interesse!\n")
			retorne falso
		}
	}
	
	funcao inicio() {

		logico controlador = falso
		logico verifica = verdadeiro
		logico verifica1 = verdadeiro
		cadeia opcao
		desenhaLogo()
		u.aguarde(1500)
		folhearPaginas()
		limpa()
		enquanto(validarEntrada() == verdadeiro) {
			enquanto(verifica1) {
				login()
	     		enquanto(controlador == falso){	
	  				para(inteiro i=0; i<5; i++){
   	  					se(usuario == matrizLogins[i][0] e senha == matrizLogins[i][1]){
   							usuario2 = usuario
   							senha2 = senha
	        				}
	  				}

					/*para(inteiro i=0; i<1; i++){
   	  					se(x.numero_caracteres(senha) < ti.cadeia_para_inteiro(matrizLogins[i][1],10)){
   							escreva("Senha muito pequena!\n")
   							login()
	        				}
	  				}*/
	  			
	   	     	se(usuario2 != "" e senha2 !=""){
	        			escreva("Seja bem vindo(a), ",usuario2)
	        			controlador=verdadeiro
	        		}
	        		senao {
	        			escreva("Usuario ou senha incorretas!\n")
	        			login()
	        			}
	        		}
		
			enquanto(verifica) {
				escolha(menuPrincipal()) {
					caso 1:
					escreva("CATEGORIA: \n\n") // opcao 1
					escreva("TECNOLOGIA\n")
					para (inteiro i = 0; i < tamanhoListaLivros; i++){
						desenhaLivro(livrosCatA[i], valorLivrosCatA[i], autorLivrosCatA[i], tituloLivroCatA[i])
						u.aguarde(2000)
					}
					escreva("_________________________________________________________________________\n\n")
					escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatA[0],"\n2 - ", livrosCatA[1], "\n3 - ", livrosCatA[2], "\n4 - Sair")
					escreva("\nDigite a sua opção: ")
					leia(opcao)
					enquanto((ti.cadeia_e_inteiro(opcao,10) == falso) ou (ti.cadeia_para_inteiro(opcao,10) < 1) ou (ti.cadeia_para_inteiro(opcao,10) > 4)) {
					
						se(ti.cadeia_e_inteiro(opcao,10) == falso){
							escreva("Hey, parece que você está tentando burlar o sistema. Voltando ao menu.\n\n")
							u.aguarde(2000)
							limpa()
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatA[0],"\n2 - ", livrosCatA[1], "\n3 - ", livrosCatA[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)	
						}
						senao se(ti.cadeia_para_inteiro(opcao,10) < 1 ou ti.cadeia_para_inteiro(opcao,10) > 4){
							limpa()
							escreva("Você digitou um número inválido!\n")
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatA[0],"\n2 - ", livrosCatA[1], "\n3 - ", livrosCatA[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)	
						}
					}
				
					se(ti.cadeia_para_inteiro(opcao,10) == 1){
						limpa()
						escreva("Você comprou o livro ",livrosCatA[0],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 2){
						limpa()
						escreva("Você comprou o livro ",livrosCatA[1],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 3){
						limpa()
						escreva("Você comprou o livro ",livrosCatA[2],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 4){
						limpa()
						folhearPaginas()
					}
				
			 		pare
			 	
					caso 2:
					escreva("CATEGORIA: \n\n") // opcao 2
					escreva("MANGÁ\n")
					para (inteiro i = 0; i < tamanhoListaLivros; i++){
						desenhaLivro(livrosCatB[i], valorLivrosCatB[i], autorLivrosCatB[i], tituloLivroCatB[i])
						u.aguarde(2000)
					}
					escreva("_________________________________________________________________________\n\n")
					escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatB[0],"\n2 - ", livrosCatB[1], "\n3 - ", livrosCatB[2], "\n4 - Sair")
					escreva("\nDigite a sua opção: ")
					leia(opcao)
					enquanto((ti.cadeia_e_inteiro(opcao,10) == falso) ou (ti.cadeia_para_inteiro(opcao,10) < 1) ou (ti.cadeia_para_inteiro(opcao,10) > 4)) {
					
						se(ti.cadeia_e_inteiro(opcao,10) == falso){
							escreva("Hey, parece que você está tentando burlar o sistema. Voltando ao menu.\n\n")
							u.aguarde(2000)
							limpa()
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatB[0],"\n2 - ", livrosCatB[1], "\n3 - ", livrosCatB[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)	
						}
						senao se(ti.cadeia_para_inteiro(opcao,10) < 1 ou ti.cadeia_para_inteiro(opcao,10) > 4){
							limpa()
							escreva("Você digitou um número inválido!\n")
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatB[0],"\n2 - ", livrosCatB[1], "\n3 - ", livrosCatB[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)	
						}
					}
					
					se(ti.cadeia_para_inteiro(opcao,10) == 1){
						limpa()
						escreva("Você comprou o livro ",livrosCatB[0],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 2){
						limpa()
						escreva("Você comprou o livro ",livrosCatB[1],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 3){
						limpa()
						escreva("Você comprou o livro ",livrosCatB[2],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 4){
						limpa()
						folhearPaginas()
					}
					pare

					caso 3:
					escreva("\nCATEGORIA: \n\n") // opcao 3
					escreva("FILOSOFIA\n")
					para (inteiro i = 0; i < tamanhoListaLivros; i++){
						desenhaLivro(livrosCatC[i], valorLivrosCatC[i], autorLivrosCatC[i], tituloLivroCatC[i])
						u.aguarde(2000)
					}
					escreva("_________________________________________________________________________\n\n")
					escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatC[0],"\n2 - ", livrosCatC[1], "\n3 - ", livrosCatC[2], "\n4 - Sair")
					escreva("\nDigite a sua opção: ")
					leia(opcao)
					enquanto((ti.cadeia_e_inteiro(opcao,10) == falso) ou (ti.cadeia_para_inteiro(opcao,10) < 1) ou (ti.cadeia_para_inteiro(opcao,10) > 4)) {
					
						se(ti.cadeia_e_inteiro(opcao,10) == falso){
							escreva("Hey, parece que você está tentando burlar o sistema. Voltando ao menu.\n\n")
							u.aguarde(2000)
							limpa()
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatC[0],"\n2 - ", livrosCatC[1], "\n3 - ", livrosCatC[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)
						}
						senao se(ti.cadeia_para_inteiro(opcao,10) < 1 ou ti.cadeia_para_inteiro(opcao,10) > 4){
							limpa()
							escreva("Você digitou um número inválido!\n")
							escreva("Digite o livro que você quer comprar: \n1 - ", livrosCatC[0],"\n2 - ", livrosCatC[1], "\n3 - ", livrosCatC[2], "\n4 - Sair")
							escreva("\nDigite a sua opção: ")
							leia(opcao)	
						}
					}
					
					se(ti.cadeia_para_inteiro(opcao,10) == 1){
						limpa()
						escreva("Você comprou o livro ",livrosCatC[0],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 2){
						limpa()
						escreva("Você comprou o livro ",livrosCatC[1],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 3){
						limpa()
						escreva("Você comprou o livro ",livrosCatC[2],"\nAguarde! Você será direcionado para o menu inicial.")
						u.aguarde(3000)
						limpa()
						folhearPaginas()
					}
					senao se(ti.cadeia_para_inteiro(opcao,10) == 4){
						limpa()
						folhearPaginas()
					}
					
				
					pare

					caso 4:
						escreva("Obrigado por utilizar a nossa biblioteca! Volte sempre.\n")
						u.aguarde(2000)
						folhearPaginas()
						limpa()
						controlador = falso
						verifica = falso
					pare
					}
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */