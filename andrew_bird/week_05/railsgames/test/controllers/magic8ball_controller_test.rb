require 'test_helper'

class Magic8ballControllerTest < ActionController::TestCase
  test "should get magicIndex" do
    get :magicIndex
    assert_response :success
  end

end
