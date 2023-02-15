require 'string_builder'


RSpec.describe StringBuilder do
  it "Builds strings" do
    string_builder = StringBuilder.new()
    string_builder.add("OK")
    result = string_builder.size()
    expect(result).to eq 2
    result = string_builder.output()
    expect(result).to eq string_builder
  end

end