require 'test_helper'

class NewArtworksControllerTest < ActionController::TestCase
  setup do
    @new_artwork = new_artworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_artworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_artwork" do
    assert_difference('NewArtwork.count') do
      post :create, new_artwork: { artist_id: @new_artwork.artist_id, medium: @new_artwork.medium, name: @new_artwork.name, year: @new_artwork.year }
    end

    assert_redirected_to new_artwork_path(assigns(:new_artwork))
  end

  test "should show new_artwork" do
    get :show, id: @new_artwork
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_artwork
    assert_response :success
  end

  test "should update new_artwork" do
    patch :update, id: @new_artwork, new_artwork: { artist_id: @new_artwork.artist_id, medium: @new_artwork.medium, name: @new_artwork.name, year: @new_artwork.year }
    assert_redirected_to new_artwork_path(assigns(:new_artwork))
  end

  test "should destroy new_artwork" do
    assert_difference('NewArtwork.count', -1) do
      delete :destroy, id: @new_artwork
    end

    assert_redirected_to new_artworks_path
  end
end
