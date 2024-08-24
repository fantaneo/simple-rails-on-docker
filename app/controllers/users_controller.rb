# frozen_string_literal: true

# UsersControllerは、ユーザー関連の操作を管理するコントローラーです。
# このコントローラーは、ユーザーの一覧表示、詳細表示、作成、更新、削除などの機能を提供します。
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user.full_name
    full_name
  end

  def full_name
    @user.full_name
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
