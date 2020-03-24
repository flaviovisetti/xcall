class AddCriadoEmToAcessos < ActiveRecord::Migration[6.0]
  def change
    add_column :acessos, :criado_em, :timestamp
  end
end
