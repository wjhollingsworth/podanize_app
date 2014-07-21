require 'test_helper'

class UpcomingEventsControllerTest < ActionController::TestCase
  setup do
    @upcoming_event = upcoming_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:upcoming_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create upcoming_event" do
    assert_difference('UpcomingEvent.count') do
      post :create, upcoming_event: { content: @upcoming_event.content, name: @upcoming_event.name, newsletter_id: @upcoming_event.newsletter_id }
    end

    assert_redirected_to upcoming_event_path(assigns(:upcoming_event))
  end

  test "should show upcoming_event" do
    get :show, id: @upcoming_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @upcoming_event
    assert_response :success
  end

  test "should update upcoming_event" do
    patch :update, id: @upcoming_event, upcoming_event: { content: @upcoming_event.content, name: @upcoming_event.name, newsletter_id: @upcoming_event.newsletter_id }
    assert_redirected_to upcoming_event_path(assigns(:upcoming_event))
  end

  test "should destroy upcoming_event" do
    assert_difference('UpcomingEvent.count', -1) do
      delete :destroy, id: @upcoming_event
    end

    assert_redirected_to upcoming_events_path
  end
end
