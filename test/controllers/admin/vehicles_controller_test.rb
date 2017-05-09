require 'test_helper'

class Admin::VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_vehicle = admin_vehicles(:one)
  end

  test "should get index" do
    get admin_vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_vehicle_url
    assert_response :success
  end

  test "should create admin_vehicle" do
    assert_difference('Admin::Vehicle.count') do
      post admin_vehicles_url, params: { admin_vehicle: { bus_company_id: @admin_vehicle.bus_company_id, order_number: @admin_vehicle.order_number, price: @admin_vehicle.price, seat: @admin_vehicle.seat, travel_id: @admin_vehicle.travel_id } }
    end

    assert_redirected_to admin_vehicle_url(Admin::Vehicle.last)
  end

  test "should show admin_vehicle" do
    get admin_vehicle_url(@admin_vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_vehicle_url(@admin_vehicle)
    assert_response :success
  end

  test "should update admin_vehicle" do
    patch admin_vehicle_url(@admin_vehicle), params: { admin_vehicle: { bus_company_id: @admin_vehicle.bus_company_id, order_number: @admin_vehicle.order_number, price: @admin_vehicle.price, seat: @admin_vehicle.seat, travel_id: @admin_vehicle.travel_id } }
    assert_redirected_to admin_vehicle_url(@admin_vehicle)
  end

  test "should destroy admin_vehicle" do
    assert_difference('Admin::Vehicle.count', -1) do
      delete admin_vehicle_url(@admin_vehicle)
    end

    assert_redirected_to admin_vehicles_url
  end
end
