require 'rails_helper'

RSpec.describe Role, type: :model do
	test_role = Role.create(:description => "tester")

	it 'has a description' do
		expect(Role.new.description).to eq(nil)
	end
	
	it 'belongs to many users' do
		expect(test_role).to have_many(users)
	end
end
