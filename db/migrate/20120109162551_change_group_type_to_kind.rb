class ChangeGroupTypeToKind < ActiveRecord::Migration
  def up
    rename_column :groups, :type, :kind
  end

  def down
    rename_column :groups, :kind, :type
  end
end
