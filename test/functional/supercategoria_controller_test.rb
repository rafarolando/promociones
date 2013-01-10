require 'test_helper'

class SupercategoriaControllerTest < ActionController::TestCase
  setup do
    @supercategorium = supercategoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supercategoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supercategorium" do
    assert_difference('Supercategorium.count') do
      post :create, supercategorium: { id_categoria: @supercategorium.id_categoria, nombre: @supercategorium.nombre }
    end

    assert_redirected_to supercategorium_path(assigns(:supercategorium))
  end

  test "should show supercategorium" do
    get :show, id: @supercategorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supercategorium
    assert_response :success
  end

  test "should update supercategorium" do
    put :update, id: @supercategorium, supercategorium: { id_categoria: @supercategorium.id_categoria, nombre: @supercategorium.nombre }
    assert_redirected_to supercategorium_path(assigns(:supercategorium))
  end

  test "should destroy supercategorium" do
    assert_difference('Supercategorium.count', -1) do
      delete :destroy, id: @supercategorium
    end

    assert_redirected_to supercategoria_path
  end
end
