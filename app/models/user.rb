class User < ActiveRecord::Base
  ROLES = %w{ editor admin }
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :role
end
