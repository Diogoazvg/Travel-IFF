require 'test_helper'

class Admin::BusCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_bus_company = admin_bus_companies(:one)
  end

  test "should get index" do
    get admin_bus_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_bus_company_url
    assert_response :success
  end

  test "should create admin_bus_company" do
    assert_difference('Admin::BusCompany.count') do
      post admin_bus_companies_url, params: { admin_bus_company: { cnpj: @admin_bus_company.cnpj, name: @admin_bus_company.name } }
    end

    assert_redirected_to admin_bus_company_url(Admin::BusCompany.last)
  end

  test "should show admin_bus_company" do
    get admin_bus_company_url(@admin_bus_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_bus_company_url(@admin_bus_company)
    assert_response :success
  end

  test "should update admin_bus_company" do
    patch admin_bus_company_url(@admin_bus_company), params: { admin_bus_company: { cnpj: @admin_bus_company.cnpj, name: @admin_bus_company.name } }
    assert_redirected_to admin_bus_company_url(@admin_bus_company)
  end

  test "should destroy admin_bus_company" do
    assert_difference('Admin::BusCompany.count', -1) do
      delete admin_bus_company_url(@admin_bus_company)
    end

    assert_redirected_to admin_bus_companies_url
  end
end
