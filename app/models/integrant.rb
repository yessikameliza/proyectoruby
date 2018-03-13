class Integrant < ActiveRecord::Base
	belongs_to :project
	has_one :tasks #un integrante tiene una tarea 
end
