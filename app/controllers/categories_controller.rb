require 'about'

class CategoriesController < ApplicationController
  def show
  	@category = Category.find(params[:id])
  	about
  end
end
