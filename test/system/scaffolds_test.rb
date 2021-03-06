require "application_system_test_case"

class ScaffoldsTest < ApplicationSystemTestCase
  setup do
    @scaffold = scaffolds(:one)
  end

  test "visiting the index" do
    visit scaffolds_url
    assert_selector "h1", text: "Scaffolds"
  end

  test "creating a Scaffold" do
    visit scaffolds_url
    click_on "New Scaffold"

    fill_in "Comment", with: @scaffold.Comment
    fill_in "Body", with: @scaffold.body
    fill_in "Post", with: @scaffold.post
    fill_in "Reference", with: @scaffold.reference
    fill_in "Text", with: @scaffold.text
    click_on "Create Scaffold"

    assert_text "Scaffold was successfully created"
    click_on "Back"
  end

  test "updating a Scaffold" do
    visit scaffolds_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @scaffold.Comment
    fill_in "Body", with: @scaffold.body
    fill_in "Post", with: @scaffold.post
    fill_in "Reference", with: @scaffold.reference
    fill_in "Text", with: @scaffold.text
    click_on "Update Scaffold"

    assert_text "Scaffold was successfully updated"
    click_on "Back"
  end

  test "destroying a Scaffold" do
    visit scaffolds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scaffold was successfully destroyed"
  end
end
