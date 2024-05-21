class IndexToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_index :users, :confirmation_token
    add_index :users, :confirmation_token
    add_index :users, %i(email discarded_at company_id uid), unique: true
    remove_index :users, :email
    add_index :users, :email
    add_index :users, :employee_uid, unique: true
    add_index :users, %i(phone discarded_at company_id uid), unique: true
    add_index :users, %i(uid provider discarded_at), unique: true
  end
end
