feature 'Add a new bookmark' do
    scenario 'User can add bookmark successfully' do
        visit('/new_bookmark')
        fill_in 'url', with: 'http://www.bbc.co.uk'
        click_button 'Add'

        expect(page).to have_content 'http://www.bbc.co.uk'
    end
end