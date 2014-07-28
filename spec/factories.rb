FactoryGirl.define do

  factory :analysis do
    description 'analise do rio meia ponte'
    name 'Analise do Rio meia ponte'
  end

  factory :onion_group do
    name 'Grupo analise 100%'
    analysis factory: :analysis
  end

  factory :onion do
    name 'Cebola 1'
    description 'participa da analise 40%'
    onion_group factory: :onion_group
  end

end
