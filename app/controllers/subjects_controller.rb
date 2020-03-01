class SubjectsController < ApplicationController
before_action :require_user_logged_in

  def index
      @tests = current_user.tests.order(id: :desc).page(params[:page]).per(3)
  end
  
  def japanese
      @tests = current_user.tests.order(id: :desc).page(params[:page]).per(3)
  end

  def math
      @tests = current_user.tests.order(id: :desc).page(params[:page]).per(3)
  end

  def science
      @tests = current_user.tests.order(id: :desc).page(params[:page]).per(3)
  end

  def social
      @tests = current_user.tests.order(id: :desc).page(params[:page]).per(3)
  end
    
end
