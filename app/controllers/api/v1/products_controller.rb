# frozen_string_literal: true

module Api
  module V1
    # Products Controller
    class ProductsController < ApplicationController
      before_action :set_product, only: %i[show update destroy]
      before_action :set_search_products, only: %i[index]

      def index
        render json: { products: serialized_products, count: @count }
      end

      def show
        render json: @product
      end

      def create
        @product = Product.new(product_params)

        if @product.save
          render json: @product, status: :created
        else
          render_errors(@product)
        end
      end

      def update
        if @product.update(product_params)
          render json: @product
        else
          render_errors(@product)
        end
      end

      def destroy
        @product.destroy
        render json: { id: @product.id }, status: :ok
      end

      private

      def set_product
        @product = Product.find(params[:id])
      end

      def set_search_products
        @products = Product.where('name LIKE ?', "%#{params[:search]}%").order(:name).page(params[:page] || 1).per(params[:per_page])
        @count = @products.total_count
      end

      def product_params
        params.require(:product).permit(:name, :manufacturer_id, :food_mart_id,
                                        category_ids: [],
                                        categories_attributes: [:name],
                                        manufacturer_attributes: [:name],
                                        prices_attributes: [:amount],
                                        reviews_attributes: %i[content rating title])
      end

      def serialized_products
        ActiveModel::Serializer::CollectionSerializer.new(@products, serializer: ProductSerializer)
      end

      def render_errors(resource)
        render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end
end
