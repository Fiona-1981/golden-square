require 'gratitudes'

RSpec.describe Gratitudes do
  it "Lists what the user is grateful for" do
    gratitudes = Gratitudes.new()
    gratitudes.add("capers") # Makes the code fail nicely.
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: laughter"
    # The question is how to test for the +=
  end
end