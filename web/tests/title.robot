
*** Settings ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

***Test Cases***
Validar Titulo
    Title Should Be     Training Wheels Protocol
  