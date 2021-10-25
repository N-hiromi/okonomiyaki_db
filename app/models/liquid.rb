class Liquid < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :material_category, optional: true
  has_one_attached :image
  has_many :comments, as: :commentable, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :warning, presence: true

  def self.ransackable_attributes(auth_object = nil) # rubocop:disable Airbnb/OptArgParameters
    %w(name cost)
  end

  def self.ransackable_associations(auth_object = nil) # rubocop:disable Airbnb/OptArgParameters
    []
  end
end
