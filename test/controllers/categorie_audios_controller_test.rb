require 'test_helper'

class CategorieAudiosControllerTest < ActionController::TestCase
  setup do
    @categorie_audio = categorie_audios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorie_audios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorie_audio" do
    assert_difference('CategorieAudio.count') do
      post :create, categorie_audio: { description: @categorie_audio.description, name: @categorie_audio.name, user_id: @categorie_audio.user_id }
    end

    assert_redirected_to categorie_audio_path(assigns(:categorie_audio))
  end

  test "should show categorie_audio" do
    get :show, id: @categorie_audio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorie_audio
    assert_response :success
  end

  test "should update categorie_audio" do
    patch :update, id: @categorie_audio, categorie_audio: { description: @categorie_audio.description, name: @categorie_audio.name, user_id: @categorie_audio.user_id }
    assert_redirected_to categorie_audio_path(assigns(:categorie_audio))
  end

  test "should destroy categorie_audio" do
    assert_difference('CategorieAudio.count', -1) do
      delete :destroy, id: @categorie_audio
    end

    assert_redirected_to categorie_audios_path
  end
end
