class HomeController < ApplicationController
  def index
    @copies = Copy.all
    @users = User.all
  end

  def contact
  end

  def explore
  end

  def listing
    @games = Game.all
    @categories = Category.all
  end
end
