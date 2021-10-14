class Product < ApplicationRecord
  belongs_to :user, optional: true
  has_many :productMaterials
  has_many :powders, through: :productMaterials
  has_many :liquids, through: :productMaterials
  has_many :seasonings, through: :productMaterials
  has_many :otherMaterials, through: :productMaterials
  has_many :productTechniques
  has_many :cuts, through: :productTechniques
  has_many :bakes, through: :productTechniques
  has_many :otherTechniques, through: :productTechniques
  has_many_attached :image
  has_many :comments, as: :commentable
  validates :name, presence: true
  validates :cost, presence: true

  def self.ransackable_attributes(auth_object = nil)
    %w[name cost]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
