# frozen_string_literal: true

class RemovePasswordColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :banks, :password, :string
  end
end
