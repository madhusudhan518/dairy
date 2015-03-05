require 'test_helper'

class WritePlacesControllerTest < ActionController::TestCase
  setup do
    @write_place = write_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:write_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create write_place" do
    assert_difference('WritePlace.count') do
      post :create, write_place: { date: @write_place.date, name: @write_place.name, text: @write_place.text }
    end

    assert_redirected_to write_place_path(assigns(:write_place))
  end

  test "should show write_place" do
    get :show, id: @write_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @write_place
    assert_response :success
  end

  test "should update write_place" do
    patch :update, id: @write_place, write_place: { date: @write_place.date, name: @write_place.name, text: @write_place.text }
    assert_redirected_to write_place_path(assigns(:write_place))
  end

  test "should destroy write_place" do
    assert_difference('WritePlace.count', -1) do
      delete :destroy, id: @write_place
    end

    assert_redirected_to write_places_path
  end
end
