class AddAttachmentFotoToClientes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :clientes do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :clientes, :foto
  end
end
