require 'test_helper'

class ExemplarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exemplar = exemplars(:one)
  end

  test "should get index" do
    get exemplars_url
    assert_response :success
  end

  test "should get new" do
    get new_exemplar_url
    assert_response :success
  end

  test "should create exemplar" do
    assert_difference('Exemplar.count') do
      post exemplars_url, params: { exemplar: { estante_id: @exemplar.estante_id, livro_id: @exemplar.livro_id, nome: @exemplar.nome } }
    end

    assert_redirected_to exemplar_url(Exemplar.last)
  end

  test "should show exemplar" do
    get exemplar_url(@exemplar)
    assert_response :success
  end

  test "should get edit" do
    get edit_exemplar_url(@exemplar)
    assert_response :success
  end

  test "should update exemplar" do
    patch exemplar_url(@exemplar), params: { exemplar: { estante_id: @exemplar.estante_id, livro_id: @exemplar.livro_id, nome: @exemplar.nome } }
    assert_redirected_to exemplar_url(@exemplar)
  end

  test "should destroy exemplar" do
    assert_difference('Exemplar.count', -1) do
      delete exemplar_url(@exemplar)
    end

    assert_redirected_to exemplars_url
  end
end
