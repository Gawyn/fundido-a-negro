class RenameAuthorToCreatedBy < ActiveRecord::Migration
  def change
    rename_column :documents, :author_id, :created_by
  end
end
