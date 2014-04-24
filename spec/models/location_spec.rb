require 'spec_helper'

describe Location do

  it { should validate_presence_of :latitude }
  it { should validate_presence_of :longitude }

  describe '.separate_lat_lon' do
    it 'should separate the coordinates of the location into latitude and longitude' do
      separated_coords = Location.separate_lat_lon("(-34.5236, 56.3426)")
      separated_coords = ["-34.5236", "56.3426"]
    end
  end
end
