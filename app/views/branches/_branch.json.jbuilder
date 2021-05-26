# frozen_string_literal: true

json.extract! branch, :id, :branch_name, :branch_address, :bank_id, :created_at, :updated_at
json.url branch_url(branch, format: :json)
