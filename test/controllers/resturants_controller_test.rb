require "test_helper"

class ResturantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resturant = resturants(:one)
  end

  test "should get index" do
    get resturants_url
    assert_response :success
  end

  test "should get new" do
    get new_resturant_url
    assert_response :success
  end

  test "should create resturant" do
    assert_difference("Resturant.count") do
      post resturants_url, params: { resturant: { food_type: @resturant.food_type, location: @resturant.location, name: @resturant.name, phone: @resturant.phone, somo: @resturant.somo } }
    end

    assert_redirected_to resturant_url(Resturant.last)
  end

  test "should show resturant" do
    get resturant_url(@resturant)
    assert_response :success
  end

  test "should get edit" do
    get edit_resturant_url(@resturant)
    assert_response :success
  end

  test "should update resturant" do
    patch resturant_url(@resturant), params: { resturant: { food_type: @resturant.food_type, location: @resturant.location, name: @resturant.name, phone: @resturant.phone, somo: @resturant.somo } }
    assert_redirected_to resturant_url(@resturant)
  end

  test "should destroy resturant" do
    assert_difference("Resturant.count", -1) do
      delete resturant_url(@resturant)
    end

    assert_redirected_to resturants_url
  end
end
