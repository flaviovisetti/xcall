class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.references :tipo_cliente, null: false, foreign_key: true
      t.string :estado

      t.timestamps
    end
  end
end
