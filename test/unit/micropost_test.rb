require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
    @micropost = @user.microposts.new(content: "testcontent")
  end
  test "micropost should be valid" do
    assert @micropost.valid?      
  end
end
