json.array!(@docentes) do |docente|
  json.extract! docente, :id, :nropeople, :apellido, :nombre, :emailuap, :sexo, :fechancimiento, :carrera, :añolectivo
  json.url docente_url(docente, format: :json)
end
