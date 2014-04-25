class Location < ActiveRecord::Base
  has_many :games
  has_many :guesses
  validates :latitude, :longitude, :presence => true

  def self.separate_lat_lon(coordinates)
    coordinates.gsub(/[()]/, "").split(', ')
  end
end
