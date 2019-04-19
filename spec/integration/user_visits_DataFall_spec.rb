require 'rails_helper.rb'

feature "User visits our website" do
    scenario "User visits and reads the home page" do
        visit root_path
        expect(page).to have_content("Who we are")
        end
        
    scenario "User reads our transparency statement" do
            visit root_path
            click_link "About us"
            expect(page).to have_content("Transparency")
        end 
end 
    