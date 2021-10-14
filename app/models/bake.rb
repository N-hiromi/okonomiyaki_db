class Bake < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :techniqueCategory, optional: true
  has_many :productTechniques
  has_many :products, through: :productTechniques
  has_many_attached :image
  has_many :comments, as: :commentable
  has_many :products
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
