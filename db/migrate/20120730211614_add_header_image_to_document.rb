class AddHeaderImageToDocument < ActiveRecord::Migration
  def change
    add_column :documents, :header_image, :string
  end
end
