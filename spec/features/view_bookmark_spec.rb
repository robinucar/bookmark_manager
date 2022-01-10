feature 'Viewing bookmark manager' do
 scenario 'visit web page' do
    save_and_show
  expect(page).to have_content 'BookmarkManager'
 end
end