# frozen_string_literal: true

module Api
  module V1
    # CategoriesController
    class CategoriesController < BaseController
      before_action :set_category, only: %i[show update destroy]

      def index
        @categories = if params[:search]
                        Category.where('name LIKE ?', "%#{params[:search]}%")
                      else
                        Category.all.limit(10)
                      end

        render json: @categories
      end

      def show
        render json: @category
      end

      def create
        @category = Category.new(category_params)

        if @category.save!
          render json: @category, status: :created
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      def update
        if @category.update(category_params)
          render json: @category
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @category.destroy!
      end

      private

      def set_category
        @category = Category.find(params[:id])
      end

      def category_params
        params.require(:category).permit(:name)
      end
    end
  end
end
