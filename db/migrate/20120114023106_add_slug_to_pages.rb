class AddSlugToPages < ActiveRecord::Migration
  def up
    add_column :static_pages, :slug, :string
  end
  def down
    remove_column :static_pages, :slug
  end
end
