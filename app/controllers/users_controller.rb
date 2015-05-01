class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
  	@user = User.find_by(id: params["id"])
  	@questions = Question.all
  	@answers = Answer.all
  end

end
