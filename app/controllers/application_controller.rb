# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_bank
  before_action :require_login
  def current_bank
    if session[:bank_id]
      @current_bank ||= Bank.find(session[:bank_id])
    else
      @current_bank = nil
    end
  end

  private

  def require_login
    if session[:bank_id].nil?
      flash[:error] = 'You must be logged in to access this section'
      redirect_to root_url  # halts request cycle
    end
  end
end
