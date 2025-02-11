class Product < ActiveRecord::Base
  validates :name, :image_url, :presence => true
  
  belongs_to :t_category
  has_many :user_products
  
  def self.search(search)
   if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
        find(:all)
    end
  end
end
