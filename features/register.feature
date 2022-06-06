#language:pt

Funcionalidade: Registrar
    Para que possa registrar na plataforma BugBank
    Sendo um novo usuário
    Posso me registrar na plataforma

@doing
Cenario: Registrar novo usuário sem saldo

    Dado acesse para obter o registro a plataforma BugBank
    Quando submeto os dados para registro "uesley.santos+teste2@grafeno.digital", "Uesley", "@Pass1234", "@Pass1234"
    E efetivar o registro sem saldo
    Então deve exibir mensagem de sucesso "foi criada com sucesso"