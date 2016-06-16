def create_a_new_link
  visit('/links/new')
  fill_in('url', with: 'http://www.makersacademy.com/')
  fill_in('title', with: 'Makers Academy')
  fill_in('tags', with: 'coding')
  click_button 'Create Link'
end

# def register_and_sign_in
#   visit('/')
#   fill_in('name', with: 'Cameron')
#   fill_in('password', with: 'password')
#   fill_in('password_confirmation', with: 'password')
#   fill_in('email', with: 'cameron@gmail.com')
#   click_button('Register')
# end

def sign_up(email: 'cameron@gmail.com',
            password: 'password',
            password_confirmation: 'password')
  visit '/'
  fill_in('name', with: 'Cameron')
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Register'
end
