require 'spec_helper'
 
describe LibraryKorich do
  context "#name" do
    it "should return gem name" do
      LibraryKorich.name.should == "New Gem"
    end
  end
end
