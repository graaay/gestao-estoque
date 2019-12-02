require 'rails_helper'

RSpec.describe Operacao, type: :model do
  context 'validação operação' do
    it { should validate_presence_of(:descricao) }
    it { should validate_presence_of(:tipo) }
  end
end