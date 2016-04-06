require 'test_helper'

class AlumnosControllerTest < ActionController::TestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alumno" do
    assert_difference('Alumno.count') do
      post :create, alumno: { apellido: @alumno.apellido, añolectivo: @alumno.añolectivo, carrera: @alumno.carrera, cohorte: @alumno.cohorte, emailuap: @alumno.emailuap, fechanacimiento: @alumno.fechanacimiento, matriculado: @alumno.matriculado, nombre: @alumno.nombre, nroalumno: @alumno.nroalumno, sexo: @alumno.sexo, vidaestudiantil: @alumno.vidaestudiantil }
    end

    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should show alumno" do
    get :show, id: @alumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alumno
    assert_response :success
  end

  test "should update alumno" do
    patch :update, id: @alumno, alumno: { apellido: @alumno.apellido, añolectivo: @alumno.añolectivo, carrera: @alumno.carrera, cohorte: @alumno.cohorte, emailuap: @alumno.emailuap, fechanacimiento: @alumno.fechanacimiento, matriculado: @alumno.matriculado, nombre: @alumno.nombre, nroalumno: @alumno.nroalumno, sexo: @alumno.sexo, vidaestudiantil: @alumno.vidaestudiantil }
    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should destroy alumno" do
    assert_difference('Alumno.count', -1) do
      delete :destroy, id: @alumno
    end

    assert_redirected_to alumnos_path
  end
end
