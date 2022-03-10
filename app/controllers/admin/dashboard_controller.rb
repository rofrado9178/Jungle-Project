class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["NAME"], password: ENV["PASSWORD"]
  
  def show
    @total_product = Product.count
    @total_categories = Category.count
 
  end
end
