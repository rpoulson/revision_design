require 'test_helper'

class CreationPageControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

end
