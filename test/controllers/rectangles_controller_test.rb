require 'test_helper'

class RectanglesControllerTest < ActionController::TestCase
  setup do
    @rectangle = rectangles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rectangles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rectangle" do
    assert_difference('Rectangle.count') do
      post :create, rectangle: { latitude0: @rectangle.latitude0, latitude1: @rectangle.latitude1, longitude0: @rectangle.longitude0, longitude1: @rectangle.longitude1, name: @rectangle.name }
    end

    assert_redirected_to rectangle_path(assigns(:rectangle))
  end

  test "should show rectangle" do
    get :show, id: @rectangle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rectangle
    assert_response :success
  end

  test "should update rectangle" do
    patch :update, id: @rectangle, rectangle: { latitude0: @rectangle.latitude0, latitude1: @rectangle.latitude1, longitude0: @rectangle.longitude0, longitude1: @rectangle.longitude1, name: @rectangle.name }
    assert_redirected_to rectangle_path(assigns(:rectangle))
  end

  test "should destroy rectangle" do
    assert_difference('Rectangle.count', -1) do
      delete :destroy, id: @rectangle
    end

    assert_redirected_to rectangles_path
  end
end
