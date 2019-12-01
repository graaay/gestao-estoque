class CreateMovimentoEstoques < ActiveRecord::Migration[5.2]
  def change
    create_table :movimento_estoques do |t|
      t.date :data
      t.integer :quantidade
      t.belongs_to :pessoa, foreign_key: true
      t.belongs_to :operacao, foreign_key: true
      t.belongs_to :produto, foreign_key: true

      t.timestamps
    end
  end
end
