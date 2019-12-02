class MovimentoEstoque < ApplicationRecord
  belongs_to :pessoa

  belongs_to :operacao
  
  belongs_to :produto

  validates :data, :quantidade, presence: true

  scope :operacao, lambda { |produto, data, operacao|
    where('produto = ? and data <= ? and operacao_id = ?', produto, data, operacao).sum(:quantidade)
  }

end
