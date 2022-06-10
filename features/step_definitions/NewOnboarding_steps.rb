Dado('que eu esteja na página inicial da pagamentos {string}') do |plataforma|
    visit plataforma
  end
  
  Dado('realize o login com o usuário {string} e senha {string}') do |usuario, senha|
    find('#user_email').set usuario
    find('#user_password').set senha
    find('input[name="commit"]').click
  end
  
  Quando('clicar em novo pedido de Onboarding') do
   find('#cadastro > a').click
   find('#novos_pedidos > a:nth-child(1)').click
   find('#enviar_onboarding > a').click
  end
  
  Então('deve ser exibido o formulário de novo Onboarding') do
    expect(page).to have_content 'Novo(a) Participante'
  end