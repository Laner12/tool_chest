# spec/features/create_new_tool_spec.rb
require "rails_helper"

describe "Create new tool", :type => :feature do
  scenario "User creates a new tool" do
    visit new_tool_path
    # same as: visit "/tools/new"

    fill_in "Name", :with => "Screwdriver"
    click_button "Create Tool"

    within(".tool_info") do
      expect(page).to have_content("Screwdriver")
    end
  end
end

describe "Edit an existing tool", :type => :feature do
  scenario "User edits an existing tool" do
    visit edit_tool_path

    fill_in "Name", :with => "Screwdriver"
    click_button "Create Tool"

    within(".tool_info") do
      expect(page).to have_content("Screwdriver")
    end
  end
end
