# frozen_string_literal: true

json.extract! account_department, :id, :account_type, :account_no, :account_balance, :branch_id, :created_at,
              :updated_at
json.url account_department_url(account_department, format: :json)
