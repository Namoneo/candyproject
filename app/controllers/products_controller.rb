class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update]
    before_action :authenticate_user!, except: [:show]

    def index
      @products = current_user.products
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
        params.require(:product).permit(:name, :price)
      end
end
