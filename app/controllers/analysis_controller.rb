class AnalysisController < ApplicationController
  def index
  end

  def comparison
    #@rpas = Ua.select { |u| !u.designation.blank? && !u.endurance_hr.blank? && !u.ceiling_m.blank? && !u.payload_weight_kg.blank? && (u.endurance_hr < 4000) && (u.endurance_hr > 0) }
    @rpas = Ua.where("designation IS NOT NULL AND endurance_HR IS NOT NULL AND ceiling_m IS NOT NULL AND payload_weight_kg IS NOT NULL AND endurance_hr > 0 AND endurance_hr < 4000")

    @h = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(text: "Endurance and Altitude")
      f.options[:chart][:defaultSeriesType] = "scatter"
      f.options[:chart][:zoomType] = 'xy'
      f.options[:yAxis][:title][:text] = "Altitude (ft)"
      f.xAxis(:title => {:text => "Endurance (days)"}, :enabled => true)
      #f.options[:xAxis][:title][:text] = "Endurance (days)"
      f.series(:name=>'RPAs', :data => @rpas.map { |r| {:x => r.endurance_hr/24.0, :y => r.ceiling_m*3.2810, :designation => r.designation} })
    end
    verb = ActiveRecord::Base.connection.adapter_name.downcase == 'postgresql' ? "I" : ""
    electric_rpas = @rpas.where("propulsion #{verb}LIKE '%electric%'")
    blimps = @rpas.where("propulsion #{verb}LIKE '%blimp%'")
    piston = @rpas.where("propulsion #{verb}LIKE '%piston%'")
    others = @rpas.all - electric_rpas - blimps - piston
    @h_propulsion = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(text: "Endurance and Altitude")
      f.options[:chart][:defaultSeriesType] = "scatter"
      f.options[:chart][:zoomType] = 'xy'
      f.options[:chart][:width] = 700
      f.options[:chart][:height] = 400
      #f.tooltip(shared: true, crosshairs: true)
      f.options[:yAxis][:title][:text] = "Altitude (ft)"
      f.xAxis(:title => {:text => "Endurance (days)"}, :enabled => true)
      #f.options[:xAxis][:title][:text] = "Endurance (days)"
      f.series(:name=>'Others', :data => Ua.get_data(others))
      f.series(:name=>'Electric', :data => Ua.get_data(electric_rpas))
      f.series(:name=>'Airships', :data => Ua.get_data(blimps))
      f.series(:name=>'Piston', :data => Ua.get_data(piston))
    end
  end

end
