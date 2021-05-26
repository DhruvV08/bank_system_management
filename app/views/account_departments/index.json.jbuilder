# frozen_string_literal: true

json.array! @account_departments, partial: 'account_departments/account_department', as: :account_department
