class AddAttachmentFotoToVeiculos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :veiculos do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :veiculos, :foto
  end
end
