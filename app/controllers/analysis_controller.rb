class AnalysisController < ApplicationController
  def index
  end

  def comparison
    @rpas = Ua.select{|u| !u.endurance_hr.blank? && !u.ceiling_m.blank? && !u.payload_weight_kg}
  end

end
