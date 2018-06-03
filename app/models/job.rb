class Job < ApplicationRecord
	  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  JOB_TYPES = ["Music", "Art", "Dancer", "Photography"]
end
