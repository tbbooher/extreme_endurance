ActiveAdmin.register Ua do
  index do
    column "Prime", :prime
    column "Designation", :designation
    column "Operation", :operation
    column "Endurance (days)", :endurance
    column "Payload (lbs)", :payload_lbs
    column "Range (km)", :range_km
    column "Ceiling (M)", :ceiling
    column "Mission", :mission
    default_actions
  end

  #form do |f|
  #  f.inputs "Details" do
  #    f.input :name
  #    f.input :endurance, :label => "Endurance (days)"
  #    f.input :service_ceiling, :label => "Cruise Altitude (kft)"
  #    f.input :max_speed, :label => "Cruise Speed (kts)"
  #    f.input :payload_lbs, :label => "Payload (lbs)"
  #  end
  #  f.buttons
  #end
end
