class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update]

    def index
      @products = Product.all
    end

    def show
    end

    def new
      @product = current_user.products.build
    end

    def create
      @product = current_user.products.build(product_params)

      if @product.save
        redirect_to @product, notice: "Product successfully created"
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @product.update(product_params)
        redirect_to @product, notice: "Product successfully updated"
      else
        render :edit
      end
    end

    def destroy
      @product = Product.find(params[:id])

      @product.destroy

      redirect_to products_path
    end

    private
      def set_product
        @product = Product.find(params[:id])
      end

      def product_params
        params.require(:product).permit(:name, :price, :category_id)
      end
end
