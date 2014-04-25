require 'spec_helper'

describe Guess do
  it { should belong_to :played_game }
  it { should belong_to :location }
  it { should belong_to :user }
end
