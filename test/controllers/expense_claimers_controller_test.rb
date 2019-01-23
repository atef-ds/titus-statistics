require 'test_helper'

class ExpenseClaimersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense_claimer = expense_claimers(:one)
  end

  test "should get index" do
    get expense_claimers_url
    assert_response :success
  end

  test "should get new" do
    get new_expense_claimer_url
    assert_response :success
  end

  test "should create expense_claimer" do
    assert_difference('ExpenseClaimer.count') do
      post expense_claimers_url, params: { expense_claimer: { amount_cents: @expense_claimer.amount_cents, approved: @expense_claimer.approved, claimer_name: @expense_claimer.claimer_name, description: @expense_claimer.description, expense_date: @expense_claimer.expense_date } }
    end

    assert_redirected_to expense_claimer_url(ExpenseClaimer.last)
  end

  test "should show expense_claimer" do
    get expense_claimer_url(@expense_claimer)
    assert_response :success
  end

  test "should get edit" do
    get edit_expense_claimer_url(@expense_claimer)
    assert_response :success
  end

  test "should update expense_claimer" do
    patch expense_claimer_url(@expense_claimer), params: { expense_claimer: { amount_cents: @expense_claimer.amount_cents, approved: @expense_claimer.approved, claimer_name: @expense_claimer.claimer_name, description: @expense_claimer.description, expense_date: @expense_claimer.expense_date } }
    assert_redirected_to expense_claimer_url(@expense_claimer)
  end

  test "should destroy expense_claimer" do
    assert_difference('ExpenseClaimer.count', -1) do
      delete expense_claimer_url(@expense_claimer)
    end

    assert_redirected_to expense_claimers_url
  end
end
