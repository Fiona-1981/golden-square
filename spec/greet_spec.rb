require 'greet'

RSpec.describe "greet method" do
    it "returns greeting with name" do
        result = greet("Monica")
       expect(result).to eq "Hello, Monica!"
    end
end