require 'test_helper'

class CheerupControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cheerup_index_url
    assert_response :success
  end

end
