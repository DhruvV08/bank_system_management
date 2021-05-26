# frozen_string_literal: true

class CreateBranches < ActiveRecord::Migration[6.1]
  def change
    create_table :branches do |t|
      t.string :branch_name
      t.string :branch_address
      t.references :bank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
