class Form::ProductMaterialCollection < Form::Base
  FORM_COUNT = 10 #ここで、作成したい登録フォームの数を指定
  attr_accessor :productMaterials 

  def initialize(attributes = {})
    super attributes
    self.product_materials = FORM_COUNT.times.map { ProductMaterial.new() } unless self.product_materials.present?
  end

  def product_materials_attributes=(attributes)
    self.product_materials = attributes.map { |_, v| ProductMaterials.new(v) }
  end

  def save
    ProductMaterial.transaction do
      self.product_materials.map do |product_material|
        if product_material.availability # ここでチェックボックスにチェックを入れている商品のみが保存される
          product_material.save
        end
      end
    end
      return true
    rescue => e
      return false
  end
end
