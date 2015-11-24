class Pannello < ActiveRecord::Base
  has_attached_file :image, styles: { 
    normal: "1024x1024>",
    big: "600x600>",
    medium: "300x300>", 
    thumb: "100x100>" 
  }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :image
  has_many :operas
end
