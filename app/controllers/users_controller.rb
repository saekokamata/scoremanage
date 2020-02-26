class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
      flash[:success] = 'お客様情報は正常に更新されました'
      redirect_to @user
    else  
      flash.now[:danger] = 'お客様情報は更新されませんでした'
      render :edit
    end
   
  end
  
  private

  def user_params
    params.require(:user).permit(:parent_name, :email, :password, :password_confirmation, :child_name, :passing_score, :failing_score)
  end
  
end
