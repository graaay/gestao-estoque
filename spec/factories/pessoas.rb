FactoryBot.define do
    factory :pessoa do
        nome { 'Douglas' }
        documento { '36560003876' }

        association :endereco, factory: :endereco
    end
    
end