require "spec_helper"

feature "user adds a new TV show" do
  # As a TV fanatic
  # I want to add one of my favorite shows
  # So that I can encourage others to binge watch it
  #
  # Acceptance Criteria:
  # * I must provide the title, network, and starting year.
  # * I can optionally provide the final year, genre, and synopsis.
  # * The synopsis can be no longer than 5000 characters.
  # * The starting year and ending year (if provided) must be
  #   greater than 1900.
  # * The genre must be one of the following: Action, Mystery,
  #   Drama, Comedy, Fantasy
  # * If any of the above validations fail, the form should be
  #   re-displayed with the failing validation message.

scenario "successfully add a new show" do
    visit "/television_shows"
    click_link('Add New Show')
    fill_in('Title:', :with => 'Blackish')
    fill_in('Network:', :with => 'ABC)
    fill_in('Starting Year:', :with => '2014')
    click_button('Add TV Show')

    expect(page.current_path).to eq(/'television_shows)
    expect(page).to have_content("Blackish (ABC)")
end


scenario "fail to add a show with invalid information" do

    longest_string = ""
    5001.times do
      longest_string += "a"
    end

    visit "/television_shows"
    click_link('Add New Show')

    fill_in('Title:', :with => 'Blackish')
    fill_in('Network:', :with => 'ABC')
    fill_in('Starting Year:', :with => '2014')
    fill_in('Ending Year:', :with => '1984')
    fill_in('Synopsis:', :with => longest_string)
    click_button('Add TV Show')
    # save_and_open_page
    expect(page).to have_content("Synopsis must be under 5000 characters")

  end

  scenario "fail to add a show with invalid starting_year" do



    visit "/television_shows"
    click_link('Add New Show')
    # * The starting year and ending year (if provided) must be
    #   greater than 1900.
    fill_in('Title:', :with => 'Blackish')
    fill_in('Network:', :with => 'ABC')
    fill_in('Starting Year:', :with => '2014')
    click_button('Add TV Show')

    expect(page).to have_content("Please enter a valid starting year")

  end

  scenario "fail to add a show with invalid ending_year" do


    visit "/television_shows"
    click_link('Add New Show')

    fill_in('Title:', :with => 'Blackish')
    fill_in('Network:', :with => 'ABC')
    fill_in('Starting Year:', :with => '2014')
    fill_in('Ending Year:', :with => '2018')
    click_button('Add TV Show')

    expect(page).to have_content("Please enter a valid ending year")

  end

  scenario "Genre must be one of the following: Action, Mystery, Drama, Comedy, Fantasy" do
    visit "/television_shows"
    click_link('Add New Show')

    genres = ['Action', 'Mystery', 'Drama', 'Comedy', 'Fantasy']

    expect(options).to eq(genres)

  end

end
