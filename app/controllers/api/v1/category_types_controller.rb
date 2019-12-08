# frozen_string_literal: true
module Api::V1
  class CategoryTypesController < ApplicationController
    before_action :set_category_type, only: [:show, :update, :destroy]

    # GET /category_types
    def index
      @category_types = CategoryType.all
      render json: @category_types
    end

    # GET /category_types/1
    def show
      render json: @category_type
    end

    # POST /category_types
    def create
      @category_type = CategoryType.new(category_type_params)

      if @category_type.save
        render json: @category_type, status: :created
      else
        render json: @category_type.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /category_types/1
    def update
      if @category_type.update(category_type_params)
        render json: @category_type
      else
        render json: @category_type.errors, status: :unprocessable_entity
      end
    end

    # DELETE /category_types/1
    def destroy
      @category_type.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_category_type
      @category_type = CategoryType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_type_params
      params.require(:category_type).permit(:name)
    end
  end
end
