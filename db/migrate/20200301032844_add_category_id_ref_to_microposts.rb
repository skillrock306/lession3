class AddCategoryIdRefToMicroposts < ActiveRecord::Migration[6.0]
  def change
    add_reference :microposts, :categories, foreign_key: true
  end
end
