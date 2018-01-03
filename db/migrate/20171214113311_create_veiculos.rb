class CreateVeiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :veiculos do |t|
      t.string :categoria
      t.string :marca
      t.string :modelo
      t.text :descricao
      t.integer :visualizacoes

      t.timestamps
    end
  end
end
