class Seasoning < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :material_category, optional: true
  has_many :products
  has_one_attached :image
  has_many :comments, as: :commentable
  validates :name, presence: true
  validates :cost, presence: true
  validates :warning, presence: true
  def self.ransackable_attributes(auth_object = nil) # rubocop:disable Airbnb/OptArgParameters
    %w(name cost user_id)
  end

  def self.ransackable_associations(auth_object = nil) # rubocop:disable Airbnb/OptArgParameters
    []
  end
end
