# frozen_string_literal: true

require 'application_system_test_case'

class AccountDepartmentsTest < ApplicationSystemTestCase
  setup do
    @account_department = account_departments(:one)
  end

  test 'visiting the index' do
    visit account_departments_url
    assert_selector 'h1', text: 'Account Departments'
  end

  test 'creating a Account department' do
    visit account_departments_url
    click_on 'New Account Department'

    fill_in 'Account balance', with: @account_department.account_balance
    fill_in 'Account no', with: @account_department.account_no
    fill_in 'Account type', with: @account_department.account_type
    fill_in 'Branch', with: @account_department.branch_id
    click_on 'Create Account department'

    assert_text 'Account department was successfully created'
    click_on 'Back'
  end

  test 'updating a Account department' do
    visit account_departments_url
    click_on 'Edit', match: :first

    fill_in 'Account balance', with: @account_department.account_balance
    fill_in 'Account no', with: @account_department.account_no
    fill_in 'Account type', with: @account_department.account_type
    fill_in 'Branch', with: @account_department.branch_id
    click_on 'Update Account department'

    assert_text 'Account department was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Account department' do
    visit account_departments_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Account department was successfully destroyed'
  end
end
