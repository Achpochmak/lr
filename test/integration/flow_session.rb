# frozen_string_literal: true

require './test/test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test 'authentication' do
    get '/users/sign_in'
    assert_response :success
    post '/users/sign_in', params: { session: {
      username: users(:user_1).username,
      password: users(:user_1).password
    } }
  end

  test 'create users' do
    post '/users', params: { user: { username: 'test', name: 'test', password: '12345', email: 'test@.com' } }
    res = User.find_by_username('test')
    assert_not_nil res
  end
  test 'create post' do
    Post.create post: 'NewMessage', user_id: users(:user_1).id
    res = Post.find_by(post: 'NewMessage')
    assert_equal 'NewMessage', res.post
  end
end
