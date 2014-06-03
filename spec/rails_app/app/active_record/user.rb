class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation, :authentications_attributes

  belongs_to :invited_by, class_name: 'User'

  has_many :authentications, :dependent => :destroy
  has_many :user_providers, :dependent => :destroy
  accepts_nested_attributes_for :authentications
end
