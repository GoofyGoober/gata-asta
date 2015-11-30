class Opera < ActiveRecord::Base
  has_attached_file :image, styles: { 
    normal: "1024x1024>", 
    medium: "300x300>", 
    thumb: "100x100>",
    big: "600x600>",
    quad2: "300x300#"
  },  
  convert_options: {
    normal: '-quality 90 -strip',
    medium: '-quality 80 -strip',
    thumb: '-quality 60 -strip',
    big: '-quality 80 -strip',
    quad2: '-quality 80 -strip'
  }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :archive_index, :image, :pannello, presence: true
  belongs_to :pannello
  has_many :details

end
