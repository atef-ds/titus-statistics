class CreateExpenseClaimers < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_claimers do |t|
      t.date :expense_date
      t.string :claimer_name
      t.text :description
      t.boolean :approved
      t.integer :amount_cents

      t.timestamps
    end
  end
end
