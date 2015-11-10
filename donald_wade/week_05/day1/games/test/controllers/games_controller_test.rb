require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  test "should get magic_8" do
    get :magic_8
    assert_response :success
  end

  test "should get secret_number" do
    get :secret_number
    assert_response :success
  end

  test "should get rock_paper_scissors" do
    get :rock_paper_scissors
    assert_response :success
  end

end
