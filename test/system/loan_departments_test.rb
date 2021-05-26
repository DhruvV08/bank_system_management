# frozen_string_literal: true

require 'application_system_test_case'

class LoanDepartmentsTest < ApplicationSystemTestCase
  setup do
    @loan_department = loan_departments(:one)
  end

  test 'visiting the index' do
    visit loan_departments_url
    assert_selector 'h1', text: 'Loan Departments'
  end

  test 'creating a Loan department' do
    visit loan_departments_url
    click_on 'New Loan Department'

    fill_in 'Branch', with: @loan_department.branch_id
    fill_in 'Loan amount', with: @loan_department.loan_amount
    fill_in 'Loan type', with: @loan_department.loan_type
    click_on 'Create Loan department'

    assert_text 'Loan department was successfully created'
    click_on 'Back'
  end

  test 'updating a Loan department' do
    visit loan_departments_url
    click_on 'Edit', match: :first

    fill_in 'Branch', with: @loan_department.branch_id
    fill_in 'Loan amount', with: @loan_department.loan_amount
    fill_in 'Loan type', with: @loan_department.loan_type
    click_on 'Update Loan department'

    assert_text 'Loan department was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Loan department' do
    visit loan_departments_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Loan department was successfully destroyed'
  end
end
