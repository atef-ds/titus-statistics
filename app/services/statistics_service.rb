class StatisticsService
    def initialize 
      @expense_claimers = ExpenseClaimer.all
    end

    def call 
      expense_claimers.
       group_by_month(:expense_date).
       sum(:amount_cents).inject({}) do |h, (k,v)|
        h[k] = Money.new(v).to_f
        h
       end
    end

    private

    attr_accessor :expense_claimers
end
   

    