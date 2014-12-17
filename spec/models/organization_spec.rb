require 'rails_helper'

describe Organization do
  it "validates the presence of the name" do
    org = Organization.new
    org.valid?
    expect(org.errors[:name]).to include("can't be blank")

  end

  it "validates the uniqueness of the name" do
    org = Organization.create(name: "yo")
    org1 = Organization.new(name: "yo")

    org1.valid?
    expect(org1.errors[:name]).to include("has already been taken")
  end
end








#
# feature "User edits an event" do
#
#   Organization.create!(
#   description: "Yorkk Debate Team"
#   )
#
#   visit root_path
#   expect(page).to have_content("Yorkk Debate Team")
#   click_on "edit"
#   fill_in "Description", with: "York Debate Team"
#   click_on "Update Organization"
#
#   expect(page).to have_content("York Debate Team")
#   expect(page).to have_no_content("Yorkk Debate Team")
# end




# expect(person.errors[:address].present?).to eq(false)
