class Api::SchoolsController < ApplicationController
  def index
    @schools = []
    open(File.expand_path("#{Rails.root}/db/data/schools.csv", __FILE__)) do |schools|
      schools.read.each_line do |school|
        @schools.push({name: school})
      end
    end
  end
end