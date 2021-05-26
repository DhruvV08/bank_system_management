# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def new; end

  def create
    @bank = Bank.find_by_bank_name(params[:bank_name])
    if @bank&.authenticate(params[:password])
      session[:bank_id] = @bank.id
      redirect_to root_url, notice: 'Logged in!'
    else
      flash.now[:alert] = 'Name or password is invalid'
      render 'new'
    end
  end

  def destroy
    session.delete(:bank_id)
    session[:bank_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
