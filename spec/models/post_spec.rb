require 'rails_helper'

RSpec.describe Post, type: :model do
    test_post = Post.new

    it 'belongs to a user' do
  	  expect(test_post).to belong_to(:user)
    end

    it 'has the proper fields of title and content' do
		expect(test_post.title).to eq(nil)
		expect(test_post.content).to eq(nil)
	end

	it 'has many comments' do
		expect(test_post).to have_many(:comments)
	end
end
