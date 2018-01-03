class AddAttachmentFotoToBanners < ActiveRecord::Migration[5.1]
  def self.up
    change_table :banners do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :banners, :foto
  end
end
