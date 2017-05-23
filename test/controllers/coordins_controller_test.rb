require 'test_helper'

class CoordinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordin = coordins(:one)
  end

  test "should get index" do
    get coordins_url
    assert_response :success
  end

  test "should get new" do
    get new_coordin_url
    assert_response :success
  end

  test "should create coordin" do
    assert_difference('Coordin.count') do
      post coordins_url, params: { coordin: { email: @coordin.email, name: @coordin.name, password: @coordin.password } }
    end

    assert_redirected_to coordin_url(Coordin.last)
  end

  test "should show coordin" do
    get coordin_url(@coordin)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordin_url(@coordin)
    assert_response :success
  end

  test "should update coordin" do
    patch coordin_url(@coordin), params: { coordin: { email: @coordin.email, name: @coordin.name, password: @coordin.password } }
    assert_redirected_to coordin_url(@coordin)
  end

  test "should destroy coordin" do
    assert_difference('Coordin.count', -1) do
      delete coordin_url(@coordin)
    end

    assert_redirected_to coordins_url
  end
end
