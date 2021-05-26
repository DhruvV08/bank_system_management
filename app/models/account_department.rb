# frozen_string_literal: true

class AccountDepartment < ApplicationRecord
  belongs_to :branch
end
