class Image < ActiveRecord::Base
  belongs_to :prototype
  enum status: [:main, :sub]

  mount_uploader :avatar, AvatarUploader

end
