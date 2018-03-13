require 'test_helper'

class ControladorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get controlador_index_url
    assert_response :success
  end

end
