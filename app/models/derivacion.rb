class Derivacion < ActiveRecord::Base
	belongs_to :entrevista
	belongs_to :departamento
end
