class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.references :job, index: true, null: false
      t.integer :exit_status, null: false
      t.integer :number, null: false
      t.text :output
      t.timestamp :started_at
      t.timestamp :finished_at

      t.timestamps null: false
    end
  end
end
