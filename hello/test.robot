
***Settings***
Library     app.py

***Test Cases***
Deve retornar mensagem de bem vindo
    ${result}=          Welcome     Fernando
    Should Be Equal     ${result}   ola Fernando, Bem vindo!
