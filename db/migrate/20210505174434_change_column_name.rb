class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :collections, :name, :title
  end
end
