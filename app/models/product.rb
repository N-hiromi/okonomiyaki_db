class Product < ApplicationRecord
  belongs_to :user, optional: true
  has_one :powder
  has_one :liquid
  has_one :seasoning
  has_one :other_material
  has_one :cut
  has_one :bake
  has_one :other_technique
  has_one_attached :image, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :bake_id, presence: true
  validates :cut_id, presence: true
  validates :other_technique_id, presence: true
  validates :powder_id, presence: true
  validates :liquid_id, presence: true
  validates :seasoning_id, presence: true
  validates :other_material_id, presence: true

  def self.ransackable_attributes(auth_object = nil) # rubocop:disable Airbnb/OptArgParameters
    %w(name cost user_id powder_id liquid_id seasoning_id other_material_id bake_id cut_id other_technique_id)
  end

  def self.ransackable_associations(auth_object = nil) # rubocop:disable Airbnb/OptArgParameters
    []
  end
end
