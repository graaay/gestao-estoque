require 'rails_helper'

RSpec.describe MovimentoEstoque, type: :model do

  context 'validação de movimentacao de estoque' do
    it { should belong_to(:pessoa) }
    it { should belong_to(:operacao) }
    it { should belong_to(:produto) }

    it { should validate_presence_of(:data) }
    it { should validate_presence_of(:quantidade) }

  end
  
end