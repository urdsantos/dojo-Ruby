Dado("que deseja acessar plataforma") do
end

Quando("acessar URL Grafeno Pagementos") do
  @login_page.load
end

Então("devo ser direcionado a tela de Login") do
  @login_page.wait_until_user_email_visible
  @login_page.wait_until_user_password_visible
  @login_page.wait_until_button_login_visible
end

Quando("informar credencias inválidas") do
  @login_page.load
  @login_page.login(@file["user_invalid"])
end

Então("deve impedir login e exibir mensagem de erro") do
  expect(@login_page).to have_alert
end

Quando('informar credenciais de usuário bloqueado pelo administrador') do
  @login_page.load
  @login_page.login(@file["user_block"])
end

Então('deve impedir acesso a plataforma e exibir mensagem') do
  expect(@login_page).to have_alert
  expect(@login_page).to have_alert
end

Quando("informar credencias válidas de acesso") do
  @login_page.load
  @login_page.login(@file["user_validad"])
end

Então("deve logar usuário a plataforma") do
  expect(@dashboard).to have_salutation
end
