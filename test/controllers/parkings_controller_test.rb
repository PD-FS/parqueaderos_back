require 'test_helper'

class ParkingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking = parkings(:one)
  end

  test "should get index" do
    get parkings_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_url
    assert_response :success
  end

  test "should create parking" do
    assert_difference('Parking.count') do
      post parkings_url, params: { parking: { address: @parking.address, closingTime: @parking.closingTime, document: @parking.document, email: @parking.email, latitude: @parking.latitude, longitude: @parking.longitude, movil: @parking.movil, name: @parking.name, openingTime: @parking.openingTime, phone: @parking.phone, serviceDays: @parking.serviceDays, typeDocument: @parking.typeDocument, userId_id: @parking.userId_id } }
    end

    assert_redirected_to parking_url(Parking.last)
  end

  test "should show parking" do
    get parking_url(@parking)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_url(@parking)
    assert_response :success
  end

  test "should update parking" do
    patch parking_url(@parking), params: { parking: { address: @parking.address, closingTime: @parking.closingTime, document: @parking.document, email: @parking.email, latitude: @parking.latitude, longitude: @parking.longitude, movil: @parking.movil, name: @parking.name, openingTime: @parking.openingTime, phone: @parking.phone, serviceDays: @parking.serviceDays, typeDocument: @parking.typeDocument, userId_id: @parking.userId_id } }
    assert_redirected_to parking_url(@parking)
  end

  test "should destroy parking" do
    assert_difference('Parking.count', -1) do
      delete parking_url(@parking)
    end

    assert_redirected_to parkings_url
  end
end
