
class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
    	t.string :name
    	t.string :instructions
    	t.string :ingredients
    	t.string :picture 
    end
  end
end
