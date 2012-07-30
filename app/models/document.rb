class Document < ActiveRecord::Base
  TYPES = %w{ Article Review }
  STATUS = %w{ cabecera portada }

  attr_accessible :body, :title, :created_by,
    :status, :author

  belongs_to :created_by, :class_name => "User"

  validates_inclusion_of :type, :in => TYPES
  validates_inclusion_of :status, :in => STATUS, :allow_blank => true

  mount_uploader :header_image, HeaderImageUploader

  def formatted_body
    RedCloth.new(body).to_html
  end
end
