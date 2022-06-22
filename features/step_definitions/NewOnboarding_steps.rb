require "cpf_cnpj"

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
    cpfNumber = CPF.generate
    cpf = CPF.new(cpfNumber)

    find('#client_name').set fantasia
    find('#client_company_name').set razao_social
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