class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :command
      t.integer :success_count
      t.integer :failure_count
      t.string :schedule

      t.timestamps
    end
  end
end
