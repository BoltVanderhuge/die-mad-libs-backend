require "test_helper"

class MadLibsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mad_libs_index_url
    assert_response :success
  end

  test "should get show" do
    get mad_libs_show_url
    assert_response :success
  end
end
