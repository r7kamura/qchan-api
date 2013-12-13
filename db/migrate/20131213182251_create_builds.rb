class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.references :job_id, index: true
      t.integer :exit_status
      t.integer :number
      t.text :output
      t.timestamp :started_at
      t.timestamp :finished_at

      t.timestamps
    end
  end
end
