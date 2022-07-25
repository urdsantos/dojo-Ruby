#language: pt

    Funcionalidade: Login
        Como usuário devo acessar URL da Grafeno Pagamentos, ser direcionado a plataforma;
        Onde possa inserir as credencias de acesso
        Houver a validações dos dados, deve ter um retorno ao usuário;

    Contexto:
        Dado que deseja acessar plataforma


    Cenário: Acessar Grafeno Pagamentos
        
        Quando acessar URL Grafeno Pagementos
        Então devo ser direcionado a tela de Login

    Cenário: Login inválido

        Quando informar credencias inválidas
        Então deve impedir login e exibir mensagem de erro

    Cenário: Login Bloqueado

        Quando informar credenciais de usuário bloqueado pelo administrador
        Então deve impedir acesso a plataforma e exibir mensagem

    @doing
    Cenário: Login Válido

        Quando informar credencias válidas de acesso
        Então deve logar usuário a plataforma
    