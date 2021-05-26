# frozen_string_literal: true

json.array! @loan_departments, partial: 'loan_departments/loan_department', as: :loan_department
