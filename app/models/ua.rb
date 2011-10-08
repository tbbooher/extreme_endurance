class Ua < ActiveRecord::Base

  def self.get_data(rpas)
    rpas.map{|r| {:x => r.endurance_hr/24.0, :y => r.ceiling_m*3.2810, :designation => r.designation} }
  end
end
