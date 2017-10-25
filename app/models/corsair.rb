class Corsair < ApplicationRecord
	validates :likeness,  acceptance: { accept: ['kebab', 'hummus'] }
	validates :firstname, :age, presence: true
	
end
