require 'spec_helper'

feature 'new link form' do

  scenario 'put information into form' do
    visit '/links/new'
    fill_in('Title', with: 'Google')
    fill_in('URL', with: 'www.google.com')
    click_button'submit'
    expect(page).to have_content 'Google'
  end

end
