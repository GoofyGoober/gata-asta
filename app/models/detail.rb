class Detail < ActiveRecord::Base
  has_attached_file :image, 
  styles: { 
    normal: "1024x1024>", 
    medium: "300x300>", 
    thumb: "100x100>",
    big: "600x600>"
  },  
  convert_options: {
    normal: '-quality 80 -strip',
    medium: '-quality 80 -strip',
    thumb: '-quality 60 -strip',
    big: '-quality 80 -strip'
  }
  belongs_to :opera
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :image, :opera_id, presence: true
end