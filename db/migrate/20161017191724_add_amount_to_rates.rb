class AddAmountToRates < ActiveRecord::Migration[5.0]
  def change
    add_column :rates, :amount, :string
  end
end
