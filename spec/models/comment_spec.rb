require 'rails_helper'

RSpec.describe Comment, type: :model do

  	it 'has the proper fields' do
  		test_comment = Comment.new
  		expect(test_comment.content).to be(nil)
  	end

  	it 'belongs to a post and author' do
  		expect(test_comment).to belong_to(:author)
  		expect(test_comment).to belong_to(:post)
  	end
end
