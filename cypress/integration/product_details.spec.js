describe('Product Details', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000');
  })

  it('navigates to the specified product page, and displays the product details', () => {
      cy.get('.products article')
        .should('be.visible')
        .eq(0)
        .click();
      
      cy.get('.product-detail').should('be.visible')
  })
})