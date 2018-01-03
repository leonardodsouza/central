class CreateGraficos < ActiveRecord::Migration[5.1]
  def change
    create_table :graficos do |t|
      t.references :veiculo, foreign_key: true

      t.timestamps
    end
  end
end
