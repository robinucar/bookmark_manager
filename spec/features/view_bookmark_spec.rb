feature 'Viewing bookmark manager' do
 scenario 'visit web page' do
    save_and_show
  expect(page).to have_content 'google.com'
  expect(page).to have_content 'facebook.com'
  expect(page).to have_content 'instagram.com'
  expect(page).to have_content 'makersacademy.com'
  
 end
end