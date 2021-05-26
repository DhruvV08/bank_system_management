# frozen_string_literal: true

class CreateLoanDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :loan_departments do |t|
      t.string :loan_type
      t.bigint :loan_amount
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
