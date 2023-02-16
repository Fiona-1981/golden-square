
require 'present'

#describe Present do
 # it "Tells you if the present is wrapped" do
   # present = Present.new()
    #present.wrap("socks")
    #expect(present.unwrap).to eq "socks"
  #end

  #it "you can't wrap again" do
   # present = Present.new()
   # present.wrap("pants")
   # expect(present.unwrap).to eq "socks"
  #end
#end

RSpec.describe Present do 
  it "wraps and unwraps a value" do
    present = Present.new
    present.wrap(6)
    expect(present.unwrap).to eq 6