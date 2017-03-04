require 'test_helper'

class UlicesControllerTest < ActionController::TestCase
  setup do
    @ulice = ulices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ulices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ulice" do
    assert_difference('Ulice.count') do
      post :create, ulice: { autor: @ulice.autor, data_wpisu: @ulice.data_wpisu, email_autora: @ulice.email_autora, miejscowosc: @ulice.miejscowosc, nazwa_ulicy: @ulice.nazwa_ulicy, oddział: @ulice.oddział, opinia: @ulice.opinia, telefon_autora: @ulice.telefon_autora, zrodlo_uzasadnienia: @ulice.zrodlo_uzasadnienia }
    end

    assert_redirected_to ulice_path(assigns(:ulice))
  end

  test "should show ulice" do
    get :show, id: @ulice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ulice
    assert_response :success
  end

  test "should update ulice" do
    patch :update, id: @ulice, ulice: { autor: @ulice.autor, data_wpisu: @ulice.data_wpisu, email_autora: @ulice.email_autora, miejscowosc: @ulice.miejscowosc, nazwa_ulicy: @ulice.nazwa_ulicy, oddział: @ulice.oddział, opinia: @ulice.opinia, telefon_autora: @ulice.telefon_autora, zrodlo_uzasadnienia: @ulice.zrodlo_uzasadnienia }
    assert_redirected_to ulice_path(assigns(:ulice))
  end

  test "should destroy ulice" do
    assert_difference('Ulice.count', -1) do
      delete :destroy, id: @ulice
    end

    assert_redirected_to ulices_path
  end
end
