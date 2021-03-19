class ChangeFieldTypesForUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :public_activity, :boolean, :default => false
    change_column :users, :email_on_comment, :boolean, :default => true
    change_column :users, :email_on_comment_reply, :boolean, :default => true
  end
end
