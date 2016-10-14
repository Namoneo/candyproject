class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update]
    before_action :authenticate_user!, except: [:show]

    def index
      @products = current_user.products
    end

    def show
       @photos = @product.photos
    end

    def new
      @product = current_user.products.build
    end

    def create
      @product = current_user.products.build(product_params)

      if @product.save
        image_params.each do |image|
          @product.photos.create(image: image)
        end

        redirect_to edit_product_path(@product), notice: "Product successfully created"
        else
        render :new
        end
    end

    def edit
      if current_user.id == @product.user.id
        @photos = @product.photos
      else
        redirect_to root_path, notice: "You don't have permission."
      end
    end

    def update
      if @product.update(product_params)
        image_params.each do |image|
          @product.photos.create(image: image)
        end

        redirect_to edit_product_path(@product), notice: "Product successfully updated"
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

      def image_params
        params[:images].present? ? params.require(:images) : []
      end
end
