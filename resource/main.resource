*** Settings ***
Library  AppiumLibrary
Library  BuiltIn
Library  Collections
Library  DateTime
Library  Dialogs
Library  String
Library  OperatingSystem
Library  FakerLibrary  locale=pt_BR

# VARIÁVEIS
Variables  ${EXECDIR}/resource/data/variables.yaml

# PAGE OBJECT - ELEMENTS
Resource  ${EXECDIR}/resource/elements/atendimento.resource

# KEYWORDS COMPARTILHADAS
Resource  ${EXECDIR}/resource/keywords/common/setups_teardowns.robot
Resource  ${EXECDIR}/resource/keywords/common/helpers.robot

# KEYWORDS DE TESTES
Resource  ${EXECDIR}/resource/keywords/ai_aura/atendimento_inicial.robot