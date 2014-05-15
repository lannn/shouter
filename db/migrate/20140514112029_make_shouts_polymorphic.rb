class MakeShoutsPolymorphic < ActiveRecord::Migration
  def up
    remove_column :shouts, :body
    add_column :shouts, :content_type, :string
    add_column :shouts, :content_id, :integer
    add_index :shouts, [:content_id, :content_type]
  end

  def down
    remove_index :shouts, [:content_type, :content_id]
    remove_column :shouts, :content_id
    remove_column :shouts, :content_type
    add_column :shouts, :body, :string
  end
end
