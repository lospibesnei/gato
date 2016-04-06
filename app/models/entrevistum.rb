class Entrevistum < ActiveRecord::Base
	belongs_to :horario
	belongs_to :alumno
	belongs_to :motivo
	belongs_to :aula
	has_one :derivacion
end
