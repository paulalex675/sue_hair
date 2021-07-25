class CreateClientsAndJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :first_name, null: false, default: ""
      t.string :last_name,  null: false, default: ""
      t.string :phone,      null: false, default: ""
      t.string :colour,     null: false, default: ""
      t.integer :user_id,   null: false, default: 0
      t.text :notes,        null: false, default: ""
      t.timestamps
    end

    create_table :jobs do |t|
      t.integer :client_id, null: false, default: 0
      t.float :charge,      null: false, default: 0.0
      t.float :expenses,    null: false, default: 0.0
      t.integer :mileage,   null: false, default: 0
      t.text :notes,        null: false, default: ""
      t.integer :user_id,  null: false, default: 0
      t.integer :service_id, null: false, default: 0

      t.timestamps
    end

    create_table :clients_and_jobs, id: false do |t|
      t.belongs_to :client
      t.belongs_to :job
    end
  end
end
