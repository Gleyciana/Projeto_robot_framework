*** Settings ***
Documentation       Suite de testes de cadastro de dog walker

Resource    ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Cadastro com sucesso 
    [Tags]    smoke

   ${dog_walker}    Create Dictionary
    ...    name=Gleyciana Campelo
    ...    email=gleyci@gmail.com
    ...    cpf=00000014141
    ...    cep=04534011
    ...    Street=Rua Joaquim Floriano
    ...    district=Itaim Bibi
    ...    city_uf=São Paulo/SP
    ...    number=1000
    ...    details=Apto 28      
    ...    cnh=toretto.jpg    

    Go to signup page
    Fill signup form        ${dog_walker}
    Submit signup form
    Popup should be     Recebemos o seu cadastro e em breve retornaremos o contato.


Cadastro com cpf inválido 
    [Tags]    cpf_inv

   ${dog_walker}    Create Dictionary
    ...    name=Gleyciana Campelo
    ...    email=gleyci@gmail.com
    ...    cpf=000000141aa
    ...    cep=04534011
    ...    Street=Rua Joaquim Floriano
    ...    district=Itaim Bibi
    ...    city_uf=São Paulo/SP
    ...    number=1000
    ...    details=Apto 28      
    ...    cnh=toretto.jpg    

    Go to signup page
    Fill signup form        ${dog_walker}
    Submit signup form

Cadastro com campos obrigatórios vazios 
    [Tags]    required    

    Go to signup page
    Submit signup form

    Alert should be       Informe o seu nome completo
    Alert should be       Informe o seu melhor email
    Alert should be       Informe o seu CPF
    Alert should be       Informe o seu CEP
    Alert should be       Informe um número maior que zero
    Alert should be       Adcione um documento com foto (RG ou CHN)
    
Cadastro com sucesso dog walker que sabe cuidar de pets 
    [Tags]    aservice

   ${dog_walker}    Create Dictionary
    ...    name=Yasmin Campelo
    ...    email=yasmin@gmail.com
    ...    cpf=00000014141
    ...    cep=04534011
    ...    Street=Rua Joaquim Floriano
    ...    district=Itaim Bibi
    ...    city_uf=São Paulo/SP
    ...    number=1000
    ...    details=Apto 28      
    ...    cnh=toretto.jpg  

    Go to signup page
    Fill signup form        ${dog_walker}
    Additional Service       Cuidar
    Submit signup form
    Popup should be         Recebemos o seu cadastro e em breve retornaremos o contato.

Cadastro com sucesso dog walker que sabe adestrar de pets 
    [Tags]    aservice

   ${dog_walker}    Create Dictionary
    ...    name=Yasmin Maia
    ...    email=maia@gmail.com
    ...    cpf=00000014141
    ...    cep=04534011
    ...    Street=Rua Joaquim Floriano
    ...    district=Itaim Bibi
    ...    city_uf=São Paulo/SP
    ...    number=1000
    ...    details=Apto 28      
    ...    cnh=toretto.jpg  

    Go to signup page
    Fill signup form        ${dog_walker}
    Additional Service       Adestrar
    Submit signup form
    Popup should be     Recebemos o seu cadastro e em breve retornaremos o contato.








































   
     