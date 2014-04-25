require 'spec_helper'

describe PlayedGame do
  it { should belong_to :user }
  it { should belong_to :game }
end
