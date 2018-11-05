require 'test_helper'

class ParkingTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_type = parking_types(:one)
  end

  test "should get index" do
    get parking_types_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_type_url
    assert_response :success
  end

  test "should create parking_type" do
    assert_difference('ParkingType.count') do
      post parking_types_url, params: { parking_type: { description: @parking_type.description, parkingId_id: @parking_type.parkingId_id, vehicleTypeId_id: @parking_type.vehicleTypeId_id } }
    end

    assert_redirected_to parking_type_url(ParkingType.last)
  end

  test "should show parking_type" do
    get parking_type_url(@parking_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_type_url(@parking_type)
    assert_response :success
  end

  test "should update parking_type" do
    patch parking_type_url(@parking_type), params: { parking_type: { description: @parking_type.description, parkingId_id: @parking_type.parkingId_id, vehicleTypeId_id: @parking_type.vehicleTypeId_id } }
    assert_redirected_to parking_type_url(@parking_type)
  end

  test "should destroy parking_type" do
    assert_difference('ParkingType.count', -1) do
      delete parking_type_url(@parking_type)
    end

    assert_redirected_to parking_types_url
  end
end
