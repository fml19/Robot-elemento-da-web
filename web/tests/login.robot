
*** Settings ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

***Test Cases***
Login com sucesso sem Id com seletor css
    Go To                   ${url}/login
    Input Text              css:input[name=username]        stark
    Input Text              css:input[name=password]        jarvis!
    Click Element           class:btn-login

    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!

Senha invalida sem Id com seletor css
    Go To                   ${url}/login
    Input Text              css:input[name=username]        stark
    Input Text              css:input[name=password]        1234asdf
    Click Element           class:btn-login

    ${message}=             Get WebElement                  id:flash
    Should Contain          ${message.text}                 Senha é invalida!

Usuário não exixte sem Id com seletor css
    Go To                   ${url}/login
    Input Text              css:input[name=username]        nando
    Input Text              css:input[name=password]        1234asdf
    Click Element           class:btn-login

    ${message}=             Get WebElement                  id:flash
    Should Contain          ${message.text}                 O usuário informado não está cadastrado!