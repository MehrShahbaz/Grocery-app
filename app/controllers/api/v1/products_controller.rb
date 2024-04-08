# frozen_string_literal: true

module Api
  module V1
    # ProductsController
    class ProductsController < ApplicationController
      before_action :set_product, only: %i[show update destroy]

      def index
        @products = Product.all.limit(10)

        render json: @products
      end

      def show
        render json: @product
      end

      def create
        @product = Product.new(product_params)

        if @product.save
          render json: @product, status: :created
        else
          render json: @product.errors, status: :unprocessable_entity
        end
      end

      def update
        if @product.update(product_params)
          render json: @product
        else
          render json: @product.errors, status: :unprocessable_entity
        end
      end

      def destroy
        id = @product.id
        @product.destroy!

        render json: id, status: :ok
      end

      private

      def set_product
        @product = Product.find(params[:id])
      end

      def product_params
        params.require(:product).permit(:name, :manufacturer_id, :food_mart_id,
                                        category_ids: [],
                                        categories_attributes: [:name],
                                        manufacturer_attributes: [:name],
                                        prices_attributes: [:amount],
                                        reviews_attributes: %i[content rating title])
      end
    end
  end
end
