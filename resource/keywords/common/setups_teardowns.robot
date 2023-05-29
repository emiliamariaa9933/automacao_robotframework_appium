*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

*** Variables ***
${num_whatsapp_aura}  11999151515

*** Keywords ***
Open local session
    [Documentation]  Keyword de conexão com appium para inicio de execução local dos testes.
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Pixel 6 API 29
    ...                 noReset=false
    ...                 autoAcceptAlerts=true
    ...                 appPackage=com.whatsapp
    ...                 appActivity=com.whatsapp.HomeActivity
    ...                 app=${EXECDIR}/app/WhatsApp.apk
    ...                 udid=emulator-5554
    
Cadastrar número de whatsapp
    [Documentation]  Keyword responsável por instalação e cadastro de número para acessar o Whatsapp
    Clicar no elemento   ${cadastro_whatsapp.select_idioma_pt}
    Wait Until Element Is Visible   com.whatsapp:id/alertTitle  timeout=10
    Clicar no elemento   ${cadastro_whatsapp.btn_ok}
    Clicar no elemento   ${cadastro_whatsapp.btn_concordar}
    Clicar no elemento   ${cadastro_whatsapp.selected_pais_eua}
    Clicar no elemento   ${cadastro_whatsapp.select_pais_brasil}

    # Capturar o valor no terminal do número de whatsapp a ser cadastrado
    ${numero_a_ser_cadastrado}=    Get Value From User    Digite o número de whatsapp a ser cadastrado:
    Log    Número capturado: ${numero_a_ser_cadastrado}
    Inserir o texto   ${cadastro_whatsapp.input_registrar_numero}   ${numero_a_ser_cadastrado}
    Clicar no elemento    ${cadastro_whatsapp.btn_avancar}
    Wait Until Element Is Visible   ${cadastro_whatsapp.text_confirmar_numero}
    Clicar no elemento    ${cadastro_whatsapp.btn_ok}
    
    # Capturar o valor no terminal do código de verificação digitado
    ${código_de_verificacao}=    Get Value From User    Digite o número a ser capturado:
    Log    Número capturado: ${código_de_verificacao}
    Inserir o texto   ${cadastro_whatsapp.input_codigo_verificacao}    ${código_de_verificacao}

    Wait Until Element Is Visible    ${cadastro_whatsapp.alert_permissao}
    Clicar no elemento    ${cadastro_whatsapp.btn_cancelar}