require 'test_helper'

class SecretControllerTest < ActionController::TestCase
  test "should get number" do
    get :number
    assert_response :success
  end

end
