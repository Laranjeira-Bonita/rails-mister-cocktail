class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(description: params[:dose][:description])
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: 'New ingredient successfully created.'
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end
 
  private

  
end
