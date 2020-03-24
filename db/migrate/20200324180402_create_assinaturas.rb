class CreateAssinaturas < ActiveRecord::Migration[6.0]
  def change
    create_table :assinaturas do |t|
      t.references :plano, null: false, foreign_key: true
      t.timestamp :vigencia
      t.decimal :valor_total

      t.timestamps
    end
  end
end
