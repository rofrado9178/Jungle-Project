# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of learning Rails by example, how to adapt with existing code, and how to implement new feature to the exisiting apps without breaking the apps, and also learn how to do unit testing in ruby on rails application

## final product

!["Login page"](https://github.com/rofrado9178/Jungle-Project/blob/master/docs/Screenshot%20by%20Snip%20My%20at%20Mar%2016%2C%202022%20at%2010:23:59%20AM.png)
!["Sign Up page"](https://github.com/rofrado9178/Jungle-Project/blob/master/docs/Screenshot%20by%20Snip%20My%20at%20Mar%2016%2C%202022%20at%2010:24:35%20AM.png)
!["Home page"](https://github.com/rofrado9178/Jungle-Project/blob/master/docs/Screenshot%20by%20Snip%20My%20at%20Mar%2016%2C%202022%20at%2010:26:33%20AM.png)
!["About page"](https://github.com/rofrado9178/Jungle-Project/blob/master/docs/Screenshot%20by%20Snip%20My%20at%20Mar%2016%2C%202022%20at%2010:27:12%20AM.png)
!["My Cart page"](https://github.com/rofrado9178/Jungle-Project/blob/master/docs/Screenshot%20by%20Snip%20My%20at%20Mar%2016%2C%202022%20at%2010:27:51%20AM.png)
!["Finished Order page"](https://github.com/rofrado9178/Jungle-Project/blob/master/docs/Screenshot%20by%20Snip%20My%20at%20Mar%2016%2C%202022%20at%2010:28:53%20AM.png)
!["Admin Dashboard"](https://github.com/rofrado9178/Jungle-Project/blob/master/docs/Screenshot%20by%20Snip%20My%20at%20Mar%2016%2C%202022%20at%2010:29:28%20AM.png)
!["Admin All Product"](https://github.com/rofrado9178/Jungle-Project/blob/master/docs/Screenshot%20by%20Snip%20My%20at%20Mar%2016%2C%202022%20at%2010:29:49%20AM.png)
!["Admin All categories"](https://github.com/rofrado9178/Jungle-Project/blob/master/docs/Screenshot%20by%20Snip%20My%20at%20Mar%2016%2C%202022%20at%2010:30:14%20AM.png)

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
1. Remove Gemfile.lock
1. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
- jquery
- bcrypt
- bootstrap
- Rspec
- Capybara
- shoulda-matcher
