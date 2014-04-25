require 'spec_helper'

describe Clue do
  it { should belong_to :game }
  it { should validate_presence_of :content }

end
