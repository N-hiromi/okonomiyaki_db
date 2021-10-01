# coding: utf-8
User.create!(
  [
    {
      email: 'test1',
      name: 'テスト1',
      department: '基盤技術開発部',
      section: '工法Gr'
    },
    {
      email: 'test2',
      name: 'テスト2',
      department: '基盤技術開発部',
      section: '材料開発室'
    }
  ]
)
User.all.each do |user|
  user.products.create(
    name: 'お好み焼き',
    price: '300',
    cost: '100',
    productTechnique_id: '1',
    productMaterial_id: '1',
    productPerformance_id: '1'
  )
  user.bake.create!(
    name: '軽く焼く',
    tool: 'フライパン',
    cost: '100',
    description: '簡単に焼ける',
    warning: '火傷するかも',
    temp: '100',
    time: '1'
  )
  user.cut.create!(
    name: 'みじん切り',
    tool: 'すごい包丁',
    cost: '30',
    descrption: '細かく切る',
    warning: '手を切らないように',
    width: '0.5',
    height: '0.5'
  )
  user.otherTechnique.create!(
    name: 'お湯で洗う',
    tool: 'やかん',
    cost: '10',
    description: '野菜がシャキシャキになる',
    warning: '火傷しないでね',
    time: '0.25'
  )
  user.powder.create!(
    name: '薄力粉',
    cost: '3',
    description: 'ケーキ作りに向いてる粒径が細かいサラサラな小麦粉。タンパク質は少ない。',
    warning: '吸い込むと危険',
    particle_size: '1',
    density: '1',
    ssa: '100'
  )
  user.liquid.create!(
    name: '牛乳',
    cost: '1',
    description: '10',
    warning: '滑ると危険',
    viscosity: '3',
    density: '1'
  )
  user.seasoning.create!(
    name: '塩',
    cost: '1',
    description: '必需品。入れすぎるとしょっぱい。',
    warning: 'とりすぎ注意'
  )
end