# AuthKit - Testes de Registro

Este projeto contém testes automatizados para o fluxo de registro do AuthKit, desenvolvido como parte da disciplina de Qualidade de Software da UNIESP.

## Sobre o Projeto

Os testes foram desenvolvidos utilizando Cypress com Cucumber, seguindo as melhores práticas de BDD (Behavior Driven Development). O objetivo é garantir a qualidade do fluxo de registro do AuthKit, validando diferentes cenários de uso.

## Tecnologias Utilizadas

- Cypress
- Cucumber
- JavaScript/TypeScript

## Pré-requisitos

- Node.js (versão 14 ou superior)
- npm ou yarn

## Instalação

1. Clone o repositório:
```bash
git clone https://github.com/mwndl/authkit-register-tests.git
```

2. Instale as dependências:
```bash
npm install
# ou
yarn install
```

## Executando os Testes

Para executar os testes em modo interativo:
```bash
npm run cypress:open
# ou
yarn cypress:open
```

Para executar os testes em modo headless:
```bash
npm run cypress:run
# ou
yarn cypress:run
```

## Estrutura do Projeto

- `cypress/e2e/features/`: Contém os arquivos de feature em Gherkin
- `cypress/e2e/step-definitions/`: Contém as implementações dos steps
- `cypress/fixtures/`: Contém dados de teste
- `cypress/support/`: Contém configurações e comandos personalizados

## Cenários de Teste

Os testes cobrem os seguintes cenários:

1. Registro com sucesso
2. Validação de email já existente
3. Validação de nome de usuário já existente
4. Validação de formato de email incorreto
5. Validação de campos obrigatórios
6. Validação de formato de nome de usuário incorreto
7. Validação de formato de senha incorreto
8. Validação de confirmação de senha incorreta

## Contribuição

Este projeto foi desenvolvido como parte de um trabalho acadêmico. Contribuições são bem-vindas através de Pull Requests.

## Licença

Este projeto está sob a licença MIT. 