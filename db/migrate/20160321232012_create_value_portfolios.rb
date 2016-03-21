class CreateValuePortfolios < ActiveRecord::Migration
  def change
    create_table :value_portfolios do |t|
      t.string :initial_investment
      t.string :investment_increase
      t.string :share_price

      t.timestamps null: false
    end
  end
end
