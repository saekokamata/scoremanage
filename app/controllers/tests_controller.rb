class TestsController < ApplicationController
before_action :require_user_logged_in
before_action :correct_user, only: [:show, :edit, :update ]

  def show
    @test = Test.find(params[:id])
  end

  def new
    @test = Test.new
  end

  def create
    @test = current_user.tests.build(test_params)
    
    if @test.save
      flash[:success] = 'テストを登録しました'
      redirect_to @test
    else
      @tests = current_user.tests.order(id: :desc).page(params[:page])
      flash.now[:danger] = 'テストの登録に失敗しました。'
      render :new
    end    
  end

  def edit
    @test = Test.find(params[:id])
    
  end

  def update
  @test = Test.find(params[:id])

    if @test.update(test_params)
      flash[:success] = 'テストは正常に更新されました'
      redirect_to @test
    else  
      flash.now[:danger] = 'テストは更新されませんでした'
      render :edit
    end

  end

  private

  def test_params
    params.require(:test).permit(:year_month,:week,:text_no,:japanese_theme,:japanese_score,:japanese_memo,:japanese_review,:math_theme,:math_score,:math_memo,:math_review,:science_theme,:science_score,:science_memo,:science_review,:social_theme,:social_score,:social_memo,:social_review)
  end

  def correct_user
    @test = current_user.tests.find_by(id: params[:id])
    unless @test
      redirect_to root_url
    end
  end
end
