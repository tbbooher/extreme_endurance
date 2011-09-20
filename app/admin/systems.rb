ActiveAdmin.register System do
  index do
    column "Name", :name
    column "Service Ceiling (ft)", :service_ceiling
    column "Max Speed (kts)", :max_speed
    column "Endurance (days)", :endurance
    column "Payload (lbs)", :payload
  end
end
