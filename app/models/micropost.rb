class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  mount_uploader :picture, PictureUploader
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  validate :picture_size

private

 # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

end