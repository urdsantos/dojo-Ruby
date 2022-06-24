require "cpf_cnpj"
cpfNumber = CPF.generate
cpf = CPF.new(cpfNumber)
timeNow = Time.new

Dado('que eu esteja na página inicial da pagamentos {string}') do |plataforma|
    visit plataforma
  end
  
  E('realize o login com o usuário {string} e senha {string}') do |usuario, senha|
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



  E('deve ser preenchido a Fantasia {string}, Razão Social {string}, CPF válido, Email {string}') do |fantasia, razao_social, email|

    find('#client_name').set fantasia + timeNow.strftime(" | %d/%m/%Y - %H:%M:%S")
    find('#client_company_name').set razao_social + timeNow.strftime(" | %d/%m/%Y - %H:%M:%S")
    fill_in 'client_document_number', with: cpf.formatted
    find('#client_onboarding_email').set email
    find('.select2-selection__placeholder').click
    sleep 2
    all('.select2-results__option').sample.click
  end

  Quando('clicar em salvar') do
    find('input[type="submit"]').click
  end

  Então('deverá ser exibida a mensagem {string}') do |mensagem_sucesso|
    expect(page).to have_content mensagem_sucesso
  end




  Dado('que eu acesse a página da Cadastros {string}') do |site_cadastros|
    visit site_cadastros

  end

  E('realize login com usuario {string} e senha {string}') do |usuario, senha|
    fill_in 'admin_user_email', with: usuario
    fill_in 'admin_user_password', with: senha
    click_button 'Log in'
  end
  
  E('entrar em Solicitações de Cadastro') do
   find('#register_requests').click
  end
  
  E('localizar a empresa pelo CPF') do
   fill_in 'q_client_document_number_cont_numbers', with: cpf.formatted
   click_button 'Filtrar'
  end
  
  Quando('selecionar o cadastro corretamente') do
    find('#index_table_register_requests > tbody:nth-child(2)', text: cpf.formatted).click
  end
  
  E('clicar no link') do
    click_link 'Link'
  end
  
  Então('serei direcionado para a tela de Onboarding') do
    expect(page).to have_content 'A sua experiência Grafeno começa agora.'
  end