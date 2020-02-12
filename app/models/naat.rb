class Naat < ApplicationRecord




	enum status: [:draft, :published]
	has_many :naatlyrics, inverse_of: :naat
  	accepts_nested_attributes_for :naatlyrics, reject_if: :all_blank, allow_destroy: true


  	has_many :comments, as: :commentable
  	
  	mount_uploader :photo, AvatarUploader
  	 include PgSearch

  	pg_search_scope :search_by_full_name,
			against: [:title, :writername],
			using: {
				tsearch: {
			 		prefix: true,
			 		normalization: 2
				}
			}


end