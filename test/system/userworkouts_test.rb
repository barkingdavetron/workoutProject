require "application_system_test_case"

class UserworkoutsTest < ApplicationSystemTestCase
  setup do
    @userworkout = userworkouts(:one)
  end

  test "visiting the index" do
    visit userworkouts_url
    assert_selector "h1", text: "Userworkouts"
  end

  test "should create userworkout" do
    visit userworkouts_url
    click_on "New userworkout"

    fill_in "User", with: @userworkout.User_id
    fill_in "Exercise", with: @userworkout.exercise
    click_on "Create Userworkout"

    assert_text "Userworkout was successfully created"
    click_on "Back"
  end

  test "should update Userworkout" do
    visit userworkout_url(@userworkout)
    click_on "Edit this userworkout", match: :first

    fill_in "User", with: @userworkout.User_id
    fill_in "Exercise", with: @userworkout.exercise
    click_on "Update Userworkout"

    assert_text "Userworkout was successfully updated"
    click_on "Back"
  end

  test "should destroy Userworkout" do
    visit userworkout_url(@userworkout)
    click_on "Destroy this userworkout", match: :first

    assert_text "Userworkout was successfully destroyed"
  end
end
