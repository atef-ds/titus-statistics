class ExpenseClaimerDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
   def expense_at
    object.expense_date ? object.expense_date.strftime("%a %d/%m//%y") : 'Not defined'
   end

   def approved_status
    object.approved ? 'Approved' : 'Not Approved'    
   end  
   
   def humanized_amount
    object.amount ? humanized_money_with_symbol(object.amount) : 'Not defined' 
   end

end
