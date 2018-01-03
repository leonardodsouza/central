class AddPrecoAndTipoToVeiculos < ActiveRecord::Migration[5.1]
  def change
    add_column :veiculos, :preco, :string
    add_column :veiculos, :tipo, :string
  end
end
