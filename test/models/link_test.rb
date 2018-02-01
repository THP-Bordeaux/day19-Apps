require 'test_helper'

class LinkTest < ActiveSupport::TestCase

  def setup
    @link = Link.new(title: "My Title", url: "http://www.example.com")
  end

  test "title should be present" do
    @link.title = "     "
    assert_not @link.valid?
  end

  test "url should be present" do
    @link.url = "     "
    assert_not @link.valid?
  end

end
