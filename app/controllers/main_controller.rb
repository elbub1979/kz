class MainController < ApplicationController
  def index
    @users = User.order(:lname)
  end
end
