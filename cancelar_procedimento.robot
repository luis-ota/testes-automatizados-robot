*** Settings ***
Documentation    Cancelando procedimento
Resource         medicaly_resources.robot
Test Setup       Abrir Site
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 02 - Sair do usuario"
	[Documentation]    verficiar se cancela procedimento corretamente
	[Tags]             sair

	Sleep    1
	Abrir NavLateral
	Clicar no botão "Acessar"
	Sleep    1
	Digitar "paciente@medicaly.com" no input "0"
	Digitar "123qwe" no input "1"
	Clicar em login
	Sleep    3
	Fechar toast
	Sleep    1
    Clicar no botão "Meus agendamentos" da NavLateral
    Sleep    1
    Clicar em cancelar
    Sleep    1
    Verificar se cancelou




