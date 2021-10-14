class Liquid < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :materialCategory, optional: true
  has_many :productMaterials
  has_many :products, through: :productMaterials
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
