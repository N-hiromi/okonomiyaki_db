class Bake < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :technique_category, optional: true
  has_many :product_techniques
  has_many :products, through: :product_technique
  has_many_attached :image, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
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
