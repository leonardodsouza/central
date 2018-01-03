class AddAttachmentFotoToGalerias < ActiveRecord::Migration[5.1]
  def self.up
    change_table :galerias do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :galerias, :foto
  end
end
