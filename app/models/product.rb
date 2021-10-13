class Product < ApplicationRecord
  belongs_to :user
  has_many :productMaterials
  has_many :productTechniques
  has_many :productPerformances
  has_one_attached :image
  has_many :comments, as: :commentable
  validates :name, presence: true
  validates :cost, presence: true
  validates :warning, presence: true

  def self.ransackable_attributes(auth_object = nil)
    %w[name cost]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
