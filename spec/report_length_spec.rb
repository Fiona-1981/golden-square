require "report_length"
RSpec.describe "Report length" do
   it "Reports length 1" do
     result = report_length("flower")
     expect(result).to eq "This string was 6 characters long."
   end
  it "Reports length" do
    result = report_length("12345go")
    expect(result).to eq "This string was 7 characters long."
  end
  #   it "Reports length" do
  #     result = report_length(1)
  #     expect(result).to eq "Wrong"
  # end
end