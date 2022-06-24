class RenameUserColumnToPostImages < ActiveRecord::Migration[6.1]
  def change
    rename_column :post_images, :user_, :user_id
  end
end
