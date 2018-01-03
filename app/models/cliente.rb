class Cliente < ApplicationRecord
    has_attached_file :foto, styles: {grande: "700X700>", capa: "600X600>", medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
end
