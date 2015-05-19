require 'spec_helper'
 
describe LibraryKorich do
  context "#name" do
    it "should return gem name" do
      expect(LibraryKorich.name).to eq "LibraryKorich"
    end
  end
  context "#new"  do
  	it "should create new Lib" do
		a=Library.new("Name")
		expect(a.class).to eq Library
	end
	end
end
