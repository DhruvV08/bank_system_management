# frozen_string_literal: true

json.extract! bank, :id, :bank_name, :head_office, :created_at, :updated_at
json.url bank_url(bank, format: :json)
