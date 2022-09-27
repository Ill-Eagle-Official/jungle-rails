// test to check if the home page is loading

describe('Home Page', () => {

  it('successfully loads', () => {
    cy.visit('http://localhost:3000')
  })

  it('There is products on the page', () => {
    cy.get(".products article").should("be.visible");
  })
  
});