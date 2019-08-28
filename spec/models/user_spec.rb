require 'rails_helper'

RSpec.describe User, type: :model do
	raw_password = 'test'

	before(:each) do
		@user = create(:user)
		@no_email = build(:user, :email => nil)
		@bad_email = build(:user, :email => 'brad.schraggmail.com')
		@duplicate_user = build(:user)
	end

    it "has a valid factory" do
    	expect(@user).to be_valid
    end

	it "requires email and password" do
		expect(@no_email).to_not be_valid
	end

	it 'requires valid email pattern' do

		expect(@bad_email).to_not be_valid
	end

	it 'uses secure password' do
		expect(@user.password_digest).to_not eq(raw_password)
	end

	it 'does not allow duplicate emails' do
		expect(@duplicate_user).to_not be_valid
	end

	it 'defaults to author role if none given' do

	end
end
