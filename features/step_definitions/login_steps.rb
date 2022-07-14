Dado("que deseja acessar plataforma") do
end

Quando("acessar URL Grafeno Pagementos") do
  @component.url
end

Então("devo ser direcionado a tela de Login") do
  @login_page.wait_until_user_email_visible
  @login_page.wait_until_user_password_visible
  @login_page.wait_until_button_login_visible
end
