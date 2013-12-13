class CreateJobDependencies < ActiveRecord::Migration
  def change
    create_table :job_dependencies do |t|
      t.integer :parent_id
      t.integer :child_id

      t.timestamps null: false
    end
  end
end
