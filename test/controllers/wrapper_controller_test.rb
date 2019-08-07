require 'test_helper'

class WrapperControllerTest < ActionDispatch::IntegrationTest
  test "should get WrapIt home page" do
    get root_url
    assert_response :success
  end
end
