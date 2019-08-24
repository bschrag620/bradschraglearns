require 'rails_helper'

RSpec.describe User, type: :model do
	raw_password = 'test'
  invalid_user = User.new
  valid_user = User.new(:email => 'brad.schrag@gmail.com', :password => raw_password)

  it "requires email and password" do
  	expect(invalid_user).to_not be_valid
  	expect(valid_user).to be_valid
  end

  it 'uses secure password' do
  	expect(valid_user.password_digest).to_not eq(raw_password)
  end


end
