ActiveAdmin.register System do
  index do
    column "Name", :name
    column "Service Ceiling (ft)", :service_ceiling
    column "Max Speed (kts)", :max_speed
    column "Endurance (days)", :endurance
    column "Payload (lbs)", :payload_lbs
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :endurance, :label => "Endurance (days)"
      f.input :service_ceiling, :label => "Cruise Altitude (kft)"
      f.input :max_speed, :label => "Cruise Speed (kts)"
      f.input :payload_lbs, :label => "Payload (lbs)"
    end
end
