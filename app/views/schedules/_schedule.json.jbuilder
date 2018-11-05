json.extract! schedule, :id, :spaceId_id, :userId_id, :vehicleId_id, :date, :startTime, :endTime, :costSubscribed, :discount, :totalCost, :paymentMode, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
