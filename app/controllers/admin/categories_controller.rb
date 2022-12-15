class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.order(:name).all
  end

  def new
  end

  def create
  end
end
