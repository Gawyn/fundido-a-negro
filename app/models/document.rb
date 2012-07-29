class Document < ActiveRecord::Base
  TYPES = %w{ Article Review }
  STATUS = %w{ cabecera portada }

  attr_accessible :body, :title, :author,
    :status

  belongs_to :author, :class_name => "User"

  validates_inclusion_of :type, :in => TYPES
  validates_inclusion_of :status, :in => STATUS, :allow_blank => true

  def formatted_body
    RedCloth.new(body).to_html
  end
end
