describe('Items', function() {

  beforeEach(function() {
    cy.visit('/items')
  })

  it('page has title', function() {
    cy.get('h1')
    .contains('Item')
  })

  it('adds three items', function() {
    cy.app('clean')
    cy.get('#item_name')
    .type('Coffee{enter}')
    cy.get('#item_name')
    .type('Butter{enter}')
    cy.get('#item_name')
    .type('MCT Oil{enter}')
    cy.get('#to-get-list li').should('have.length', 3)
    cy.app('clean')
  })

  it('displays message saying there are no items if none exist', function() {
    cy.app('clean')
    cy.get('#no-items-msg')
  })

})

// This calls to the backend to prepare the application state
// cy.appFactories([
  //   ['create_list', 'post', 10],
  //   ['create', 'post', {title: 'Hello World'} ]
  // ])
