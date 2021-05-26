# frozen_string_literal: true

class AddImgToBank < ActiveRecord::Migration[6.1]
  def change
    add_column :banks, :avatar, :string
  end
end
