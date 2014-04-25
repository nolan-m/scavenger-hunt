require 'spec_helper'

describe Game do
  it { should have_many :clues }
  it { should have_many :played_games }
  it { should belong_to :user }
  it { should belong_to :location }
  it { should validate_presence_of :name }
end
