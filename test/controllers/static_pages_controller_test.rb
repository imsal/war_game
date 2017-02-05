require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome pages" do
    get root_url
    assert_response :success
  end

end
