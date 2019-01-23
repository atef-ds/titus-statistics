require "application_system_test_case"

class ExpenseClaimersTest < ApplicationSystemTestCase
  setup do
    @expense_claimer = expense_claimers(:one)
  end

  test "visiting the index" do
    visit expense_claimers_url
    assert_selector "h1", text: "Expense Claimers"
  end

  test "creating a Expense claimer" do
    visit expense_claimers_url
    click_on "New Expense Claimer"

    fill_in "Amount cents", with: @expense_claimer.amount_cents
    fill_in "Approved", with: @expense_claimer.approved
    fill_in "Claimer name", with: @expense_claimer.claimer_name
    fill_in "Description", with: @expense_claimer.description
    fill_in "Expense date", with: @expense_claimer.expense_date
    click_on "Create Expense claimer"

    assert_text "Expense claimer was successfully created"
    click_on "Back"
  end

  test "updating a Expense claimer" do
    visit expense_claimers_url
    click_on "Edit", match: :first

    fill_in "Amount cents", with: @expense_claimer.amount_cents
    fill_in "Approved", with: @expense_claimer.approved
    fill_in "Claimer name", with: @expense_claimer.claimer_name
    fill_in "Description", with: @expense_claimer.description
    fill_in "Expense date", with: @expense_claimer.expense_date
    click_on "Update Expense claimer"

    assert_text "Expense claimer was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense claimer" do
    visit expense_claimers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense claimer was successfully destroyed"
  end
end
