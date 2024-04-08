# frozen_string_literal: true

module Api
  module V1
    # ReviewsController
    class ReviewsController < ApplicationController
      before_action :set_review, only: %i[show update destroy]

      def index
        @reviews = Review.all

        render json: @reviews
      end

      def show
        render json: @review
      end

      def create
        @review = Review.new(review_params)

        if @review.save
          render json: @review, status: :created, location: @review
        else
          render json: @review.errors, status: :unprocessable_entity
        end
      end

      def update
        if @review.update(review_params)
          render json: @review
        else
          render json: @review.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @review.destroy!
      end

      private

      def set_review
        @review = Review.find(params[:id])
      end

      def review_params
        params.require(:review).permit(:name, :location, :product_id)
      end
    end
  end
end
