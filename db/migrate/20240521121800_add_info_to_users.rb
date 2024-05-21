class AddInfoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :employee_uid, :string, null: true
    add_column :users, :phone, :string, null: true
    add_column :users, :company_id, :integer, null: true
    add_column :users, :discarded_at, :datetime, null: true

    remove_index :users, %i(reset_password_token)
    remove_index :users, %i(uid provider)
  end
end
