require 'test_helper'

class AccessoriesCarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accessories_car = accessories_cars(:one)
  end

  test "should get index" do
    get accessories_cars_url
    assert_response :success
  end

  test "should get new" do
    get new_accessories_car_url
    assert_response :success
  end

  test "should create accessories_car" do
    assert_difference('AccessoriesCar.count') do
      post accessories_cars_url, params: { accessories_car: { name: @accessories_car.name } }
    end

    assert_redirected_to accessories_car_url(AccessoriesCar.last)
  end

  test "should show accessories_car" do
    get accessories_car_url(@accessories_car)
    assert_response :success
  end

  test "should get edit" do
    get edit_accessories_car_url(@accessories_car)
    assert_response :success
  end

  test "should update accessories_car" do
    patch accessories_car_url(@accessories_car), params: { accessories_car: { name: @accessories_car.name } }
    assert_redirected_to accessories_car_url(@accessories_car)
  end

  test "should destroy accessories_car" do
    assert_difference('AccessoriesCar.count', -1) do
      delete accessories_car_url(@accessories_car)
    end

    assert_redirected_to accessories_cars_url
  end
end
