class RecipesController < ApplicationController 

	def index 
		@recipes = Recipe.all 
		render json: @recipes
	end

	def create 
		@recipe = Recipe.new(recipe_params)
		if @recipe.save 
			render json: @recipe 
		else
			render json: {status: "error"}
		end
	end

	def show 
		@recipe = Recipe.find(params[:id])
		render json: @recipe 
	end
	
	def update
		@recipe = Recipe.find(params[:id])
		@recipe.voted
		@recipe.save
		render json: @recipe.id
	end
	
	private

	def recipe_params
		params.require(:recipe).permit(:name, :instructions, :picture, :ingredients, :votes)
	end
end
