
feature 'Creating Links' do
  scenario 'add link and submit' do
    visit('/links/new')
    fill_in :title, with: 'Google'
    fill_in :url, with: 'www.google.com'
    click_button 'Submit'

    within 'ul#links' do
      expect(page).to have_content 'Google'
    end
  end
end