class Schedule < ApplicationRecord
  belongs_to :spaceId
  belongs_to :userId
  belongs_to :vehicleId
end
