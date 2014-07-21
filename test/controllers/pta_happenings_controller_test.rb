require 'test_helper'

class PtaHappeningsControllerTest < ActionController::TestCase
  setup do
    @pta_happening = pta_happenings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pta_happenings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pta_happening" do
    assert_difference('PtaHappening.count') do
      post :create, pta_happening: { content: @pta_happening.content, name: @pta_happening.name, newsletter_id: @pta_happening.newsletter_id }
    end

    assert_redirected_to pta_happening_path(assigns(:pta_happening))
  end

  test "should show pta_happening" do
    get :show, id: @pta_happening
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pta_happening
    assert_response :success
  end

  test "should update pta_happening" do
    patch :update, id: @pta_happening, pta_happening: { content: @pta_happening.content, name: @pta_happening.name, newsletter_id: @pta_happening.newsletter_id }
    assert_redirected_to pta_happening_path(assigns(:pta_happening))
  end

  test "should destroy pta_happening" do
    assert_difference('PtaHappening.count', -1) do
      delete :destroy, id: @pta_happening
    end

    assert_redirected_to pta_happenings_path
  end
end
