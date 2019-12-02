require 'rails_helper'

RSpec.describe Endereco, type: :model do
    context 'validações' do
        it { should validate_presence_of(:cep) }
        it { should belong_to(:cidade) }
    end
end