class ProductsController < ApplicationController
  layout "product"
  def index
    @products = Product.all
    @page_title = "Products"
  end
  
  def new
    @product = Product.new
    3.times { @product.badges.build }
  end

  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Your product is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_path, notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @product = Product.find(params[:id])
    @page_title = @product.code
    @seo_keywords = @product.description
  end

  def destroy
    # Perform the lookup
    @product = Product.find(params[:id])

    # Destroy/delete the record
    @product.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Record was removed.' }
    end
  end

  private

  def product_params
    params.require(:product).permit(:code, :description, :features, :main_image, :category_id, badges_attributes: [:title])
  end
end
