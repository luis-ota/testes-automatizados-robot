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

Clicar em um agendamento
    Click Element    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-agenda-medico/div/div/div/full-calendar/div[2]/div/table/tbody/tr/td/div/div/div/table/tbody/tr[6]/td[4]/div/div[2]

Clicar em agendar
    Click Element    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-list-medicos/div/div/mat-card[5]/mat-card-actions/button


Digitar "${input}" no input "${campo}" do formulario de cadastro
    Click Element   //*[contains(text(), "${campo}")]
    Input Text      //input[contains(@placeholder, "${campo}")] | //input[contains(@placeholder, "${campo.lower()}")]    ${input}

Digitar "${input}" no input "${campo}" em cadastro medico
    Input Text      //input[contains(@ng-reflect-name, "${campo}")]    ${input}

Ir para o proximo mes
    Click Button    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-selecionar-horario/div/form/div[2]/mat-card/mat-calendar/mat-calendar-header/div/div/button[3]

Selecionar dia "${dia}"
    Click Button    //button[contains(@aria-label, "${dia}")]

Agendar
    Scroll Element Into View    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-selecionar-horario/div/form/div[2]/div/button
    Click Button    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-selecionar-horario/div/form/div[2]/div/button


Selecionar "${input}" em "${naoaguentomais}"
    Click Element    //*[contains(@ng-reflect-name, "${naoaguentomais}")]
    Click Element    //html/body/ngx-material-timepicker-container/div[2]/ngx-material-timepicker-content/div/div/div[1]/div/ngx-material-timepicker-24-hours-face/ngx-material-timepicker-face/div/div/div[${input}]/span
    Click Element    //html/body/ngx-material-timepicker-container/div[2]/ngx-material-timepicker-content/div/div/div[2]/div[2]/ngx-material-timepicker-button/button

    Sleep    1


Digitar "${input}" no input "${campo}"
    Input Text      //*[@id="mat-input-${campo}"]    ${input}
    
Marcar "${opcao}" em "${campo}"
    Scroll Element Into View    //*[contains(@ng-reflect-name, "${campo}")]
    Click Element    //*[contains(@ng-reflect-name, "${campo}")]
    Sleep    .5
    Click Element    //*[@id="mat-option-${opcao}"]
    Click Element    //html/body/div[2]

Marcar "${opcao}" em "${campo}" sem overlay
    Scroll Element Into View    //*[contains(@ng-reflect-name, "${campo}")]
    Click Element    //*[contains(@ng-reflect-name, "${campo}")]
    Sleep    .5
    Click Element    //*[@id="mat-option-${opcao}"]




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

Clique no botao Concluir medico
    Click Element    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-cadastro-profissional/app-endereco-form/div/form/button


Verificar se cadastrou medico com sucesso
     Element Should Exist    //html/body/app-root/p-toast/

Verifica se "${nome}" cadastrou-se com sucesso
    ${nome_logado}    Get Text    //html/body/app-root/mat-drawer-container/mat-drawer-content/mat-toolbar/mat-toolbar-row/div/h4[1]
    Should Be Equal As Strings    ${nome_logado}    ${nome}

Clicar no botão "${texto_botao}"
    Click Element    //html/body/app-root/mat-drawer-container/mat-drawer/div/button[contains(.,'${texto_botao}')]

Clicar em login
    Click Button    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-login/div/div/form/div/button

Clicar em prossegir
    Scroll Element Into View    //html/body/app-root/mat-drawer-container/mat-drawer-content/app-cadastro-profissional/div/form/button
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


Clicar em cancelar
    Scroll Element Into View     //*[contains(text(),'Cancelar')]
    Click Element    //*[contains(text(),'Cancelar')]

Verificar se ha botao de cancelar
    Should Exist    //*[contains(text(),'Cancelar')]

Verificar se cancelou
    Should Exist    //*[contains(text(),'Cancelado')]

Verificar se ha medicos disponiveis
    Should Exist    //*[contains(text(),'CRM')]

Verificar se NAO ha botao "${texto_botao}" na nav lateral
   Should Not Exist    //html/body/app-root/mat-drawer-container/mat-drawer/div/button[contains(.,'${texto_botao}')]
