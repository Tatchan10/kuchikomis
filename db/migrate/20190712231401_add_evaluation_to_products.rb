class AddEvaluationToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :evaluation, :string
  end
end
