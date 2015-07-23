class PicksController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.limit(6)
  end


  def next_round
    @users = User.limit(6)
    
    respond_to do |format|
      format.js
      format.html
    end
  end
end
