
*** Settings ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variables ***
${check_thor}           id:thor
${check_iron}           css:input[value='iron-man']
${check_panther}        XPath://*[@id='checkboxes']/input[7]

***Test Cases***
Marcando opção com id
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Sleep                           3                   #temporário
    
Marcando opção com Css Selector
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}
    Sleep                           3                   #temporário
    
Marcando opção com XPath        #ultimo caso
    [tags]      iron
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    Sleep                           3                   #temporário
  