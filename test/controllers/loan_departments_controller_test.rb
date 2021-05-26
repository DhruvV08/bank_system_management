# frozen_string_literal: true

require 'test_helper'

class LoanDepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan_department = loan_departments(:one)
  end

  test 'should get index' do
    get loan_departments_url
    assert_response :success
  end

  test 'should get new' do
    get new_loan_department_url
    assert_response :success
  end

  test 'should create loan_department' do
    assert_difference('LoanDepartment.count') do
      post loan_departments_url,
           params: { loan_department: { branch_id: @loan_department.branch_id, loan_amount: @loan_department.loan_amount,
                                        loan_type: @loan_department.loan_type } }
    end

    assert_redirected_to loan_department_url(LoanDepartment.last)
  end

  test 'should show loan_department' do
    get loan_department_url(@loan_department)
    assert_response :success
  end

  test 'should get edit' do
    get edit_loan_department_url(@loan_department)
    assert_response :success
  end

  test 'should update loan_department' do
    patch loan_department_url(@loan_department),
          params: { loan_department: { branch_id: @loan_department.branch_id, loan_amount: @loan_department.loan_amount,
                                       loan_type: @loan_department.loan_type } }
    assert_redirected_to loan_department_url(@loan_department)
  end

  test 'should destroy loan_department' do
    assert_difference('LoanDepartment.count', -1) do
      delete loan_department_url(@loan_department)
    end

    assert_redirected_to loan_departments_url
  end
end
