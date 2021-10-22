# coding: utf-8
User.create!(
  [
    {
      email: 'test1email@com',
      name: 'テスト1',
      password: 'test1pass',
      department: '経理部',
    },
    {
      email: 'test2email@com',
      name: 'テスト2',
      password: 'test2pass',
      department: '開発部',
    }
  ]
)
user1= User.find(1)
MaterialCategory.create!(
  [
    {name: '粉末'},{name: '液体'},{name: '調味料'},{name: 'それ以外'}
  ]
)
TechniqueCategory.create!(
  [
    {name: '加熱'},{name: '切り方'},{name: 'それ以外'}
  ]
)

user1.products.create!(
  name: 'お好み焼き',
  price: '300',
  cost: '100',
  smell: '30',
  taste: '80',
  juicy: '60',
  app: '70',
  cut_id: '1',
  bake_id: '1',
  powder_id: '1',
  liquid_id: '1',
  other_technique_id: '1',
  seasoning_id: '1',
  other_material_id: '1',
  powder_weight: '1',
  liquid_weight: '1',
  seasoning_weight: '1',
  other_material_weight: '1'
)
user1.bakes.create!(
  name: '軽く焼く',
  tool: 'フライパン',
  cost: '100',
  description: '簡単に焼ける',
  warning: '火傷するかも',
  temp: '100',
  time: '1',
  technique_category_id: '1'
)
user1.cuts.create!(
  name: 'みじん切り',
  tool: 'すごい包丁',
  cost: '30',
  description: '細かく切る',
  warning: '手を切らないように',
  width: '0.5',
  height: '0.5',
  technique_category_id: '2'
)
user1.other_techniques.create!(
  name: 'お湯で洗う',
  tool: 'やかん',
  cost: '10',
  description: '野菜がシャキシャキになる',
  warning: '火傷しないでね',
  time: '0.25',
  technique_category_id: '3'
)
user1.powders.create!(
  name: '薄力粉',
  cost: '3',
  description: 'ケーキ作りに向いてる粒径が細かいサラサラな小麦粉。タンパク質は少ない。',
  warning: '吸い込むと危険',
  particle_size: '1',
  density: '1',
  ssa: '100',
  material_category_id: '1'
)
user1.liquids.create!(
  name: '牛乳',
  cost: '1',
  description: '10',
  warning: '滑ると危険',
  viscosity: '3',
  density: '1',
  material_category_id: '2'
)
user1.seasonings.create!(
  name: '塩',
  cost: '1',
  description: '必需品。入れすぎるとしょっぱい。',
  warning: 'とりすぎ注意',
  material_category_id: '3'
)
user1.other_materials.create!(
  name: 'キャベツ',
  cost: '5',
  description: '野菜の一種。シャキシャキ。',
  warning: '重量物注意',
  material_category_id: '4'
)
user1.image.attach(io: File.open(Rails.root.join('app/assets/images/27439.png')),filename: '27439.png')
Product.find(1).image.attach(io: File.open(Rails.root.join('app/assets/images/27439.png')),filename: '27439.png')
bake1 = Bake.find(1)
bake1.comments.create!(
  user_id: '1',
  comment: 'もっと温度上げられませんか?'
)