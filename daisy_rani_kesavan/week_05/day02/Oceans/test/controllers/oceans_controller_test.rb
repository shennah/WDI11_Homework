require 'test_helper'

class OceansControllerTest < ActionController::TestCase
  setup do
    @ocean = oceans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oceans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ocean" do
    assert_difference('Ocean.count') do
      post :create, ocean: { area: @ocean.area, image: @ocean.image, name: @ocean.name, place: @ocean.place, volume: @ocean.volume }
    end

    assert_redirected_to ocean_path(assigns(:ocean))
  end

  test "should show ocean" do
    get :show, id: @ocean
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ocean
    assert_response :success
  end

  test "should update ocean" do
    patch :update, id: @ocean, ocean: { area: @ocean.area, image: @ocean.image, name: @ocean.name, place: @ocean.place, volume: @ocean.volume }
    assert_redirected_to ocean_path(assigns(:ocean))
  end

  test "should destroy ocean" do
    assert_difference('Ocean.count', -1) do
      delete :destroy, id: @ocean
    end

    assert_redirected_to oceans_path
  end
end
