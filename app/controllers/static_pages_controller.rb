class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: [:about, :contact]

  def home
    @value_portfolio = current_user.value_portfolios.build if logged_in?
  end

  def about
  end

  def contact
  end
end
