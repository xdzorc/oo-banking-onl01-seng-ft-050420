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
  end
  
  def execute_transaction
  end
  
  def 

end
