require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal "Scuba Diving Spots", full_title
    assert_equal "Help | Scuba Diving Spots", full_title("Help")
  end
end
