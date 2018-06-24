require 'test_helper'

class ResenhasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resenha = resenhas(:one)
  end

  test "should get index" do
    get resenhas_url
    assert_response :success
  end

  test "should get new" do
    get new_resenha_url
    assert_response :success
  end

  test "should create resenha" do
    assert_difference('Resenha.count') do
      post resenhas_url, params: { resenha: { descricao: @resenha.descricao, livro_id: @resenha.livro_id, user_id: @resenha.user_id } }
    end

    assert_redirected_to resenha_url(Resenha.last)
  end

  test "should show resenha" do
    get resenha_url(@resenha)
    assert_response :success
  end

  test "should get edit" do
    get edit_resenha_url(@resenha)
    assert_response :success
  end

  test "should update resenha" do
    patch resenha_url(@resenha), params: { resenha: { descricao: @resenha.descricao, livro_id: @resenha.livro_id, user_id: @resenha.user_id } }
    assert_redirected_to resenha_url(@resenha)
  end

  test "should destroy resenha" do
    assert_difference('Resenha.count', -1) do
      delete resenha_url(@resenha)
    end

    assert_redirected_to resenhas_url
  end
end
