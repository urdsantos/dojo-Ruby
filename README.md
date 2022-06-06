# Automação Ruby

## Requisitos
-   Ruby 2.6.6
-   Git

Recomendo o uso do rbenv para o Ruby:
-   https://github.com/rbenv/rbenv

## Requisitos de SO (Sistema Operacional)

A stack foi testada nos seguintes ambientes:

- Windows 10 Pro
- Ubuntu 20.04.4 LTS

## Setup

Neste tópico iremos aprender a fazer o setup do nosso projeto.
Para começo de conversa, vamos clonar projeto que está no GitHub.

-   `git clone git@github.com:urdsantos/dojo-Ruby.git`

-   `cd "dojo-Ruby"`

Após clonar o projeto, devemos atualizar as Gems que foram vinculadas ao projeto.

-   `bundle install`

## Execução de Testes

Para os teste serem executados, podemos realizar duas execuções, tanto em regressão e teste isoados:

- Teste de Regressão:

​     `cucumber features\specs\client\client_.feature`

Neste comando será executados todos os cenários no arquivo `cliente_feature`

- Teste isolados utilizando Tags:

​    `cucumber -t @doing`

Será executado o cenário que está vinculado a tag

## Contribuição

Contribuição são sempre bem-vindas! Para contribuir lembre-se sempre de adicionar teste com BDD para as novas automações.

## Links

-   Capybara: https://github.com/teamcapybara/capybara 
-   Rspec: https://www.tutorialspoint.com/rspec/rspec_matchers.htm