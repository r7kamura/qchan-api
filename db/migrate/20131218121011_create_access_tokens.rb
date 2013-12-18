class CreateAccessTokens < ActiveRecord::Migration
  def change
    create_table :access_tokens do |t|
      t.references :user, null: false
      t.string :token, null: false
      t.string :refresh_token, null: false
      t.string :scopes, null: false
      t.datetime :expired_at
      t.datetime :revoked_at

      t.timestamps null: false
    end

    add_index :access_tokens, :token
    add_index :access_tokens, :refresh_token
  end
end
