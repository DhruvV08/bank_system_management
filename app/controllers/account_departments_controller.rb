# frozen_string_literal: true

class AccountDepartmentsController < ApplicationController
  before_action :set_account_department, only: %i[show edit update destroy]

  # GET /account_departments or /account_departments.json
  def index
    @account_departments = AccountDepartment.all
  end

  # GET /account_departments/1 or /account_departments/1.json
  def show; end

  # GET /account_departments/new
  def new
    @account_department = AccountDepartment.new
  end

  # GET /account_departments/1/edit
  def edit; end

  # POST /account_departments or /account_departments.json
  def create
    @account_department = AccountDepartment.new(account_department_params)

    respond_to do |format|
      if @account_department.save
        format.html { redirect_to @account_department, notice: 'Account department was successfully created.' }
        format.json { render :show, status: :created, location: @account_department }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @account_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_departments/1 or /account_departments/1.json
  def update
    respond_to do |format|
      if @account_department.update(account_department_params)
        format.html { redirect_to @account_department, notice: 'Account department was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_department }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @account_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_departments/1 or /account_departments/1.json
  def destroy
    @account_department.destroy
    respond_to do |format|
      format.html { redirect_to account_departments_url, notice: 'Account department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_account_department
    @account_department = AccountDepartment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def account_department_params
    params.require(:account_department).permit(:account_type, :account_no, :account_balance, :branch_id)
  end
end
