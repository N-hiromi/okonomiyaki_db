class Product < ApplicationRecord
  belongs_to :user, optional: true
  has_many :product_materials
  has_many :powders, through: :product_materials
  has_many :liquids, through: :product_materials
  has_many :seasonings, through: :product_materials
  has_many :other_materials, through: :product_materials
  has_one :product_technique
  has_one :cut, through: :product_technique
  has_one :bake, through: :product_technique
  has_one :other_technique, through: :product_technique
  has_many_attached :image, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :notifications, dependent: :destroy
  #validates :name, presence: true
  #validates :cost, presence: true

  def self.ransackable_attributes(auth_object = nil)
    %w[name cost]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
