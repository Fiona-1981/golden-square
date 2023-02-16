
require 'present'

describe Present do
  it "Tells you if the present is wrapped" do
    present = Present.new()
    present.wrap("socks")
    expect(present.unwrap).to eq "socks"
  end

  it "you can't wrap again" do
    present = Present.new()
    present.wrap("pants")
    expect(present.unwrap).to eq "socks"
  end
end








#require 'reminder'

#RSpec.describe Reminder do
  #context "when no task is set" do
   # it "fails" do
    #  reminder = Reminder.new("Kay")
    #  expect { reminder.remind() }.to raise_error "No reminder set!"
   # end
  #end
#end