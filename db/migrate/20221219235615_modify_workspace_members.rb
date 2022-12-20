class ModifyWorkspaceMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :workspace_members, :password_digest, :string
  end
end
