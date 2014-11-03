feature "the goal creation process" do
  
  scenario "has a new goal page" do
    visit new_goal_url
    expect(page).to have_content "New Goal"
  end
  
  
end


#
#
# feature "the signup process" do
#
#   scenario "has a new user page" do
#     visit new_user_url
#     expect(page).to have_content "New User"
#   end
#
#   feature "signing up a user" do
#
#     before(:each) do
#       visit new_user_url
#       fill_in 'Username', :with => 'david'
#       fill_in 'Password', :with => 'password1'
#       click_button 'Sign Up'
#     end
#
#     scenario "shows username on the user page after signup" do
#       expect(page).to have_content 'david'
#     end
#   end
#
# end
#
# feature "logging in" do
#
#   given(:user) { FactoryGirl.create(:user) }
#
#   before(:each) do
#     log_in_user(user)
#   end
#
#   scenario "shows username on the user page after login" do
#     expect(page).to have_content user.username
#   end
#
# end
