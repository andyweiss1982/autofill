class Login < ActiveRecord::Base
  require 'capybara'
    
  def facebook
    session = Capybara::Session.new(:selenium)
    session.visit "http://www.facebook.com"
    session.fill_in "email", with: "#{self.username}"
    session.fill_in "pass", with: "#{self.password}"
    session.click_button "Log In"
  end
end

