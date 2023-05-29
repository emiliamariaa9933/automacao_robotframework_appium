*** Settings ***
Resource  ${EXECDIR}/resource/main.resource
Force Tags  atendimento_inicial

*** Test Cases ***
TC0001: Validar Atendimento Inicial
    [Documentation]  Teste que valida as opções de atendimento inicial ao interagir com a inteligência artificial.
    [Tags]  TC0001
    Dado que estou na tela de conversas do whatsapp
    Quando enviar mensagens para a AI
    Então devo receber as opções de atendimento