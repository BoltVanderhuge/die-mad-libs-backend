require "test_helper"

class TextEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get text_entries_index_url
    assert_response :success
  end

  test "should get show" do
    get text_entries_show_url
    assert_response :success
  end
end
