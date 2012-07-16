class Document < ActiveRecord::Base
  attr_accessible :body, :title, :author

  belongs_to :author, :class_name => "User"
end
