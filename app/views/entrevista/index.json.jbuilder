json.array!(@entrevista) do |entrevistum|
  json.extract! entrevistum, :id, :asistencia, :observacion, :tipoentrevista
  json.url entrevistum_url(entrevistum, format: :json)
end
