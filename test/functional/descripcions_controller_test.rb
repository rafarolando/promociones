require 'test_helper'

class DescripcionsControllerTest < ActionController::TestCase
  setup do
    @descripcion = descripcions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descripcions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create descripcion" do
    assert_difference('Descripcion.count') do
      post :create, descripcion: { descripcion: @descripcion.descripcion, direccion: @descripcion.direccion, email: @descripcion.email, id_empresa: @descripcion.id_empresa, telefono: @descripcion.telefono }
    end

    assert_redirected_to descripcion_path(assigns(:descripcion))
  end

  test "should show descripcion" do
    get :show, id: @descripcion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @descripcion
    assert_response :success
  end

  test "should update descripcion" do
    put :update, id: @descripcion, descripcion: { descripcion: @descripcion.descripcion, direccion: @descripcion.direccion, email: @descripcion.email, id_empresa: @descripcion.id_empresa, telefono: @descripcion.telefono }
    assert_redirected_to descripcion_path(assigns(:descripcion))
  end

  test "should destroy descripcion" do
    assert_difference('Descripcion.count', -1) do
      delete :destroy, id: @descripcion
    end

    assert_redirected_to descripcions_path
  end
end
