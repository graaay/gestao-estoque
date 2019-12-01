class Endereco < ApplicationRecord
  belongs_to :cidade


  validates :cep, presence: true
end
