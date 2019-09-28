class ChangeColumnName < ActiveRecord::Migration[6.0]
  def up
    rename_column :categories, :sub_category, :parent
  end
  def down
    rename_column :categories, :parent, :sub_category
  end
end
