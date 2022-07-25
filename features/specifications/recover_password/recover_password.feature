#language: pt

Funcionalidade: Recuperar Senha
    Como usuário da plataforma Grafeno, sem acesso a conta por falta da senha de acesso
    Onde possa recuperar senha de acesso
    Houver registrado na base, deve receber instruções de recuperação.

    @doing
    Cenário: Recuperar senha de acesso

        Dado que deseja recuperar senha de acesso
        Quando informar e-mail que deseja recuperar senha de acesso
        Então deve exibir mensagem