class Task < ActiveRecord::Base
	belongs_to :project
	has_one :integrants #una tarea tiene un integrante
end
