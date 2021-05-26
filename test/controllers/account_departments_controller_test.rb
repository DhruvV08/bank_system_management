# frozen_string_literal: true

require 'test_helper'

class AccountDepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_department = account_departments(:one)
  end

  test 'should get index' do
    get account_departments_url
    assert_response :success
  end

  test 'should get new' do
    get new_account_department_url
    assert_response :success
  end

  test 'should create account_department' do
    assert_difference('AccountDepartment.count') do
      post account_departments_url,
           params: { account_department: { account_balance: @account_department.account_balance,
                                           account_no: @account_department.account_no, account_type: @account_department.account_type, branch_id: @account_department.branch_id } }
    end

    assert_redirected_to account_department_url(AccountDepartment.last)
  end

  test 'should show account_department' do
    get account_department_url(@account_department)
    assert_response :success
  end

  test 'should get edit' do
    get edit_account_department_url(@account_department)
    assert_response :success
  end

  test 'should update account_department' do
    patch account_department_url(@account_department),
          params: { account_department: { account_balance: @account_department.account_balance,
                                          account_no: @account_department.account_no, account_type: @account_department.account_type, branch_id: @account_department.branch_id } }
    assert_redirected_to account_department_url(@account_department)
  end

  test 'should destroy account_department' do
    assert_difference('AccountDepartment.count', -1) do
      delete account_department_url(@account_department)
    end

    assert_redirected_to account_departments_url
  end
end
