# frozen_string_literal: true

module Api
  module V1
    # ManufacturersController
    class ManufacturersController < ApplicationController
      before_action :set_manufacturer, only: %i[show update destroy]

      def index
        @manufacturers = Manufacturer.all

        render json: @manufacturers
      end

      def show
        render json: @manufacturer
      end

      def create
        @manufacturer = Manufacturer.new(manufacturer_params)

        if @manufacturer.save
          render json: @manufacturer, status: :created
        else
          render json: @manufacturer.errors, status: :unprocessable_entity
        end
      end

      def update
        if @manufacturer.update(manufacturer_params)
          render json: @manufacturer
        else
          render json: @manufacturer.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @manufacturer.destroy!
      end

      private

      def set_manufacturer
        @manufacturer = Manufacturer.find(params[:id])
      end

      def manufacturer_params
        params.require(:manufacturer).permit(:name)
      end
    end
  end
end
