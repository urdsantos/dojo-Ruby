Dado('que deseja recuperar senha de acesso') do
    @recover_page.load
end
  
Quando('informar e-mail que deseja recuperar senha de acesso') do
   @recover_page.send_recovery(@file["recover_success"])
end
  
Então('deve exibir mensagem') do
   expect(@recover_page).to have_alert
end
  