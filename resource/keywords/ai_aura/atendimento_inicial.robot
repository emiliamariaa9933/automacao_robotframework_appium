*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

*** Keywords ***
estou na tela de conversas do whatsapp
    [Documentation]  Keyword responsável por validar que está na tela de conversas do whatsapp, procurar pelo contato da AI e iniciar o chat.
    Wait Until Element Is Visible    ${cadastro_whatsapp.btn_conversas}
    Clicar no elemento    ${cadastro_whatsapp.btn_lupa}
    Inserir o texto    ${cadastro_whatsapp.btn_pesquisar}    Aura
    ${nome_img_contato_formatado}  Format String  ${cadastro_whatsapp.img_contato}  contact_name=Aura
    Clicar no elemento    ${nome_img_contato_formatado}

enviar mensagens para a AI
    [Documentation]  Keyword responsável interagir com a AI
    Envio a mensagem "${NOME}"

devo receber as opções de atendimento
    [Documentation]  Keyword responsável validar a mensagem da AI
    ${msg_ai}    Get Text    ${elemento}
    Should Be Equal  "${msg_ai}"  "${RESPOSTA}"
    