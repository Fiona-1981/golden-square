require 'password_checker'

RSpec.describe PasswordChecker do
  it "checks the password is >= 8 characters" do
    password_checker = PasswordChecker.new
    expect(password_checker.check("1234abcd")).to eq true 
  end

  it "fails if password is too short" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("abc123") }.to raise_error "Invalid password, must be 8+ characters."
  end
end