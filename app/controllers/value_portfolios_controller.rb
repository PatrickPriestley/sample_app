class ValuePortfoliosController < ApplicationController

  def show
    @value_portfolio = ValuePortfolio.find(params[:id])
  end
  
  def new
  end

  def create
    @value_portfolio = ValuePortfolio.new(value_portfolio_params)

    @value_portfolio.save
    redirect_to @value_portfolio
  end

  private
  def value_portfolio_params
    params.require(:value_portfolio).permit(:initial_investment, :investment_increase, :share_price)
  end
end
