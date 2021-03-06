require 'rails_helper'

RSpec.describe GrupoProduto, type: :model do
    context 'validação do grupo do produto' do
        it { should validate_presence_of(:nome) }
        it { should validate_uniqueness_of(:nome) }

    end
    
end