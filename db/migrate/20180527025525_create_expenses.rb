class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :member_name
      t.float :amount
      t.references :user_event, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
