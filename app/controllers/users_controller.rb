class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show]
  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews.order('created_at DESC').page(params[:page])
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
 
    #編集しようとしてるユーザーがログインユーザーとイコールかをチェック
  if current_user == @user
    
    if params[:image_user]
      @user.image = "#{@user.id}.jpg"
      image = params[:image_user]
      File.binwrite("user_images/#{@user.image}", image.read)
      flash[:success] = '画像を保存しました。'
    end
 
    if @user.update(user_params)
      flash[:success] = 'ユーザー情報を編集しました。'
      render :edit
    else
      flash.now[:danger] = 'ユーザー情報の編集に失敗しました。'
      render :edit
    end   
 
  else
    redirect_to root_url
  end
   
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
  private
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :introduce, :image_user, :age, :sex)
  end
end
