class SaldoEstoqueService

    def self.compra(movimento)
        new(movimento).compra
    end

    def self.venda(movimento)
        new(movimento).venda
    end

    def self.devolucao_compra(movimento)
        new(movimento).devolucao_compra
    end

    def self.devolucao_venda(movimento)
        new(movimento).devolucao_venda
    end

    def initialize(movimento)
        @data = movimento.data
        @quantidade = movimento.quantidade
        @pessoa = movimento.pessoa
        @operacao = movimento.operacao
        @produto = movimento.produto
    end

    def compra
        self.cria_movimento
    end

    def venda
        estoque = Movimento.por_operacao(@produto, Date.today, 2) +
                  Movimento.por_operacao(@produto, Date.today, 3) - 
                  Movimento.por_operacao(@produto, Date.today, 1) - 
                  Movimento.por_operacao(@produto, Date.today, 4)

        self.processa_quantidade(estoque)
    end


    def devolucao_compra
        estoque = Movimento.por_operacao(@produto, Date.today, 2) 

        self.processa_quantidade(estoque)
    end

    def devolucao_venda
        estoque = Movimento.por_operacao(@produto, Date.today, 1) 

        self.processa_quantidade(estoque)
    end


    def cria_movimento
        Movimento.create(pessoa: @pessoa,
                         operacao: @operacao,
                         data: @data,
                         quantidade: @quantidade,
                         produto: @produto)
    end

    def processa_quantidade(estoque)
        estoque = 50
        if estoque >= @quantidade
            self.cria_movimento
        else
            raise StandardError, 'Quantidade maior do que o estoque'
        end
    end
end