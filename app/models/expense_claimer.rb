class ExpenseClaimer < ApplicationRecord
    monetize :amount_cents
    CLAIMERS = ['Atef Dridi', 'Gaeten', 'Marius Andre']
end
