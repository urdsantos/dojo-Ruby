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
E deve ser preenchido a Fantasia 'AUTOMAÇÃO FANTASIA', Razão Social 'AUTOMAÇÃO RAZÃO SOCIAL', CNPJ '08987286000152', Email 'automation@grafeno.digital'
Quando clicar em salvar
Então deverá ser exibida a mensagem 'Onboarding criado com sucesso'

