# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
StackClone::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "gmail.com",
  :authentication => 'plain',
  :user_name => "epicodus1234",
  :password => "krietoskrietos",
  enable_starttls_auto: true
}
