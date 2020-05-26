
*** Settings ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

***Test Cases***
Selecionando por Id
    Go To                           ${url}/radios
    Select Radio Button                movies      cap
    Radio Button Should Be Set To      movies      cap
    Sleep                              3           #temporário


Selecionando por Id
    Go To                           ${url}/radios
    Select Radio Button                movies      the-avengers
    Radio Button Should Be Set To      movies      the-avengers
    Sleep                              3           #temporário