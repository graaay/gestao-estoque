class Cidade < ApplicationRecord
  belongs_to :estado

  validates :cidade, presence: true
end
