# frozen_string_literal: true

class Branch < ApplicationRecord
  belongs_to :bank
  has_one :account_department, dependent: :destroy
  has_one :loan_department, dependent: :destroy
  accepts_nested_attributes_for :account_department
  accepts_nested_attributes_for :loan_department
end
