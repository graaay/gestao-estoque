FactoryBot.define do
    factory :endereco do
      rua { 'Rua fermino meredick' }
      cep { '85601118' }
      numero { '63' }

      association :cidade, factory: :cidade
      association :estado, factory: :estado
      
    end
  end