class AddPublicarToClientes < ActiveRecord::Migration[5.1]
  def change
    add_column :clientes, :publicar, :string, default: 'não'
  end
end
