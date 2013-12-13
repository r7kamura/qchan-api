class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :job, index: true
      t.string :type, null: false
      t.text :payload

      t.timestamps null: false
    end
  end
end
