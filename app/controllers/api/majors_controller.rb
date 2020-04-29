class Api::MajorsController < ApplicationController
  def index
    @majors = []
    open(File.expand_path("#{Rails.root}/db/data/majors.csv", __FILE__)) do |majors|
      majors.read.each_line do |major|
        @majors.push({name: major.gsub(/\n$/, "")})
      end
    end
  end
end