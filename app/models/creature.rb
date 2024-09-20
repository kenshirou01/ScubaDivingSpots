class Creature < ApplicationRecord
  has_and_belongs_to_many :spots

  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :periods, presence: true, length: { maximum: 200 }
  validate :photo_format

  mount_uploader :photo, PhotoUploader

  private

  def photo_format
    return if photo.blank?
    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(photo.content_type)
      errors.add(:photo, "must be a JPEG or PNG")
    end
  end
end
