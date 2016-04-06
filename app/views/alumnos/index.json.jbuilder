json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :nroalumno, :apellido, :nombre, :emailuap, :sexo, :vidaestudiantil, :fechanacimiento, :carrera, :cohorte, :añolectivo, :matriculado
  json.url alumno_url(alumno, format: :json)
end
