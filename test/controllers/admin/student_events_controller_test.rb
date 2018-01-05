require 'test_helper'

class Admin::StudentEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_student_event = admin_student_events(:one)
  end

  test "should get index" do
    get admin_student_events_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_student_event_url
    assert_response :success
  end

  test "should create admin_student_event" do
    assert_difference('Admin::StudentEvent.count') do
      post admin_student_events_url, params: { admin_student_event: { event_id: @admin_student_event.event_id, student_id: @admin_student_event.student_id } }
    end

    assert_redirected_to admin_student_event_url(Admin::StudentEvent.last)
  end

  test "should show admin_student_event" do
    get admin_student_event_url(@admin_student_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_student_event_url(@admin_student_event)
    assert_response :success
  end

  test "should update admin_student_event" do
    patch admin_student_event_url(@admin_student_event), params: { admin_student_event: { event_id: @admin_student_event.event_id, student_id: @admin_student_event.student_id } }
    assert_redirected_to admin_student_event_url(@admin_student_event)
  end

  test "should destroy admin_student_event" do
    assert_difference('Admin::StudentEvent.count', -1) do
      delete admin_student_event_url(@admin_student_event)
    end

    assert_redirected_to admin_student_events_url
  end
end
