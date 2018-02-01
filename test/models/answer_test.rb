require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  def setup
    @answer = Answer.new(answerer: "Bob", body: "My text")
  end

  test "commenter should be present" do
    @answer.answerer = "     "
    assert_not @answer.valid?
  end

  test "body should be present" do
    @answer.body = "     "
    assert_not @answer.valid?
  end
end
