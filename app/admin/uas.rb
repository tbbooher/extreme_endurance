ActiveAdmin.register Ua do
  index do
    column "Designation", :designation
    column "Prime", :prime
    column "Operation", :operation
    column "Endurance (hr)", :endurance_hr
    column "Payload (lbs)", :payload_weight_kg
    column "Range (km)", :range_km
    column "Ceiling (M)", :ceiling_m
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
