require 'spec_helper'

describe User do
  it { should have_many :games }
  it { should have_many :played_games }
end
