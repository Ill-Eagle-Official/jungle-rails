// test to add item to cart and check the count has increased

describe("Add To Cart", () => {

  it("successfully loads", () => {
    cy.visit("/");
  });

  it("Add item to cart", () => {
    cy.contains("Register").click().get(".button-to").click();

  });
  
});