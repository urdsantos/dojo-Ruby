require "selenium-webdriver"

class Login < SitePrism::Page
  include Capybara::DSL

  set_url "/users/sign_in"
  element :user_email, "#user_email"
  element :user_password, "#user_password"
  element :user_remember_me, "label[for='user_remember_me']"
  
  element :link_unlock_new, 'a[href="/users/unlock/new"]'
  
  element :alert, "#swal2-content"

  element :button_login, :button, "Login"
  element :button_new_password, :button, "Esqueceu sua senha?"
  element :button_ok, :button, "OK"

  def login(user)
    user_email.set user["email"]
    user_password.set user["password"]
    button_login.click
  end
end
