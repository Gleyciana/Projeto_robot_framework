# Feature: Cadastro

Este repositório contém testes automatizados para o recurso de cadastro do sistema 🐶 [Walkdog](https://walkdog.vercel.app/).

## Site Utilizado

O teste foi realizado no site 🐶[Walkdog](https://walkdog.vercel.app/).

## Pré-requisitos

Antes de executar o teste, certifique-se de ter as seguintes ferramentas instaladas:

- [Node.js](https://nodejs.org/): Ambiente de execução JavaScript.
- [Visual Studio Code](https://code.visualstudio.com/): Editor de código-fonte.
- [Python](https://www.python.org/downloads/): Utilizado como a linguagem principal para 
escrever os testes e executar o Robot Framework.
- [Robot Framework](https://robotframework.org/): Framework de automação de teste de 
código aberto utilizado para criar e executar os testes automatizados.

## Recursos Utilizados

- As aulas do canal [QAxperience](https://www.youtube.com/watch?v=UDu_iWwwbKU&list=PLO2sPz41esSdPhGPKPNQxfuhYWa53nYGG&index=1) foram utilizadas como referência para a criação deste teste.

## Cenários de Teste

### Scenario 1: Cadastro com Sucesso ✅
Este cenário valida se um Dog Walker pode ser cadastrado com sucesso no sistema.

### Scenario 2: Cadastro com cpf inválido  ❌
Este cenário verifica se o sistema valida corretamente um CPF inválido durante o cadastro.

### Scenario 3: Cadastro com campos obrigatórios vazios ❌
Este cenário testa se o sistema emite alertas corretos quando campos obrigatórios são deixados em branco durante o cadastro.

### Scenario 4: Cadastro com sucesso dog walker que sabe cuidar de pets ✅
Este cenário verifica se um Dog Walker pode ser cadastrado com sucesso no sistema e se o serviço adicional de "Cuidar" é corretamente registrado.

### Scenario 5: Cadastro com sucesso dog walker que sabe adestrar de pets ✅
Este cenário verifica se um Dog Walker pode ser cadastrado com sucesso no sistema e se o serviço adicional de "Adestrar" é corretamente registrado.

## Elaborado por

Este projeto foi desenvolvido 💜 por Gleyciana Campelo 👋 &nbsp;[Meu LinkedIn](https://www.linkedin.com/in/gleyciana-campelo/)