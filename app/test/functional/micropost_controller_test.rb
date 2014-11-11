require 'test_helper'

class MicropostControllerTest < ActionController::TestCase
  include WelcomeHelper
  def setup
    @user = users(:one)
    login @user
  end
  test "should get new" do
    get :new
    assert_response :success
  end

end
