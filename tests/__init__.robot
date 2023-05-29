*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

Test Setup  Run Keywords
...    Open local session
...    Cadastrar número de whatsapp

Test Teardown   Close Application
