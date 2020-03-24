class CreatePlanos < ActiveRecord::Migration[6.0]
  def change
    create_table :planos do |t|
      t.string :nome
      t.decimal :valor
      t.text :descricao

      t.timestamps
    end
  end
end
