class CreateGalerias < ActiveRecord::Migration[5.1]
  def change
    create_table :galerias do |t|
      t.references :veiculo, foreign_key: true

      t.timestamps
    end
  end
end
