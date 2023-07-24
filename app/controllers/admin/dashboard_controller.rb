class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['ADMIN_NAME'], password: ENV['ADMIN_PASSWORD']

  def show
    @quantity_of_products = Product.count
    @quantity_of_categories = Category.count
  end
end
