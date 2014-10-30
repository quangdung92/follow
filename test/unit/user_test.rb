require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "tester", pass: "tester")
  end
  test "user should be valid" do
    assert @user.valid?    
  end
end

