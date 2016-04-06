class Horario < ActiveRecord::Base
	belongs_to :docente
	has_many :entrevista
end
