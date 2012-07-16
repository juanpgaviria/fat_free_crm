class Product < ActiveRecord::Base
  has_many    :product_assets, :dependent => :destroy

  validates_presence_of :name

end
