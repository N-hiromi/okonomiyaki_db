class Discuss < ApplicationRecord
  belongs_to :user, optional: true
  has_many_attached :images, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  validates :title, presence: true
  validates :text, presence: true
end
