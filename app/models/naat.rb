class Naat < ApplicationRecord
	enum status: [:draft, :published]
	has_many :naatlyrics, inverse_of: :naat
  	accepts_nested_attributes_for :naatlyrics, reject_if: :all_blank, allow_destroy: true
  	mount_uploader :photo, AvatarUploader


end