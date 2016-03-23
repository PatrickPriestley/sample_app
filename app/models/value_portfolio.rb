class ValuePortfolio < ActiveRecord::Base
  belongs_to :user
  validates :user_id,             presence: true
  validates :portfolio_name,      length: { maximum: 50 }
  validates :initial_investment,  numericality: true
  validates :investment_increase, numericality: true
  validates :share_price,         numericality: true
  validates :commission_paid,     numericality: true
end
