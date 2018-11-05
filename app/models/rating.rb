class Rating < ApplicationRecord
  belongs_to :parkingId
  belongs_to :userId
end
