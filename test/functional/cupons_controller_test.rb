require 'test_helper'

class CuponsControllerTest < ActionController::TestCase
  setup do
    @cupon = cupons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cupons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cupon" do
    assert_difference('Cupon.count') do
      post :create, cupon: { cantidad: @cupon.cantidad, descripcion: @cupon.descripcion, descuento: @cupon.descuento, fechafin: @cupon.fechafin, fechaini: @cupon.fechaini, id_empresa: @cupon.id_empresa }
    end

    assert_redirected_to cupon_path(assigns(:cupon))
  end

  test "should show cupon" do
    get :show, id: @cupon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cupon
    assert_response :success
  end

  test "should update cupon" do
    put :update, id: @cupon, cupon: { cantidad: @cupon.cantidad, descripcion: @cupon.descripcion, descuento: @cupon.descuento, fechafin: @cupon.fechafin, fechaini: @cupon.fechaini, id_empresa: @cupon.id_empresa }
    assert_redirected_to cupon_path(assigns(:cupon))
  end

  test "should destroy cupon" do
    assert_difference('Cupon.count', -1) do
      delete :destroy, id: @cupon
    end

    assert_redirected_to cupons_path
  end
end
