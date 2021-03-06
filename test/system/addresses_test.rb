require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  setup do
    @address = addresses(:one)
  end

  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end

  test "creating a Address" do
    visit addresses_url
    click_on "New Address"

    fill_in "Address1", with: @address.address1
    fill_in "Address2", with: @address.address2
    fill_in "County", with: @address.county
    fill_in "Post code", with: @address.post_code
    fill_in "Town or city", with: @address.town_or_city
    click_on "Create Address"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "updating a Address" do
    visit addresses_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @address.address1
    fill_in "Address2", with: @address.address2
    fill_in "County", with: @address.county
    fill_in "Post code", with: @address.post_code
    fill_in "Town or city", with: @address.town_or_city
    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "destroying a Address" do
    visit addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address was successfully destroyed"
  end
end
