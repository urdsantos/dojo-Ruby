Dado("acesse para obter o registro a plataforma BugBank") do
  visit "http://localhost:3000/#"
  find_button("Registrar").click
end

Quando("submeto os dados para registro {string}, {string}, {string}, {string}") do |email, nome, senha, confirma_senha|
  all('input[name="email"]')[1].set email
  find('input[name="name"]').set nome
  all('input[name="password"')[1].set senha
  find('input[name="passwordConfirmation"]').set confirma_senha
end

Quando("efetivar o registro sem saldo") do
  find(".card__register .button__child").click
end

Então("deve exibir mensagem de sucesso {string}") do |mensagem|
  mensagens = find('p[id="modalText"]').text
  expect(mensagens).to have_content mensagem
end
