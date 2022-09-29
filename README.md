# Jungle

Do you love plants? Do you love buying them? Well holy moly, do we have the app for you! Welcome to Jungle, a mini e-commerce app that is meant to teach the principles of Ruby on Rails. Jungle is a mini e-commerce app that allows users to browse products, add them to their cart, and purchase them. It also allows admins to add new products and categories to the store.

## Getting Started

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

## Testing Dependencies

- RSpec
- Cypress on Rails

## Screenshots

!["Screenshot of Jungle Home Page"](https://github.com/OfficialBirdDaddy/jungle-rails/blob/master/docs/jungle-home-page.png?raw=true)

!["Screenshot of Jungle 'All Products'"](https://github.com/OfficialBirdDaddy/jungle-rails/blob/master/docs/jungle-product-views.png?raw=true)

!["Screenshot of Jungle Product View Page"](https://github.com/OfficialBirdDaddy/jungle-rails/blob/master/docs/jungle-product-page.png?raw=true)

!["Screenshot of Jungle Cart"](https://github.com/OfficialBirdDaddy/jungle-rails/blob/master/docs/jungle-cart.png?raw=true)

