class Ua < ActiveRecord::Base

  def self.get_data(rpas)
    rpas.map{|r| r.load_vals }
  end

  def load_vals
    {:x => self.endurance_hr/24.0, :y => self.ceiling_m*3.2810, :designation => self.designation}
  end
end
