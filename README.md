# README

Cadastro de Placas de Carros

* Ruby version 2.7.1
* Rails version 6.0.3

### Configuration

  1. Yarn install
  2. bundle install
  3. rails db:migrate
  
### Funcionalidade 

    1. Conexão com banco de dados Postgres
    2. A aplicação com a tabela “placas_carro” e as seguintes colunas: placa(id da tabela), proprietario, modelo, ano
    3. Duas telas da aplicação:
        3.1. Tela inicial com a listagem dos registros:
            3.1.1 Lista registros existentes
            3.1.2. Botão de inclusão de novo registro
            3.1.3. Na linha do registro existente existe um botão de exclusão
            3.1.4. Na linha do registro tem a função para editar o registro (mesma tela de inclusão)
        3.2. Tela inclusão de registro novo
