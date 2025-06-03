Feature: Fluxo de cadastro
  Como um usuário
  Eu quero me cadastrar no sistema
  Para ter acesso aos recursos da plataforma

  Background:
    Given que estou na página inicial
    When clico no botão "Cadastre-se"
    Then devo ver o formulário de cadastro

  Scenario: Criar conta com sucesso
    When preencho o campo "name" com "João"
    And preencho o campo "surname" com "Silva"
    And preencho o campo "email" com "joao@silva.com"
    And preencho o campo "username" com "joaosilva"
    And preencho o campo "password" com "Test123#"
    And preencho o campo "confirmPassword" com "Test123#"
    And clico no botão "Criar Conta"
    Then devo ser redirecionado para a página de boas-vindas

  Scenario: Validar email já existente
    When preencho o campo "email" com "demo@user.com"
    Then devo ver a mensagem "Este email já está registrado"
    And o botão "Criar Conta" deve estar desabilitado

  Scenario: Validar formato de email incorreto
    When preencho o campo "name" com "João"
    And preencho o campo "surname" com "Silva"
    And preencho o campo "username" com "joaosilva"
    And preencho o campo "password" com "Test123#"
    And preencho o campo "confirmPassword" com "Test123#"
    And preencho o campo "email" com "email@invalido"
    Then devo ver a mensagem "Por favor, insira um email válido"
    And o botão "Criar Conta" deve estar desabilitado

  Scenario: Validar username já existente
    When preencho o campo "username" com "demo"
    Then devo ver a mensagem "Este nome de usuário já está em uso"
    And o botão "Criar Conta" deve estar desabilitado

  Scenario: Validar formato de username incorreto
    When preencho o campo "username" com "@teste"
    Then devo ver a mensagem "O nome de usuário deve ter 4-15 caracteres"
    And o botão "Criar Conta" deve estar desabilitado

  Scenario: Validar formato de senha incorreto
    When preencho o campo "password" com "123456"
    Then o botão "Criar Conta" deve estar desabilitado

  Scenario: Validar senha e confirmação de senha diferentes
    When preencho o campo "password" com "Test123!"
    And preencho o campo "confirmPassword" com "Test1233!"
    Then devo ver a mensagem "As senhas devem ser iguais"
    And o botão "Criar Conta" deve estar desabilitado

  Scenario: Validar campos obrigatórios
    Then o botão "Criar Conta" deve estar desabilitado
    When preencho o campo "name" com "João"
    Then o botão "Criar Conta" deve estar desabilitado
    When preencho o campo "surname" com "Silva"
    Then o botão "Criar Conta" deve estar desabilitado
    When preencho o campo "email" com "joao@silva.com"
    Then o botão "Criar Conta" deve estar desabilitado
    When preencho o campo "username" com "joaosilva"
    Then o botão "Criar Conta" deve estar desabilitado
    When preencho o campo "password" com "Test123#"
    Then o botão "Criar Conta" deve estar desabilitado 