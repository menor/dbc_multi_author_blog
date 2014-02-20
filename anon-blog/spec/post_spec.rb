require 'spec_helper'

describe Post do
  it {should have_many(:tags)}
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:content)}
end
