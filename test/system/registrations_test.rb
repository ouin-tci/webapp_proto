require "application_system_test_case"

class RegistrationsTest < ApplicationSystemTestCase
  setup do
    @registration = registrations(:one)
  end

  test "visiting the index" do
    visit registrations_url
    assert_selector "h1", text: "Registrations"
  end

  test "creating a Registration" do
    visit registrations_url
    click_on "New Registration"

    fill_in "Create by", with: @registration.create_by
    fill_in "Customer type", with: @registration.customer_type
    fill_in "Email", with: @registration.email
    fill_in "Email send at", with: @registration.email_send_at
    fill_in "Expired date", with: @registration.expired_date
    fill_in "Operator confirmed", with: @registration.operator_confirmed
    fill_in "Token", with: @registration.token
    fill_in "Updated by", with: @registration.updated_by
    fill_in "Vaild", with: @registration.vaild
    click_on "Create Registration"

    assert_text "Registration was successfully created"
    click_on "Back"
  end

  test "updating a Registration" do
    visit registrations_url
    click_on "Edit", match: :first

    fill_in "Create by", with: @registration.create_by
    fill_in "Customer type", with: @registration.customer_type
    fill_in "Email", with: @registration.email
    fill_in "Email send at", with: @registration.email_send_at
    fill_in "Expired date", with: @registration.expired_date
    fill_in "Operator confirmed", with: @registration.operator_confirmed
    fill_in "Token", with: @registration.token
    fill_in "Updated by", with: @registration.updated_by
    fill_in "Vaild", with: @registration.vaild
    click_on "Update Registration"

    assert_text "Registration was successfully updated"
    click_on "Back"
  end

  test "destroying a Registration" do
    visit registrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registration was successfully destroyed"
  end
end
