class Produto < ApplicationRecord
  belongs_to :unidade
  belongs_to :grupo_produto
end
