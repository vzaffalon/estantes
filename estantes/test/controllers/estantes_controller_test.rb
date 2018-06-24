require 'test_helper'

class EstantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estante = estantes(:one)
  end

  test "should get index" do
    get estantes_url
    assert_response :success
  end

  test "should get new" do
    get new_estante_url
    assert_response :success
  end

  test "should create estante" do
    assert_difference('Estante.count') do
      post estantes_url, params: { estante: { nome: @estante.nome, user_id: @estante.user_id } }
    end

    assert_redirected_to estante_url(Estante.last)
  end

  test "should show estante" do
    get estante_url(@estante)
    assert_response :success
  end

  test "should get edit" do
    get edit_estante_url(@estante)
    assert_response :success
  end

  test "should update estante" do
    patch estante_url(@estante), params: { estante: { nome: @estante.nome, user_id: @estante.user_id } }
    assert_redirected_to estante_url(@estante)
  end

  test "should destroy estante" do
    assert_difference('Estante.count', -1) do
      delete estante_url(@estante)
    end

    assert_redirected_to estantes_url
  end
end
