class Banner < ApplicationRecord
    has_attached_file :foto, styles: {grande: "1334X500#"}, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
end
