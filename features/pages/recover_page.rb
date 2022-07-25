require "selenium-webdriver"

class RecoverPassword < SitePrism::Page
  include Capybara::DSL

  set_url 'users/password/new'
  
  element :user_email, '#user_email'

  element :button_instructions, :button, "Enviar instruções para redefinição da senha"
  element :button_return, :button, "Voltar"

  element :link_unlock_new, 'a[href="/users/unlock/new"]'

  element :alert, "#swal2-title"

  def send_recovery(value)
    user_email.set value["email"]
    button_instructions.click
  end
end