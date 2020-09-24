# frozen_string_literal: true

# Description/Explanation of CocktailController
class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def search
    @cocktails = Cocktail.where("name LIKE ?", "%" + params[:q] + "%")
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    @cocktail.save

    redirect_to cocktails_path
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name, :description, :instruction, :alcohol, :prep_time)
  end
end
