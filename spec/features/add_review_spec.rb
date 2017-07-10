require 'rails_helper'

describe "the add a kombucha" do
  it "adds a new kombucha" do
    visit kombuchas_path
    click_link 'Kombucha Flavors'
    click_link 'add new kombucha'
    fill_in "Name", :with => 'chia superpower'
    fill_in "Cost", :with => '10'
    fill_in "Origin", :with => 'seattle'
    click_button 'Create Kombucha'
    expect(page).to have_content 'chia superpower'
  end


end
