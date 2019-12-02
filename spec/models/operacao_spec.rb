require 'rails_helper'

RSpec.describe Operacao, type: :model do
  context 'validação operação' do
    it { should validate_presence_of(:descricao) }
    it { should validate_presence_of(:tipo) }
    it { is_expected.to allow_values('venda', 'compra', 'dev_venda', 'dev_compra').for(:tipo) }
    it { should define_enum_for(:tipo) }
  end
end