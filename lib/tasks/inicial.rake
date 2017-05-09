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
      password: '*d10g0oi7i',
      password_confirmation: '*d10g0oi7i',
      # nome: 'Sr. Teste',
      confirmed_at: DateTime.now,
      admin: true
    )
  end