class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :job, index: true
      t.string :service, null: false
      t.text :payload

      t.timestamps null: false
    end
  end
end
