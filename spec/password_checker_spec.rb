require 'password_checker'

RSpec.describe PasswordChecker do
 # it "checks that the password is >= 8 characters" do
  #password_checker = PasswordChecker.new
  #expect(password_checker.check"abcd1234").to eq true 
  #end

  it "checks that the password is >= 8 characters" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("1234hj") }.to raise_error "Invalid password, must be 8+ characters."
  end

  #it "checks that the password is >= 8 characters" do
   # password_checker = PasswordChecker.new
   # expect(password_checker.check"1234lk").to eq false
  #end


end