class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, status="pending",amount)
    @sender =sender 
    @receiver =receiver
  end
end
