class CreateValueAveragings < ActiveRecord::Migration
  def change
    create_table :value_averagings do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
