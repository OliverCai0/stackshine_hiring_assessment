class AddSlugToWorkspaces < ActiveRecord::Migration[7.0]
  def change
    add_column :workspaces, :slug, :string
    add_index :workspaces, :slug, unique: true
  end
end
