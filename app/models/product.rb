class Product < ActiveRecord::Base
  attr_accessible :price, :product_category, :product_name, :product_qty, :vendor_name
end
