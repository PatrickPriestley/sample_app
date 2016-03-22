class ValuePortfoliosController < ApplicationController
  before_action :logged_in_user, only: [:show, :create, :new]
  before_action :correct_user,   only: :destroy

  def show
    @value_portfolio = ValuePortfolio.find(params[:id])
  end

  def new
  end

  def create
    @value_portfolio = current_user.value_portfolios.build(value_portfolio_params)
    if @value_portfolio.save
      flash[:success] = "Value Portfolio created!"
      redirect_to @value_portfolio
    else
      render 'static_pages/home'
    end
  end

  private
  def value_portfolio_params
    params.require(:value_portfolio).permit(:initial_investment, :investment_increase, :share_price)
  end

  def correct_user
      @value_portfolio = current_user.value_portfolios.find_by(id: params[:id])
      redirect_to root_url if @value_portfolio.nil?
  end
end
