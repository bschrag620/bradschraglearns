FactoryBot.define do
	factory :user do
		email { 'brad.schrag@gmail.com' }
		password { 'test' }
		role
	end

	factory :role do
		description { 'author' }
	end
end