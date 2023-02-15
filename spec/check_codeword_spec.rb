require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "if codeword is horse return 'Correct, come in'" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
    end
    it "if codeword starts with 'h' and ends in 'e'" do
    result = check_codeword("hose")
    expect(result).to eq "Close, but nope."
    end
    it "not a match" do
    result = check_codeword("flower")
    expect(result).to eq "WRONG!"
    end
end