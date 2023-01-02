describe('User login', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000');
  })

  it('navigates to the login form, and logs the user in upon successful login', () => {
    cy.get('.navbar-nav').contains('Login').click();
    cy.get('#email').type('janesmith@email.com');
    cy.get('#password').type('password');
    cy.get('form').submit();
    cy.get('.navbar-nav').contains('Logged in as janesmith@email.com').should('be.visible')
  })
})