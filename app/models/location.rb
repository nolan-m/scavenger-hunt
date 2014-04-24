class Location < ActiveRecord::Base
  has_many :games

  def self.separate_lat_lon(coordinates)
    coordinates.gsub(/[()]/, "").split(', ')
  end
end
