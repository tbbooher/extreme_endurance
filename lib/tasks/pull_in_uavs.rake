require 'json'

namespace :data do
  desc "Get us lots of users and votes"
  task :load_uavs => :environment do

    data = File.open("#{Rails.root}/public/uavs.json").read

    result = JSON.parse(data)

    result.each do |r|
      u = Ua.new
      u.country = r["Country"]
      u.prime = r["Prime"]
      u.designation = r["Designation"]
      u.development = r["Development"]
      u.production = r["Production"]
      u.operation = r["Operation"]
      u.propulsion = r["Propulsion"]
      u.gross_wt_kg = r["Gross Wt. kg"]
      u.payload_weight_kg = r["Payload Weight, kg"]
      u.wing_span_m = r["Wing Span, m"]
      u.endurance_hr = r["Endurance, hr"]
      u.range_km = r["Range, km"]
      u.ceiling_m= r["Ceiling, m"]
      u.mission = r["Mission"]
      u.save
    end
  end
end

