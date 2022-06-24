#language:pt

Funcionalidade: Criar novo Onboarding
Para que possa criar um novo p Onboarding
Estando na página inicial da pagamentos
Preciso clicar em novo pedido de Onboarging

@onboarding
Cenario:Preencher formulario de novo Onboarding
    Dado que eu esteja na página inicial da pagamentos 'https://dev-pagamentos.grafeno.be/admin'
    E realize o login com o usuário 'andre.luiz@grafeno.digital' e senha 'GR@feno10'
    Quando clicar em novo pedido de Onboarding
    Então deve ser exibido o formulário de novo Onboarding
    E deve ser preenchido a Fantasia 'AUTOMAÇÃO FANTASIA', Razão Social 'AUTOMAÇÃO RAZÃO SOCIAL', CPF válido, Email 'automation@grafeno.digital'
    Quando clicar em salvar
    Então deverá ser exibida a mensagem 'Participante enviado para o sistema de cadastros. Se aprovado, será retornado para pagamentos'


Cenario: Acessar o convite do Onboarding
    Dado que eu acesse a página da Cadastros 'https://cadastros.dev.grafeno.be'
    E realize login com usuario 'andre.teste@grafeno.digital' e senha 'G@b12203'
    E entrar em Solicitações de Cadastro
    E localizar a empresa pelo CPF
    Quando selecionar o cadastro corretamente
    E  clicar no link
    Entao serei direcionado para a tela de Onboarding

