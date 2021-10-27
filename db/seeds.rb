# coding: utf-8
User.create!(
  [
    {
      email: 'test1@com',
      name: 'テスト1',
      password: 'test1pass',
      department: '開発部',
    },
    {
      email: 'test2@com',
      name: 'テスト2',
      password: 'test2pass',
      department: '経理部',
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

product1 = user1.products.create!(
  name: 'お好み焼き1',
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
product2 = user1.products.create!(
  name: 'お好み焼き2',
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
product3 = user1.products.create!(
  name: 'お好み焼き3',
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
product4 = user1.products.create!(
  name: 'お好み焼き4',
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
product5 = user1.products.create!(
  name: 'お好み焼き5',
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
product1.image.attach(io: File.open(Rails.root.join('app/assets/images/okonomiyaki.png')),filename: 'okonomiyaki.png')
product2.image.attach(io: File.open(Rails.root.join('app/assets/images/okonomiyaki.png')),filename: 'okonomiyaki.png')
product3.image.attach(io: File.open(Rails.root.join('app/assets/images/okonomiyaki.png')),filename: 'okonomiyaki.png')
product4.image.attach(io: File.open(Rails.root.join('app/assets/images/okonomiyaki.png')),filename: 'okonomiyaki.png')
product5.image.attach(io: File.open(Rails.root.join('app/assets/images/okonomiyaki.png')),filename: 'okonomiyaki.png')
bake1 = user1.bakes.create!(
  name: '軽く焼く',
  tool: 'フライパン',
  cost: '100',
  description: '簡単に焼ける',
  warning: '火傷するかも',
  temp: '100',
  time: '1',
  technique_category_id: '1'
)
bake2 = user1.bakes.create!(
  name: '少し焼く',
  tool: 'フライパン',
  cost: '100',
  description: '簡単に焼ける',
  warning: '火傷するかも',
  temp: '100',
  time: '1',
  technique_category_id: '1'
)
bake3 = user1.bakes.create!(
  name: 'とても焼く',
  tool: 'フライパン',
  cost: '100',
  description: '簡単に焼ける',
  warning: '火傷するかも',
  temp: '100',
  time: '1',
  technique_category_id: '1'
)
bake4 = user1.bakes.create!(
  name: '炭化させる',
  tool: 'オーブン',
  cost: '100',
  description: '簡単に焼ける',
  warning: '火傷するかも',
  temp: '100',
  time: '1',
  technique_category_id: '1'
)
bake5 = user1.bakes.create!(
  name: 'それなりに焼く',
  tool: '焚き火',
  cost: '100',
  description: '簡単に焼ける',
  warning: '火傷するかも',
  temp: '100',
  time: '1',
  technique_category_id: '1'
)
bake1.image.attach(io: File.open(Rails.root.join('app/assets/images/flypan.png')),filename: 'flypan.png')
bake2.image.attach(io: File.open(Rails.root.join('app/assets/images/flypan.png')),filename: 'flypan.png')
bake3.image.attach(io: File.open(Rails.root.join('app/assets/images/flypan.png')),filename: 'flypan.png')
bake4.image.attach(io: File.open(Rails.root.join('app/assets/images/microwave-g392ff2b0f_640.png')),filename: 'microwave-g392ff2b0f_640.png')
bake5.image.attach(io: File.open(Rails.root.join('app/assets/images/campfire-g46241d070_640.png')),filename: 'campfire-g46241d070_640.png')
cut1 = user1.cuts.create!(
  name: 'みじん切り',
  tool: 'すごい包丁',
  cost: '30',
  description: '細かく切る',
  warning: '手を切らないように',
  width: '0.5',
  height: '0.5',
  technique_category_id: '2'
)
cut2 = user1.cuts.create!(
  name: '乱切り',
  tool: 'すごい包丁',
  cost: '30',
  description: '細かく切る',
  warning: '手を切らないように',
  width: '0.5',
  height: '0.5',
  technique_category_id: '2'
)
cut3 = user1.cuts.create!(
  name: '大きめに切る',
  tool: 'すごい包丁',
  cost: '30',
  description: '細かく切る',
  warning: '手を切らないように',
  width: '0.5',
  height: '0.5',
  technique_category_id: '2'
)
cut4 = user1.cuts.create!(
  name: 'すりつぶす',
  tool: 'すごい包丁',
  cost: '30',
  description: '細かく切る',
  warning: '手を切らないように',
  width: '0.5',
  height: '0.5',
  technique_category_id: '2'
)
cut5 = user1.cuts.create!(
  name: 'ジュースにする',
  tool: 'すごい包丁',
  cost: '30',
  description: '細かく切る',
  warning: '手を切らないように',
  width: '0.5',
  height: '0.5',
  technique_category_id: '2'
)
cut1.image.attach(io: File.open(Rails.root.join('app/assets/images/kitchen-knife-gd28c25100_640.png')),filename: 'kitchen-knife-gd28c25100_640.png')
cut2.image.attach(io: File.open(Rails.root.join('app/assets/images/kitchen-knife-gd28c25100_640.png')),filename: 'kitchen-knife-gd28c25100_640.png')
cut3.image.attach(io: File.open(Rails.root.join('app/assets/images/kitchen-knife-gd28c25100_640.png')),filename: 'kitchen-knife-gd28c25100_640.png')
cut4.image.attach(io: File.open(Rails.root.join('app/assets/images/kitchen-knife-gd28c25100_640.png')),filename: 'kitchen-knife-gd28c25100_640.png')
cut5.image.attach(io: File.open(Rails.root.join('app/assets/images/kitchen-knife-gd28c25100_640.png')),filename: 'kitchen-knife-gd28c25100_640.png')
user1.other_techniques.create!(
  name: 'お湯で洗う',
  tool: 'やかん',
  cost: '10',
  description: '野菜がシャキシャキになる',
  warning: '火傷しないでね',
  time: '0.25',
  technique_category_id: '3'
)
powder1 =user1.powders.create!(
  name: '薄力粉',
  cost: '3',
  description: 'ケーキ作りに向いてる粒径が細かいサラサラな小麦粉。タンパク質は少ない。',
  warning: '吸い込むと危険',
  particle_size: '1',
  density: '1',
  ssa: '100',
  material_category_id: '1'
)
powder2 = user1.powders.create!(
  name: '強力粉',
  cost: '3',
  description: 'パン作りに向いてる粒径が細かいサラサラな小麦粉。タンパク質は多い。',
  warning: '吸い込むと危険',
  particle_size: '1',
  density: '1',
  ssa: '100',
  material_category_id: '1'
)
powder3 = user1.powders.create!(
  name: '中力粉',
  cost: '3',
  description: 'フランスパン作りに向いてる粒径が細かいサラサラな小麦粉。',
  warning: '吸い込むと危険',
  particle_size: '1',
  density: '1',
  ssa: '100',
  material_category_id: '1'
)
powder4 = user1.powders.create!(
  name: '米粉',
  cost: '3',
  description: 'みんな大好き。米。',
  warning: '吸い込むと危険',
  particle_size: '1',
  density: '1',
  ssa: '100',
  material_category_id: '1'
)
powder5 = user1.powders.create!(
  name: 'すごい粉',
  cost: '3',
  description: 'ケーキ作りに向いてる粒径が細かいサラサラな小麦粉。タンパク質は少ない。',
  warning: '吸い込むと危険',
  particle_size: '1',
  density: '1',
  ssa: '100',
  material_category_id: '1'
)
powder1.image.attach(io: File.open(Rails.root.join('app/assets/images/wheat-flour-g5c0c238e4_640.png')),filename: 'wheat-flour-g5c0c238e4_640.png')
powder2.image.attach(io: File.open(Rails.root.join('app/assets/images/wheat-flour-g5c0c238e4_640.png')),filename: 'wheat-flour-g5c0c238e4_640.png')
powder3.image.attach(io: File.open(Rails.root.join('app/assets/images/wheat-flour-g5c0c238e4_640.png')),filename: 'wheat-flour-g5c0c238e4_640.png')
powder4.image.attach(io: File.open(Rails.root.join('app/assets/images/wheat-flour-g5c0c238e4_640.png')),filename: 'wheat-flour-g5c0c238e4_640.png')
powder5.image.attach(io: File.open(Rails.root.join('app/assets/images/wheat-flour-g5c0c238e4_640.png')),filename: 'wheat-flour-g5c0c238e4_640.png')
liquid1 = user1.liquids.create!(
  name: '牛乳',
  cost: '1',
  description: '10',
  warning: '滑ると危険',
  viscosity: '3',
  density: '1',
  material_category_id: '2'
)
liquid2 = user1.liquids.create!(
  name: '水牛乳',
  cost: '1',
  description: '10',
  warning: '滑ると危険',
  viscosity: '3',
  density: '1',
  material_category_id: '2'
)
liquid3 = user1.liquids.create!(
  name: '良い牛乳',
  cost: '1',
  description: '10',
  warning: '滑ると危険',
  viscosity: '3',
  density: '1',
  material_category_id: '2'
)
liquid4 = user1.liquids.create!(
  name: 'それなり牛乳',
  cost: '1',
  description: '10',
  warning: '滑ると危険',
  viscosity: '3',
  density: '1',
  material_category_id: '2'
)
liquid5 = user1.liquids.create!(
  name: '高級牛乳',
  cost: '1000',
  description: '10',
  warning: '滑ると危険',
  viscosity: '3',
  density: '1',
  material_category_id: '2'
)
liquid1.image.attach(io: File.open(Rails.root.join('app/assets/images/carton-gf9e40a698_640.png')),filename: 'carton-gf9e40a698_640.png')
liquid2.image.attach(io: File.open(Rails.root.join('app/assets/images/carton-gf9e40a698_640.png')),filename: 'carton-gf9e40a698_640.png')
liquid3.image.attach(io: File.open(Rails.root.join('app/assets/images/carton-gf9e40a698_640.png')),filename: 'carton-gf9e40a698_640.png')
liquid4.image.attach(io: File.open(Rails.root.join('app/assets/images/carton-gf9e40a698_640.png')),filename: 'carton-gf9e40a698_640.png')
liquid5.image.attach(io: File.open(Rails.root.join('app/assets/images/carton-gf9e40a698_640.png')),filename: 'carton-gf9e40a698_640.png')
seasoning1 = user1.seasonings.create!(
  name: '塩',
  cost: '1',
  description: '必需品。入れすぎるとしょっぱい。',
  warning: 'とりすぎ注意',
  material_category_id: '3'
)
seasoning2 = user1.seasonings.create!(
  name: 'こしょう',
  cost: '1',
  description: '必需品。入れすぎるとしょっぱい。',
  warning: 'とりすぎ注意',
  material_category_id: '3'
)
seasoning3 = user1.seasonings.create!(
  name: 'すごい塩',
  cost: '1',
  description: '必需品。入れすぎるとしょっぱい。',
  warning: 'とりすぎ注意',
  material_category_id: '3'
)
seasoning4 = user1.seasonings.create!(
  name: '海塩',
  cost: '1',
  description: '必需品。入れすぎるとしょっぱい。',
  warning: 'とりすぎ注意',
  material_category_id: '3'
)
seasoning5 = user1.seasonings.create!(
  name: '岩塩',
  cost: '1',
  description: '必需品。入れすぎるとしょっぱい。',
  warning: 'とりすぎ注意',
  material_category_id: '3'
)
seasoning1.image.attach(io: File.open(Rails.root.join('app/assets/images/salt-g930f9d27d_640.png')),filename: 'salt-g930f9d27d_640.pn')
seasoning2.image.attach(io: File.open(Rails.root.join('app/assets/images/salt-g930f9d27d_640.png')),filename: 'salt-g930f9d27d_640.png')
seasoning3.image.attach(io: File.open(Rails.root.join('app/assets/images/salt-g930f9d27d_640.png')),filename: 'salt-g930f9d27d_640.png')
seasoning4.image.attach(io: File.open(Rails.root.join('app/assets/images/salt-g930f9d27d_640.png')),filename: 'salt-g930f9d27d_640.png')
seasoning5.image.attach(io: File.open(Rails.root.join('app/assets/images/salt-g930f9d27d_640.png')),filename: 'salt-g930f9d27d_640.png')
other_material1 = user1.other_materials.create!(
  name: 'キャベツ',
  cost: '5',
  description: '野菜の一種。シャキシャキ。',
  warning: '重量物注意',
  material_category_id: '4'
)
other_material2 = user1.other_materials.create!(
  name: 'レタス',
  cost: '5',
  description: '野菜の一種。シャキシャキ。',
  warning: '重量物注意',
  material_category_id: '4'
)
other_material3 = user1.other_materials.create!(
  name: 'えび',
  cost: '5',
  description: '野菜の一種。シャキシャキ。',
  warning: '重量物注意',
  material_category_id: '4'
)
other_material4 = user1.other_materials.create!(
  name: 'ホタテ',
  cost: '5',
  description: '野菜の一種。シャキシャキ。',
  warning: '重量物注意',
  material_category_id: '4'
)
other_material5 = user1.other_materials.create!(
  name: '貝殻',
  cost: '5',
  description: '野菜の一種。シャキシャキ。',
  warning: '重量物注意',
  material_category_id: '4'
)
other_material1.image.attach(io: File.open(Rails.root.join('app/assets/images/27439.png')),filename: '27439.png')
other_material2.image.attach(io: File.open(Rails.root.join('app/assets/images/27439.png')),filename: '27439.png')
other_material3.image.attach(io: File.open(Rails.root.join('app/assets/images/hand-drawing-g758b5cc31_640.png')),filename: 'hand-drawing-g758b5cc31_640.png')
other_material4.image.attach(io: File.open(Rails.root.join('app/assets/images/shell-gde753ac9b_640.png')),filename: 'shell-gde753ac9b_640.png')
other_material5.image.attach(io: File.open(Rails.root.join('app/assets/images/shell-gde753ac9b_640.png')),filename: 'shell-gde753ac9b_640.png')
user1.image.attach(io: File.open(Rails.root.join('app/assets/images/hato.png')),filename: 'hato.png')
product1.image.attach(io: File.open(Rails.root.join('app/assets/images/27439.png')),filename: '27439.png')
bake1 = Bake.find(1)
bake1.comments.create!(
  user_id: '1',
  comment: 'もっと温度上げられませんか?'
)