
feature 'User tests' do
	scenario 'can sign up' do
		visit '/user/new'
		fill_in 'email', with: 'batman@gotham.com'
		fill_in 'password', with: 'Imissmummy'
		click_button('Sign up')
		expect(User.first.email).to eq('batman@gotham.com')
	end
end