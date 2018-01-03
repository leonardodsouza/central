class AddPosicaoToClientes < ActiveRecord::Migration[5.1]
  def change
    add_column :clientes, :posicao, :string
  end
end
