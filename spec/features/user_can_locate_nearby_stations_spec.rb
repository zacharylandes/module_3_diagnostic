require 'rails_helper'

feature "User visits root page" do
    it 'can locate the 10 closest stations ' do
    visit "/"
    fill_in :q, with: "80203"
    click_on "Locate"

    expect(current_path).to eq('/search')
    expect(page).to have_content("Station: Suburban Propane")
    expect(page).to have_content("fuel Type: LPG")
    expect(page).to have_content("Zip:80232")
    expect(page).to have_content("Distance:4.53481")
    expect(page).to have_content("Access Times: 7:30am-4:30pm M-F;")
    end
end



# ```As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times```
