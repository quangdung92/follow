require 'test_helper'

class RelationTest < ActiveSupport::TestCase
  def setup
    @relation = Relation.new(follower_id: 9, following_id: 10)
  end

  test "should be valid" do
    assert @relation.valid?
  end

  test "should require a follower_id" do
    @relation.follower_id = nil
    assert !@relation.valid?
  end

  test "should require a following_id" do
    @relation.following_id = nil
    assert !@relation.valid?
  end
end
