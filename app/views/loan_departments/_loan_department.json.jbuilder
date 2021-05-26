# frozen_string_literal: true

json.extract! loan_department, :id, :loan_type, :loan_amount, :branch_id, :created_at, :updated_at
json.url loan_department_url(loan_department, format: :json)
