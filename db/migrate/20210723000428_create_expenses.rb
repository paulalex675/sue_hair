class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :item,       null: false, default: ""
      t.float :cost,        null: false, default: 0.0
      t.integer :job_id,    null: false, default: 0
      t.integer :user_id,  null: false, default: 0

      t.timestamps
    end
  end
end
