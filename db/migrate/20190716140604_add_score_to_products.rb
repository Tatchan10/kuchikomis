class AddScoreToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :score, :integer
  end
end
