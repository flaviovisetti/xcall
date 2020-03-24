class CreateTipoClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_clientes do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
