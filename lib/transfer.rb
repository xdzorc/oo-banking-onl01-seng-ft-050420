class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, status="pending",amount)
    @sender =sender 
    @receiver =receiver
    @status =status
    @amount =amount
  end
  
  def valid? 
     @sender.valid? && @receiver.valid? ? true : false
  end
  
  def execute_transaction
    if self.valid? && @sender.balance>=@amount &&@status =="pending"
      @sender.balance -=@amount
      @receiver.balance +=@amount
      @status ="complete"
    elsif @sender.balance < @amount
      @status ="rejected"
      # "Transaction rejected. Please check your account balance."
    else
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
  end

end
