# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_525_091_334) do
  create_table 'account_departments', force: :cascade do |t|
    t.string 'account_type'
    t.bigint 'account_no'
    t.bigint 'account_balance'
    t.integer 'branch_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['branch_id'], name: 'index_account_departments_on_branch_id'
  end

  create_table 'banks', force: :cascade do |t|
    t.string 'bank_name'
    t.string 'head_office'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'password_digest'
    t.string 'avatar'
  end

  create_table 'branches', force: :cascade do |t|
    t.string 'branch_name'
    t.string 'branch_address'
    t.integer 'bank_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['bank_id'], name: 'index_branches_on_bank_id'
  end

  create_table 'loan_departments', force: :cascade do |t|
    t.string 'loan_type'
    t.bigint 'loan_amount'
    t.integer 'branch_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['branch_id'], name: 'index_loan_departments_on_branch_id'
  end

  add_foreign_key 'account_departments', 'branches'
  add_foreign_key 'branches', 'banks'
  add_foreign_key 'loan_departments', 'branches'
end
