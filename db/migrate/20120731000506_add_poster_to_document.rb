class AddPosterToDocument < ActiveRecord::Migration
  def change
    add_column :documents, :poster, :string
  end
end
