json.array!(@horarios) do |horario|
  json.extract! horario, :id, :hora, :fecha
  json.url horario_url(horario, format: :json)
end
