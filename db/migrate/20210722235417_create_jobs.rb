class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.integer :clients, array: true, default: []
      t.float :charge, null:false, default: 0.0
      t.float :expenses, null: false, default: 0.0
      t.integer :mileage, null: false, default: 0
      t.text :notes, null: false, default: ""

      t.timestamps
    end
  end
end
