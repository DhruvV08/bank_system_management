# frozen_string_literal: true

class CreateAccountDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :account_departments do |t|
      t.string :account_type
      t.bigint :account_no
      t.bigint :account_balance
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
