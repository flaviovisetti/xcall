class Cliente < ApplicationRecord
  belongs_to :tipo_cliente
  has_one :cliente_assinatura
  has_one :assinatura, through: :cliente_assinatura
end
