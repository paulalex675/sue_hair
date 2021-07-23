class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :phone, null: false, default: ""
      t.string :colour, null: false, default: ""

      t.timestamps
    end
  end
end
