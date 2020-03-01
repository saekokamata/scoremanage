class ToppagesController < ApplicationController
before_action :require_user_logged_in

  def index
      redirect_to subjects_path
      #@tests = current_user.tests.order(id: :desc).page(params[:page]).per(3)
  end
  
end
