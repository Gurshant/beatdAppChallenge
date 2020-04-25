class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.decimal :cost
      t.integer :quantity

      t.timestamps
    end
  end
end
