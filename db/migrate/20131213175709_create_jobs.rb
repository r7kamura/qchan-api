class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :user, index: true, null: false
      t.string :name, null: false
      t.text :command, null: false
      t.integer :builds_count, null: false, default: 0
      t.integer :successes_count, null: false, default: 0
      t.integer :failures_count, null: false, default: 0
      t.string :schedule

      t.timestamps null: false
    end
  end
end
