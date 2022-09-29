describe("Product Details Page", () => {

  it("loads the home page", () => {
    cy.visit("/");
  });

  it("should click the first product", () => {
    cy.get(".products article").first().click();
  });

}); 