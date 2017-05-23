require 'test_helper'

class CousControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cou = cous(:one)
  end

  test "should get index" do
    get cous_url
    assert_response :success
  end

  test "should get new" do
    get new_cou_url
    assert_response :success
  end

  test "should create cou" do
    assert_difference('Cou.count') do
      post cous_url, params: { cou: { category: @cou.category, description: @cou.description, location: @cou.location, name: @cou.name, prerequisite: @cou.prerequisite } }
    end

    assert_redirected_to cou_url(Cou.last)
  end

  test "should show cou" do
    get cou_url(@cou)
    assert_response :success
  end

  test "should get edit" do
    get edit_cou_url(@cou)
    assert_response :success
  end

  test "should update cou" do
    patch cou_url(@cou), params: { cou: { category: @cou.category, description: @cou.description, location: @cou.location, name: @cou.name, prerequisite: @cou.prerequisite } }
    assert_redirected_to cou_url(@cou)
  end

  test "should destroy cou" do
    assert_difference('Cou.count', -1) do
      delete cou_url(@cou)
    end

    assert_redirected_to cous_url
  end
end
