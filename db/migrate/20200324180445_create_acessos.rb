class CreateAcessos < ActiveRecord::Migration[6.0]
  def change
    create_table :acessos do |t|
      t.string :opcao_menu
      t.integer :cliente_id

      t.timestamps
    end
  end
end
