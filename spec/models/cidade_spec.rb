require 'rails_helper'

RSpec.describe Cidade, type: :model do
    context 'validação' do
        it { should validate_presence_of(:cidade) }
        it { should belong_to(:estado) }
    end
end