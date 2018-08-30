# -*- coding: utf-8 -*- 
import os

def clear_screen():
	os.system('cls' if os.name == 'nt' else 'clear')

def press_enter():
	input("Pressione enter para continuar...")

def error_alert():
	print("Opção inválida. Por favor selecione uma das opções abaixo.\n")

def print_blox():
		print("############################################################")
		print("#                                                          #")
		print("#              Trabalho de Cálculo Numérico.               #")
		print("#                  Equipe やめてお姉ちゃん                 #")
		print("#                                                          #")
		print("############################################################")
		print("")
		print("           **************************************           ")
		print("           *     Deslocamento do foguete        *           ")
		print("           *       f(d) = a*d - d*ln(d)         *           ")
		print("           **************************************           ")
		print("")

def credits():
		print("###########################################################")
		print("#                                                         #")
		print("#          UECE - Universidade Estadual do Ceará          #")
		print("#                                                         #")
		print("#                        Docente:                         #")
		print("#                      Suzana Matos                       #")
		print("#                                                         #")
		print("#                       Discentes:                        #")
		print("#           Alan Pereira de Vasconcelos Junior            #")
		print("#                  Camila Alves Barbosa                   #")
		print("#               Gabriel Furtado Lins Melo                 #")
		print("#            Hianuy Esperidiao de Sousa Pinto             #")
		print("#             Vinicius Amaro Sampaio (líder)              #")
		print("#                                                         #")
		print("#             Linguagens de Desenvolvimento:              #")
		print("#                     Python 3.4.3                        #")
		print("#                        Octave                           #")
		print("#                                                         #")
		print("###########################################################")
		print("")

def pos_falsa():
	print("Método da Posição Falsa.")
	# INSIRA O MÉTODO AQUI

def newt_raph():
	print("Método de Newton-Raphson.")
	# INSIRA O MÉTODO AQUI

def newt_raph_mod():
	print("Método de Newton-Raphson modificado.")
	# INSIRA O MÉTODO AQUI

def options():
	print("1. Calcular \"d\" com o método da Posição falsa.")
	print("2. Calcular \"d\" com o método de Newton-Raphson.")
	print("3. Calcular \"d\" com o método de Newton-Raphson modificado.")
	print("4. Créditos.")
	print("5. Sair.\n")
	option = input("Insira a opção desejada: ")
	clear_screen()
	if(option=='1'):
		pos_falsa()
		press_enter()
		menu()
	elif(option=='2'):
		newt_raph()
		press_enter()
		menu()
	elif(option=='3'):
		newt_raph_mod()
		press_enter()
		menu()
	elif(option=='4'):
		credits()
		press_enter()
		menu()
	elif(option=='5'):
		clear_screen()
		exit(0)
	else:
		menu(True)

def menu(error_message=False):
	clear_screen()
	print_blox()
	if(error_message):
		error_alert()
	options()

menu()
