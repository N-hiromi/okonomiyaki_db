class Powder < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :material_category, optional: true
  has_many :product_materials
  has_many :products
  has_one_attached :image, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
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
