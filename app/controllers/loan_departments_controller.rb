# frozen_string_literal: true

class LoanDepartmentsController < ApplicationController
  before_action :set_loan_department, only: %i[show edit update destroy]

  # GET /loan_departments or /loan_departments.json
  def index
    @loan_departments = LoanDepartment.all
  end

  # GET /loan_departments/1 or /loan_departments/1.json
  def show; end

  # GET /loan_departments/new
  def new
    @loan_department = LoanDepartment.new
  end

  # GET /loan_departments/1/edit
  def edit; end

  # POST /loan_departments or /loan_departments.json
  def create
    @loan_department = LoanDepartment.new(loan_department_params)

    respond_to do |format|
      if @loan_department.save
        format.html { redirect_to @loan_department, notice: 'Loan department was successfully created.' }
        format.json { render :show, status: :created, location: @loan_department }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loan_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_departments/1 or /loan_departments/1.json
  def update
    respond_to do |format|
      if @loan_department.update(loan_department_params)
        format.html { redirect_to @loan_department, notice: 'Loan department was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan_department }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loan_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_departments/1 or /loan_departments/1.json
  def destroy
    @loan_department.destroy
    respond_to do |format|
      format.html { redirect_to loan_departments_url, notice: 'Loan department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_loan_department
    @loan_department = LoanDepartment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def loan_department_params
    params.require(:loan_department).permit(:loan_type, :loan_amount, :branch_id)
  end
end
