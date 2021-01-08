class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def top
    @cocktails = Cocktail.where(rating: 5)
  end

  def index
    @cocktails = Cocktail.all
    @ingredients = Ingredient.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail = Cocktail.create(cocktail_params)
    if cocktail.save
      redirect_to cocktail_path(cocktail)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(cocktail_params)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :rating)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
