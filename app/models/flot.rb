class Flot < ActiveRecord::Base
	has_many :ships
	belongs_to :user
	#tu mozna dać walidacje
	
end
