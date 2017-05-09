require 'test_helper'

class Admin::DriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_driver = admin_drivers(:one)
  end

  test "should get index" do
    get admin_drivers_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_driver_url
    assert_response :success
  end

  test "should create admin_driver" do
    assert_difference('Admin::Driver.count') do
      post admin_drivers_url, params: { admin_driver: { category: @admin_driver.category, cnh: @admin_driver.cnh, person_id: @admin_driver.person_id, vehicle_id: @admin_driver.vehicle_id } }
    end

    assert_redirected_to admin_driver_url(Admin::Driver.last)
  end

  test "should show admin_driver" do
    get admin_driver_url(@admin_driver)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_driver_url(@admin_driver)
    assert_response :success
  end

  test "should update admin_driver" do
    patch admin_driver_url(@admin_driver), params: { admin_driver: { category: @admin_driver.category, cnh: @admin_driver.cnh, person_id: @admin_driver.person_id, vehicle_id: @admin_driver.vehicle_id } }
    assert_redirected_to admin_driver_url(@admin_driver)
  end

  test "should destroy admin_driver" do
    assert_difference('Admin::Driver.count', -1) do
      delete admin_driver_url(@admin_driver)
    end

    assert_redirected_to admin_drivers_url
  end
end
