class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :shots, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :jobs
  acts_as_voter
end
