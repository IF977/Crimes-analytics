require 'test_helper'

class ChamadosControllerTest < ActionController::TestCase
  setup do
    @chamado = chamados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chamados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chamado" do
    assert_difference('Chamado.count') do
      post :create, chamado: { bairro: @chamado.bairro, codigo_bairro: @chamado.codigo_bairro, data_solicitacao: @chamado.data_solicitacao, idade: @chamado.idade, motivo_descarte: @chamado.motivo_descarte, numero_solicitacao: @chamado.numero_solicitacao, origem_chamado: @chamado.origem_chamado, sexo: @chamado.sexo, situacao_chamado: @chamado.situacao_chamado, tipo_chamada: @chamado.tipo_chamada, tipo_ocorrencia: @chamado.tipo_ocorrencia }
    end

    assert_redirected_to chamado_path(assigns(:chamado))
  end

  test "should show chamado" do
    get :show, id: @chamado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chamado
    assert_response :success
  end

  test "should update chamado" do
    patch :update, id: @chamado, chamado: { bairro: @chamado.bairro, codigo_bairro: @chamado.codigo_bairro, data_solicitacao: @chamado.data_solicitacao, idade: @chamado.idade, motivo_descarte: @chamado.motivo_descarte, numero_solicitacao: @chamado.numero_solicitacao, origem_chamado: @chamado.origem_chamado, sexo: @chamado.sexo, situacao_chamado: @chamado.situacao_chamado, tipo_chamada: @chamado.tipo_chamada, tipo_ocorrencia: @chamado.tipo_ocorrencia }
    assert_redirected_to chamado_path(assigns(:chamado))
  end

  test "should destroy chamado" do
    assert_difference('Chamado.count', -1) do
      delete :destroy, id: @chamado
    end

    assert_redirected_to chamados_path
  end
end
