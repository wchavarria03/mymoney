# frozen_string_literal
module Api::V1
  class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :update, :destroy]

    # GET v1/categories
    def index
      @categories = Category.all

      render json: @categories
    end

    # GET /categories/1
    def show
      render json: @category
    end

    # POST v1/categories
    def create
      @category = Category.new(category_params)

      if @category.save
        render json: @category, status: :created
      else
        render json: @category.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT v1/categories/1
    def update
      if @category.update(category_params)
        render json: @category
      else
        render json: @category.errors, status: :unprocessable_entity
      end
    end

    # DELETE v1/categories/1
    def destroy
      @category.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:title, :description)
    end
  end
end
