class UsersController < ApplicationController
  def index
    @users = User.all.confirmed
  end
end
