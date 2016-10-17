class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.string :item
      t.string :euro
      t.string :pound
      t.string :colombian_peso

      t.timestamps
    end
  end
end
