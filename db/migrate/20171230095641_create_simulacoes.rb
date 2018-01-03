class CreateSimulacoes < ActiveRecord::Migration[5.1]
  def change
    create_table :simulacoes do |t|
      t.string :tipo
      t.string :nome
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
