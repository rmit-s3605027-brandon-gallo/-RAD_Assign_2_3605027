require 'test_helper'

class EntiresControllerTest < ActionDispatch::IntegrationTest
  test "should get coord_edit" do
    get entires_coord_edit_url
    assert_response :success
  end

end
