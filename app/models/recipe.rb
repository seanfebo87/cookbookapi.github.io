class Recipe < ApplicationRecord 
	validates_presence_of :name, :instructions, :ingredients, :picture 
	
	def voted 
		self.votes += 1
	end
end
