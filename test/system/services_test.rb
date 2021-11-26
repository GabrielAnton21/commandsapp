require "application_system_test_case"

class ServicesTest < ApplicationSystemTestCase
  setup do
    @service = services(:one)
  end

  test "visiting the index" do
    visit services_url
    assert_selector "h1", text: "Services"
  end

  test "creating a Service" do
    visit services_url
    click_on "New Service"

    fill_in "Service ad image link", with: @service.service_ad_image_link
    fill_in "Service address", with: @service.service_address
    fill_in "Service contact", with: @service.service_contact
    fill_in "Service owner", with: @service.service_owner
    fill_in "Service title", with: @service.service_title
    fill_in "Service type", with: @service.service_type
    click_on "Create Service"

    assert_text "Service was successfully created"
    click_on "Back"
  end

  test "updating a Service" do
    visit services_url
    click_on "Edit", match: :first

    fill_in "Service ad image link", with: @service.service_ad_image_link
    fill_in "Service address", with: @service.service_address
    fill_in "Service contact", with: @service.service_contact
    fill_in "Service owner", with: @service.service_owner
    fill_in "Service title", with: @service.service_title
    fill_in "Service type", with: @service.service_type
    click_on "Update Service"

    assert_text "Service was successfully updated"
    click_on "Back"
  end

  test "destroying a Service" do
    visit services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service was successfully destroyed"
  end
end
