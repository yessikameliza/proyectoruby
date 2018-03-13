class Project < ActiveRecord::Base
	 has_many :tasks #un proyecto tiene muchas tareas
has_many :integrants
end
