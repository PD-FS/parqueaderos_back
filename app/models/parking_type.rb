class ParkingType < ApplicationRecord
  belongs_to :parkingId
  belongs_to :vehicleTypeId
end
