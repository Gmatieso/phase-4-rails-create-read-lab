 class ChangePriceToPlant < ActiveRecord::Migration[6.1]
  def change
    change_column :plants, :price, :decimal
  end
end
