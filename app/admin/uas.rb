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

  form do |f|
    f.inputs "Main Stuff" do
      f.input :designation
      f.input :prime
      f.input :operation
      f.input :endurance_hr, :label => "Endurance (hr)"
      f.input :payload_weight_kg
      f.input :range_km
      f.input :ceiling_m
      f.input :mission
    end
    f.inputs "Details" do
      f.input :wing_span_m
      f.input :propulsion
      f.input :gross_wt_kg
      f.input :production
      f.input :country
    end
    f.buttons
  end
end
