class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @value_portfolio = current_user.value_portfolios.all
    end
  end

  def about
  end

  def contact
  end
end
