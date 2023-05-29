*** Settings ***
Resource  ${EXECDIR}/resource/main.robot

*** Variables ***
&{cadastro_whatsapp}
...    select_idioma_pt=//android.widget.TextView[@content-desc="Portuguese (Brazil)"]
...    btn_confirmar_alerta=com.whatsapp:id/alertTitle
...    btn_ok=//android.widget.Button[@text='OK']
...    btn_concordar=//android.widget.Button[@text='CONCORDAR E CONTINUAR']
...    selected_pais_eua=//android.widget.TextView[@content-desc="País selecionado: Estados Unidos"]
...    select_pais_brasil=//*[@text='Brasil']
...    input_registrar_numero=com.whatsapp:id/registration_phone
...    btn_avancar=//*[@text='AVANÇAR']
...    text_confirmar_numero=//android.widget.TextView[contains(@text, 'Você inseriu o seguinte número de telefone:')]
...    input_codigo_verificacao=com.whatsapp:id/verify_sms_code_input
...    alert_permissao=com.whatsapp:id/permission_title
...    btn_cancelar=com.whatsapp:id/cancel


&{menu_whatsapp}
...    btn_lupa=//android.widget.TextView[@content-desc="btn_pesquisar"]
...    btn_conversas=//android.widget.TextView[contains(@text, 'btn_conversas')]
...    btn_pesquisar=com.whatsapp:id/search_input
...    img_contato=//android.widget.ImageView[@content-desc="{contact_name}"]