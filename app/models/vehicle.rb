class Vehicle < ApplicationRecord
  belongs_to :vehicleTypeId
  belongs_to :userId
end
