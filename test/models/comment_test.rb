require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(commenter: "Bob", body: "My text")
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "commenter should be present" do
    @comment.commenter = "     "
    assert_not @comment.valid?
  end

  test "body should be present" do
    @comment.body = "     "
    assert_not @comment.valid?
  end

end
