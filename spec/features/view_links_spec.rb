
feature 'View Links' do
  scenario 'shows a list of links on the homepage'do
    expect(page).to have_selector(:link_or_button, 'Visit Page')
  end
end