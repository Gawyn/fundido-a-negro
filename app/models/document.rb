class Document < ActiveRecord::Base
  TYPES = %w{ Article Review }

  attr_accessible :body, :title, :author

  belongs_to :author, :class_name => "User"

  validates_inclusion_of :type, :in => TYPES
end
