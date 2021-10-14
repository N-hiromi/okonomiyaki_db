class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
  has_many :powders
  has_many :liquids
  has_many :otherMaterials
  has_many :seasonings
  has_many :bakes
  has_many :cuts
  has_many :otherTechniques
  has_many :discusses
  has_many :comments
  has_one_attached :image
  def self.ransackable_attributes(auth_object = nil)
    %w[name department]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
