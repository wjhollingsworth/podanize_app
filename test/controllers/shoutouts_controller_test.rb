require 'test_helper'

class ShoutoutsControllerTest < ActionController::TestCase
  setup do
    @shoutout = shoutouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shoutouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shoutout" do
    assert_difference('Shoutout.count') do
      post :create, shoutout: { content: @shoutout.content, name: @shoutout.name, newsletter_id: @shoutout.newsletter_id }
    end

    assert_redirected_to shoutout_path(assigns(:shoutout))
  end

  test "should show shoutout" do
    get :show, id: @shoutout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shoutout
    assert_response :success
  end

  test "should update shoutout" do
    patch :update, id: @shoutout, shoutout: { content: @shoutout.content, name: @shoutout.name, newsletter_id: @shoutout.newsletter_id }
    assert_redirected_to shoutout_path(assigns(:shoutout))
  end

  test "should destroy shoutout" do
    assert_difference('Shoutout.count', -1) do
      delete :destroy, id: @shoutout
    end

    assert_redirected_to shoutouts_path
  end
end
