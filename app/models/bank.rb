# frozen_string_literal: true

class Bank < ApplicationRecord
  has_secure_password
  has_many :branches, dependent: :destroy

  validates :bank_name, presence: true, uniqueness: true

  mount_uploader :avatar, BankImgUploader
end
