class Spot < ApplicationRecord
  belongs_to :prefecture
  validates :name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 500 }
  validate :image_format
  mount_uploader :image, ImageUploader

  private

  def image_format
    return if image.blank?
      acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(image.content_type)
      errors.add(:image, "must be a JPEG or PNG")
    end
  end
end
