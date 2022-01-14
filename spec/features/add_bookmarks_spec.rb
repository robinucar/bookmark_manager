feature 'Add a new bookmark' do
    scenario 'User can add bookmark successfully' do
        visit('/new_bookmark')
        fill_in 'url', with: 'http://www.bbc.co.uk'
        fill_in 'title', with: 'BBC'
        click_button 'Add'

        expect(page).to have_link('BBC', href: 'http://www.bbc.co.uk')
    end
end