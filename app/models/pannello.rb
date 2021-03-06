class Pannello < ActiveRecord::Base
  has_attached_file :image, styles: { 
    normal: "1024x1024>",
    big: "600x600>",
    medium: "300x300>", 
    thumb: "100x100>" 
  },  
  convert_options: {
    normal: '-quality 90 -strip',
    medium: '-quality 80 -strip',
    thumb: '-quality 60 -strip',
    big: '-quality 80 -strip'
  }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :image
  has_many :operas
end
