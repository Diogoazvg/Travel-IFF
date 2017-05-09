require 'test_helper'

class Admin::TravelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_travel = admin_travels(:one)
  end

  test "should get index" do
    get admin_travels_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_travel_url
    assert_response :success
  end

  test "should create admin_travel" do
    assert_difference('Admin::Travel.count') do
      post admin_travels_url, params: { admin_travel: { day: @admin_travel.day, description: @admin_travel.description, name: @admin_travel.name } }
    end

    assert_redirected_to admin_travel_url(Admin::Travel.last)
  end

  test "should show admin_travel" do
    get admin_travel_url(@admin_travel)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_travel_url(@admin_travel)
    assert_response :success
  end

  test "should update admin_travel" do
    patch admin_travel_url(@admin_travel), params: { admin_travel: { day: @admin_travel.day, description: @admin_travel.description, name: @admin_travel.name } }
    assert_redirected_to admin_travel_url(@admin_travel)
  end

  test "should destroy admin_travel" do
    assert_difference('Admin::Travel.count', -1) do
      delete admin_travel_url(@admin_travel)
    end

    assert_redirected_to admin_travels_url
  end
end
