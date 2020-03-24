class CreateClienteAssinaturas < ActiveRecord::Migration[6.0]
  def change
    create_table :cliente_assinaturas do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :assinatura, null: false, foreign_key: true

      t.timestamps
    end
  end
end
