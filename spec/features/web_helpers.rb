def setup_link
  visit('/links/new')
  fill_in :title, with: 'Google'
  fill_in :url, with: 'www.google.com'
  fill_in :tags, with: 'bubbles'
  click_button 'Submit'
end
