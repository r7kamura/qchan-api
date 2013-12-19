class CreateJobDependencies < ActiveRecord::Migration
  def change
    create_table :job_dependencies do |t|
      t.integer :parent_id, null: false
      t.integer :child_id, null: false
      t.datetime :created_at, null: false
    end

    add_index :job_dependencies, [:parent_id, :child_id], unique: true
  end
end
