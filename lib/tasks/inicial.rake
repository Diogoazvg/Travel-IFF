  require 'rake'
  require 'faker'
  require 'cpf_utils'
  require 'cnpj_utils'

  Faker::Config.locale = 'pt-BR'

  desc "Create user admin"
  task criar_admin: :environment do
    # Usuário para testes
    User.create(
      email: 'admin@teste.com',
      password: '12345678',
      password_confirmation: '12345678',
      # nome: 'Sr. Teste',
      confirmed_at: DateTime.now,
      admin: true
    )
  end