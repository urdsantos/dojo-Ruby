Dado('que eu esteja no painel ADM da pagamentos') do
    visit 'https://dev-pagamentos.grafeno.be/admin'
    fill_in 'user_email', with: 'andre.luiz@grafeno.digital'
    fill_in 'user_password', with: 'GR@feno10'
    click_button 'Login'
end

Quando('clicar no bo meu usuário') do
    click_link 'André Luiz'
  end
  
  E('clicar para gerenciar 2Fatores') do
   click_link 'Gerenciar 2FA'

  end
  
  Então('será possivel habilitar 2Fatores') do
   expect(page).to have_content 'Habilitar 2FA'
  end