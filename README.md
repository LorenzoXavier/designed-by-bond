[logo]: https://github.com/LorenzoXavier/designed-by-bond/blob/8fd46078a9c8e86d5f46aa0002dfa756a36ac58f/app/assets/images/favicon.ico "Logo"

# ![alt text][logo] Designed by bond mock-up Jewlery marketplace ![alt text][logo]

AN E-COMMERSE SITE BUILT WITH RUBY ON RAILS 
A web application for purchasing and selling Jewelery. 

[Live verion on heroku - please be patient on loading times - it's hoseted on the free tier](https://designed-by-bond.herokuapp.com)

## The app uses: 
* Devise to handle users
* Stripe for payments 
* AWS for image storage when creating items 
* Recaptcha for the contact form - using a generic Gmail account to handle the email
* Rails version 6.0.5
* Ruby version 3.0.0

## Setup
Git clone:
``https://github.com/LorenzoXavier/designed-by-bond.git``



* Configuration
* Payment

Using Stripe as the payment portal. 
I have used the PAY gem to create the billing and checkout portal on Stripe Checkout.
https://github.com/pay-rails/pay

