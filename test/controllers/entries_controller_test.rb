require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get coord_edit" do
    get entries_coord_edit_url
    assert_response :success
  end

end
