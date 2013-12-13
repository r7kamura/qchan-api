class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :job_id, index: true
      t.string :type
      t.text :payload

      t.timestamps
    end
  end
end
