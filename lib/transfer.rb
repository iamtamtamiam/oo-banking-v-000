class Transfer
  
  attr_accessor :sender, :reciever, :status, :amount
  
  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @status = "pending"
    @amount = amount
  end 
end
