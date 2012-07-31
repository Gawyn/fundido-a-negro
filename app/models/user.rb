class User < ActiveRecord::Base
  ROLES = %w{ editor admin superadmin }
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :role

  has_many :documents, :foreign_key => "author_id"
  has_many :articles, :foreign_key => "author_id"
  has_many :reviews, :foreign_key => "author_id"

  ROLES.each do |role|
    define_method "#{role_name}?" do
      role == role_name
    end
  end
end
