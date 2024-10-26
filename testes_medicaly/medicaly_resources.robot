* Settings *
Library  SeleniumLibrary
Library    XML
Library    OperatingSystem

* Variables *


* Keywords *
Abrir Site
    Open Browser  http://localhost:4200/home  chrome

Abrir NavLateral
    Click Element    class:example-icon.mdc-icon-button.mat-mdc-icon-button.mat-unthemed.mat-mdc-button-base


Clicar no botão "${texto_botao}" da NavLateral
    Click Element    //html/body/app-root/mat-drawer-container/mat-drawer/div/button[contains(.,'${texto_botao}')]


Digitar "${input}" no input "${campo}" do formulario de cadastro
    Click Element   //*[contains(text(), "${campo}")]
    Input Text      //input[contains(@placeholder, "${campo}")] | //input[contains(@placeholder, "${campo.lower()}")]    ${input}

Digitar "${input}" no input "${campo}" em cadastro medico
    Input Text      //input[contains(@ng-reflect-name, "${campo}")]    ${input}

Digitar "${input}" no input "${campo}" horario no cadastro medico
    Input Text     //*[@id="mat-input-${campo}"]    ${input}

Digitar "${input}" no input "${campo}"
    Input Text      //*[@id="mat-input-${campo}"]    ${input}
    
Marcar "${opcao}" em "${campo}"
    Click Element    //*[contains(@ng-reflect-name, "${campo}")]
    Sleep    .2
    Click Element    //*[@id="mat-option-${opcao}"]
    Click Element    //html/body/div[2]/div[1]


Digitar "${input}" no input "${campo}" do formulario de endereco
    Input Text      //*[@id="${campo}"]    ${input}

Digitar "${input}" no input email do formulario de cadastro
    Click Element   //*[contains(text(), "Email")]
    Input Text      //input[contains(@placeholder, "example")]    ${input}

Digitar "${input}" no input data do formulario de cadastro
    Click Element   //*[contains(text(), "Data")]
    Input Text      //*[@id="mat-input-3"]    ${input}

Clique no botao Prosseguir
    Click Element    class:mdc-button.mdc-button--raised.mat-mdc-raised-button.mat-primary.mat-mdc-button-base

Clique no botao Concluir
    Click Element    //html/body/app-root/mat-drawer-container/mat-drawer-content/tela-cadastro/app-endereco-form/div/form/button

Verifica se "${nome}" cadastrou-se com sucesso
    ${nome_logado}    Get Text    //html/body/app-root/mat-drawer-container/mat-drawer-content/mat-toolbar/mat-toolbar-row/div/h4[1]
    Should Be Equal As Strings    ${nome_logado}    ${nome}

Clicar no botão "${texto_botao}"
    Click Element    //html/body/app-root/mat-drawer-container/mat-drawer/div/button[contains(.,'${texto_botao}')]

Clicar em login
    Click Button    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-login/div/div/form/div/button

Clicar em prossegir
    Click Button    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-cadastro-profissional/div/form/button

Clicar em adicionar medico
      Click Element    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-dashboard-adm/div/mat-tab-group/div/mat-tab-body[1]/div/app-dashboard-profissionais/div/button/span[3]

Verificar se saiu
    Should Not Exist    //html/body/app-root/mat-drawer-container/mat-drawer-content/mat-toolbar/mat-toolbar-row/div/h4[1]

Fechar toast
    Click Button   //html/body/app-root/p-toast/div/p-toastitem/div/div/button

Fechar o navegador
#    Capture Page Screenshot
    Close Browser