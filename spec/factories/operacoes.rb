FactoryBot.define do
    factory :operacao_compra, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :venda }
    end

    factory :operacao_venda, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :compra }
    end

    factory :operacao_devolucao_venda, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :dev_venda }
    end

    factory :operacao_devolucao_compra, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :dev_compra }
    end
end