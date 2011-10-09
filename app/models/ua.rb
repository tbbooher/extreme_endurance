class Ua < ActiveRecord::Base

  def self.get_data(rpas)
    rpas.map{|r| r.load_vals }
  end

  def description
    desc = "<ul class='description'>\n"
    self.attributes.each do |k,v|
      desc += "<li><span class='links'>#{k.titlecase}</span> <span class='rechts'>#{v}</span></li>\n" unless (["created_at", "updated_at", "id"].include?(k) || v.blank?)
    end
    desc += "</ul>\n"
    desc
  end

  def load_vals
    {
     :x => self.endurance_hr/24.0,
     :y => self.ceiling_m*3.2810,
     :designation => (self.designation || "none"),
     :description => self.description
    }
  end

end
