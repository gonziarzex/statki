class Ship < ActiveRecord::Base
	belongs_to :flot
	validates_presence_of :gatunek
end
