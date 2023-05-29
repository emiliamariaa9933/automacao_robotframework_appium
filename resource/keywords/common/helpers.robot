*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

*** Keywords ***
Inserir o texto
    [Documentation]  Keyword responsável por inserir o texto desejado no elemento selecionado.
    [Arguments]  ${elemento}  ${texto}  ${timeout}=10
    Wait Until Element is Visible  ${elemento}  ${timeout}
    Capture Page Screenshot
    Input Text  ${elemento}  ${texto}

Clicar no elemento
    [Documentation]  Keyword responsável por aguardar o elemento estar visível e clicá-lo em seguida.
    [Arguments]  ${elemento}  ${timeout}=10
    Wait Until Page Contains Element  ${elemento}  ${timeout}
    Capture Page Screenshot
    Click Element  ${elemento}

Envio a mensagem "${mensagem}"
    [Documentation]  Keyword responspavel para enviar mensagens à AI.
    Inserir o texto  ${elemento}  ${mensagem}
    Clicar no elemento  ${elemento}