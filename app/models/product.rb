class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  
  validates :title, :image_url, :description, presence: true
  validates :price, numericality:{ greater_than_orequal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:   %r{\.(gif|jpg|png)$}i,
    message: 'have to be url of image'
  }
end
