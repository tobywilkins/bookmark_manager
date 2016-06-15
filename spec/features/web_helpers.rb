def setup_link
  visit('/links/new')
  fill_in :title, with: 'Google'
  fill_in :url, with: 'www.google.com'
  fill_in :tags, with: 'bubbles'
  click_button 'Submit'
end

def sign_up(email: 'batman@gotham.com',
            password: '12345678',
            password_confirmation: '12345678')
  visit '/user/new'
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Sign up'
end
