class Report < ActiveRecord::Base
  attr_accessible :avatar, :content, :username

  mount_uploader :avatar, ReportAvatarUploader
end
