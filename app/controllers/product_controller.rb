class ProductController < ApplicationController
  def add
    @product_name = request["ProductName"]
    @product_category = request["ProductCategory"]
    @vendor_name = request["VendorName"]
    @product_quandity = request["ProductQuandity"]
    @price = request["Price"]
    product = Product.new
    product.product_name = @product_name
    product.product_category = @product_category
    product.vendor_name = @vendor_name
    product.product_qty = @product_quandity
    product.price = @price
    product.save 
    render text: "Data Saved" 
  end
  def create
    
  end

  def read
    @product = Product.all
  end
  
  def edit
      @pro_id = request["product_id"]
      product = Product.find_by_id(@pro_id)
      @product_id = product.id
      @product_name = product.product_name
      @product_category = product.product_category
      @vendor_name = product.vendor_name
      @product_quandity = product.product_qty
      @price = product.price 
  end
  
  def update
      @product_id = request["product_id"]
      @product_name = request["ProductName"]
      @product_category = request["ProductCategory"]
      @vendor_name = request["VendorName"]
      @product_quandity = request["ProductQuandity"]
      @price = request["Price"]
      product = Product.find_by_id(@product_id)
      product.product_name = @product_name
      product.product_category = @product_category
      product.vendor_name = @vendor_name
      product.product_qty = @product_quandity
      product.price = @price
      product.save
      redirect_to "/read"
      
  end

  def delete
      @product_id=request["product_id"]
      puts "---------------------------------------------------------"
      puts @product_id
      Product.find_by_id(@product_id).delete    
      redirect_to "/read"
  end
end
