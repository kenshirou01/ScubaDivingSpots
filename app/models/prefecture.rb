class Prefecture < ApplicationRecord
  has_many :spots

  # バリデーションの追加
  validates :name, presence: true
end
