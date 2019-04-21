context('Navigation', () => {
  it('has top nav links', function() {
    cy.visit('/')
    cy.get('.navbar').contains('home')
    cy.get('.navbar').contains('items')
    cy.get('.navbar').contains('stores')
  })

  it('home goes to root', function() {
    cy.get('.navbar').contains('home').click()
    cy.url().should('include', 'http://localhost:3000/')
  })

  it('items goes to items index', function() {
    cy.get('.navbar').contains('items').click()
    cy.url().should('include', 'items')
  })

  it('stores goes to stores index', function() {
    cy.get('.navbar').contains('stores').click()
    cy.url().should('include', 'stores')
  })
})
