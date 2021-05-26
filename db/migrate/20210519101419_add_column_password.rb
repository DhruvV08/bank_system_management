# frozen_string_literal: true

class AddColumnPassword < ActiveRecord::Migration[6.1]
  def change
    add_column :banks, :password_digest, :string
  end
end
