class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :colors
  has_many :line_items
  has_many :orders, :through => :line_items

 
  validates :name, :price, :description, :image_url, :presence => true
  before_destroy :ensure_not_referenced_by_any_line_item
 
  #...
 
 
  private
 
    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end
end
