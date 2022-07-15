require 'test_helper'

class MusicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musica = musicas(:one)
  end

  test "should get index" do
    get musicas_url, as: :json
    assert_response :success
  end

  test "should create musica" do
    assert_difference('Musica.count') do
      post musicas_url, params: { musica: { criado_por: @musica.criado_por, duracao: @musica.duracao, nome: @musica.nome, url: @musica.url } }, as: :json
    end

    assert_response 201
  end

  test "should show musica" do
    get musica_url(@musica), as: :json
    assert_response :success
  end

  test "should update musica" do
    patch musica_url(@musica), params: { musica: { criado_por: @musica.criado_por, duracao: @musica.duracao, nome: @musica.nome, url: @musica.url } }, as: :json
    assert_response 200
  end

  test "should destroy musica" do
    assert_difference('Musica.count', -1) do
      delete musica_url(@musica), as: :json
    end

    assert_response 204
  end
end
