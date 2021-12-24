require 'spec_helper'

RSpec.describe 'PostsController', type: :feature do
    scenario 'input' do
        visit 'http://localhost:3000/users/sign_up'
        fill_in 'name', with: 'test@com'
        fill_in 'username', with: 'test@com'
        fill_in 'email', with: 'test@com'
        fill_in 'password', with: 'test@com'
        fill_in 'password_confirmation', with: 'test@com'
        click_on 'Sign up'
#   describe "anonymous user" do
#     before :each do
#       # This simulates an anonymous user
#       login_with nil
#     end

#     it "should be redirected to signin" do
#       get :index
#       expect( response ).to redirect_to( new_user_session_path )
#     end
#     it "should let a user see all the posts" do
#         login_with create( :user )
#         get :index
#         expect( response ).to render_template( :index )
#       end
#  end
    end
end