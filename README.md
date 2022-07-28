[logo]: https://github.com/LorenzoXavier/designed-by-bond/blob/8fd46078a9c8e86d5f46aa0002dfa756a36ac58f/app/assets/images/favicon.ico "Logo"

# ![alt text][logo] Designed by bond mock-up Jewlery marketplace ![alt text][logo]

AN E-COMMERSE SITE BUILT WITH RUBY ON RAILS 
A web application for purchasing and selling Jewelery. 

[Live verion on heroku - please be patient on loading times - it's hoseted on the free tier](https://designed-by-bond.herokuapp.com)

## The app uses: 
* Rails version 6.0.5
* Ruby version 3.0.0
* Database -- postgresql
* Devise to handle users
* Stripe for payments 
* AWS for image storage when creating items 
* Recaptcha for the contact form - using a generic Gmail account to handle the email


## Setup
To clone localy and make changes:

``$ git clone https://github.com/LorenzoXavier/designed-by-bond.git``

Then you must run:
``$ bundle install``

To create the database, migrate and seed:
``$ rails db:create && rails db:migrate && rails db:seed``

In order for the application to work, you must create a ``credentials.yml`` file and open in your text editor of choice.

You can copy the following code into your credentials file, assigning your own values:

```
# Stripe for payment processing
stripe:
  public_key: 
  private_key: 
  signin_secret: 

# AWS for file storage for new items
aws:
  access_key_id: 
  secret_access_key: 
  directory: 


# email setup for contact form
gmail_username: 
gmail_password: 

# recaptcha not a robot verification
recaptcha_site_key: 
recaptcha_secret_key: 
```

[To set up and obtain stripe credentials - tap here (https://stripe.com)
[For the AWS setup - click here](https://aws.amazon.com/)
[Recaptcha setup up link - click here](https://developers.google.com/recaptcha)

For the gmail account - you must ensure you follow their protocol to allow the application to use GMAIL as a mail server.
[gmail link here](mail.google.com)



* Configuration
* Payment

Using Stripe as the payment portal. 
I have used the PAY gem to create the billing and checkout portal on Stripe Checkout.
https://github.com/pay-rails/pay

