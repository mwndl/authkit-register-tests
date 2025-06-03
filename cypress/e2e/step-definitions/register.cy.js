import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';

Given('que estou na página inicial', () => {
  cy.visit('https://authkit-demo.onrender.com');
  cy.on('uncaught:exception', (err, runnable) => {
    return false;
  });
});

When('clico no botão {string}', (buttonText) => {
  cy.contains('button', buttonText).click();
});

Then('devo ver o formulário de cadastro', () => {
  cy.contains('Criar Conta').should('be.visible');
});

When('preencho o campo {string} com {string}', (field, value) => {
  if (field === 'email') {
    cy.get('form').find('input[type="email"]').first().type(value);
  } else {
    cy.get(`input[id="${field}"]`).type(value);
  }
});

Then('devo ser redirecionado para a página de boas-vindas', () => {
  cy.url().should('include', '/welcome');
});

Then('devo ver a mensagem {string}', (message) => {
  cy.contains(message).should('be.visible');
});

Then('o botão {string} deve estar desabilitado', (buttonText) => {
  cy.contains('button', buttonText).should('be.disabled');
}); 