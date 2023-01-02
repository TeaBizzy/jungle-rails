describe('jungle app', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000');
  })

  it('There is products on the home page', () => {
      cy.get('.products').children().should('have.length', 12);
      cy.get(".products article").should("be.visible");
  })
})