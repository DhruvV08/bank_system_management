# frozen_string_literal: true

class CreateBanks < ActiveRecord::Migration[6.1]
  def change
    create_table :banks do |t|
      t.string :bank_name
      t.string :head_office

      t.timestamps
    end
  end
end
