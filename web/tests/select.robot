
*** Settings ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

***Test Cases***
Selecionando por texto e validar pelo valor
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list              Scott Lang
    ${selected}=                    Get Selected List Value         class:avenger-list 
    Should Be Equal                 ${selected}                     7
    Sleep                           3                       #temporário

Selecionando por texto e validar pelo texto
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown                     1
    ${selected}=                    Get Selected List Label         id:dropdown 
    Should Be Equal                 ${selected}                     Steve Rogers
    Sleep                           3                       #temporário
