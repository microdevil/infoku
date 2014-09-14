class UsersController < ApplicationController
  before_filter :authenticate_user!, only: [:index]

  def index
    @users = User.all.confirmed
  end
end
