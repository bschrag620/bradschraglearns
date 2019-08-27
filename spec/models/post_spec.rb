require 'rails_helper'

RSpec.describe Post, type: :model do
	test_user = User.create(:email => "brad.schrag@gmail.com", :password => "test")
    test_post = test_user.post.build(:title => 'test post', :content => 'this is my test content')
    test_post.save

    it 'belongs to a user' do
  	  expect(test_post).to belong_to(:user)
    end

    it 'has the proper fields of title and content') do
		expect(test_post.title).to eq('test title')
		expect(test_post.content).to eq('this is my test content')
	end

	it 'has many comments' do
		expect(test_post).to have_many(:comments)
	end
end
