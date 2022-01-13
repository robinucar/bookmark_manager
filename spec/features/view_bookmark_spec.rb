require 'pg'
feature 'Viewing bookmark manager' do
 scenario 'visit web page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/')
  
    
    expect(page).to have_content 'google.com'
    expect(page).to have_content 'makersacademy.com'
    expect(page).to have_content 'destroyallsoftware.com'
 end
end