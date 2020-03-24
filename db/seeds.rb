# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TipoCliente.create!(tipo: 'Pessoa Física')
TipoCliente.create!(tipo: 'Pessoa Juridica')

(1..10).each do |num|
  Plano.create!(
    nome: "Plano #{1}",
    descricao: FFaker::Book.description,
    valor: (rand * 1000)
  )
end

(1..1000).each do
  Cliente.create(tipo_cliente_id: rand(1..2),
                 estado: FFaker::AddressBR.state_abbr)
end

Cliente.find_each do |cliente|
  assinatura = Assinatura.create!(
    plano_id: rand(1..10),
    vigencia: FFaker::Time.between('2012-11-12 16:20', '2018-11-12 16:20'),
    valor_total: (rand * 1000)
  )

  ClienteAssinatura.create!(cliente: cliente, assinatura: assinatura)
end

(1..1000).each do
  Acesso.create!(
    opcao_menu: FFaker::Internet.domain_name, cliente_id: rand(1..9999)
  )
end
