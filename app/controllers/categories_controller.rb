class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @page_titles = "Categories"
  end
end
