# frozen_string_literal: true

module Api
  module V1
    # FoodMartsController
    class FoodMartsController < ApplicationController
      before_action :set_food_mart, only: %i[show update destroy]

      def index
        @food_marts = FoodMart.all

        render json: @food_marts
      end

      def show
        render json: @food_mart
      end

      def create
        @food_mart = FoodMart.new(food_mart_params)

        if @food_mart.save
          render json: @food_mart, status: :created, location: @food_mart
        else
          render json: @food_mart.errors, status: :unprocessable_entity
        end
      end

      def update
        if @food_mart.update(food_mart_params)
          render json: @food_mart
        else
          render json: @food_mart.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @food_mart.destroy!
      end

      private

      def set_food_mart
        @food_mart = FoodMart.find(params[:id])
      end

      def food_mart_params
        params.require(:food_mart).permit(:name, :location)
      end
    end
  end
end
