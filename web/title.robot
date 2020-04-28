
*** Settings ***
Library     SeleniumLibrary

***Test Cases***
Validar Titulo
    Open Browser        http://training-wheels-protocol.herokuapp.com/      chrome
    Title Should Be     Training Wheels Protocol
    Close Browser