require 'spec_helper'

describe Dummy do
  it "should be valid" do
    Dummy.should be_a(Module)
  end
end