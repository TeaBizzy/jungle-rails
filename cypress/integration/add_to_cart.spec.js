describe('jungle app', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000');
  })

  it('There is products on the home page', () => {
      cy.get(".products article")
        .should("be.visible")

      cy.get(".products article")
        .eq(0)
          .find('.btn')
            .click({force: true})
      
      cy.get('.nav-item.end-0')
        .should('not.have.value', 'My Cart (0)')
  })
})