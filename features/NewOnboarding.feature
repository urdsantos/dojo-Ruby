#language:pt

Funcionalidade: Criar novo Onboarding
Para que possa criar um novo p Onboarding
Estando na página inicial da pagamentos
Preciso clicar em novo pedido de Onboarging

@onboarding
Cenario: Acessar formulario de novo Onboarding

Dado que eu esteja na página inicial da pagamentos 'https://dev-pagamentos.grafeno.be/admin'
E realize o login com o usuário 'andre.luiz@grafeno.digital' e senha 'GR@feno10'
Quando clicar em novo pedido de Onboarding
Então deve ser exibido o formulário de novo Onboarding