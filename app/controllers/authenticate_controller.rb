class AuthenticateController < ApplicationController
  def new
    respond_to do |format|
      format.js   { render partial: "javascript/authenticate" }
      format.html { redirect_to root_path }
    end
  end
end
