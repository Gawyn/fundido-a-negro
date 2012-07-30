class CreatedByIdNotCreatedBy < ActiveRecord::Migration
  def change
    rename_column :documents, :created_by, :created_by_id
  end
end
