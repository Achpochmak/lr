# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'adding and searching record' do
    Post.create post: 'NewMessage', user_id: users(:user_1).id
    res = Post.find_by(post: 'NewMessage')
    assert_equal 'NewMessage', res.post
  end

  test 'adding same record' do
    rm1 = Post.create post: 'NewMessage1', user_id: users(:user_1).id
    rm2 = Post.create post: 'NewMessage1', user_id: users(:user_1).id
    assert_not_nil rm2.id
  end
end
