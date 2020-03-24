class ClienteAssinatura < ApplicationRecord
  belongs_to :cliente
  belongs_to :assinatura
end
