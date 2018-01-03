class CreateArtigos < ActiveRecord::Migration[5.1]
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.string :resumo
      t.text :texto

      t.timestamps
    end
  end
end
