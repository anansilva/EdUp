class Publisher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include DeviseInvitable::Inviter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :courses
  has_many :invitations, :class_name => 'Student', :as => :invited_by

  acts_as_token_authenticatable
end
