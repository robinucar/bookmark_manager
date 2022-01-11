feature 'Viewing bookmark manager' do
 scenario 'visit web page' do
    save_and_show
  expect(page).to have_content 'google.com'
  expect(page).to have_content 'makersacademy.com'
  expect(page).to have_content 'destroyallsoftware.com'
  
 end
end