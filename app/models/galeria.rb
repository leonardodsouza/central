class Galeria < ApplicationRecord
  belongs_to :veiculo
  has_attached_file :foto, styles: {grande: "600X600>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
end
