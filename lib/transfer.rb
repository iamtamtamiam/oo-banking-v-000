class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount, :bank_account
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  
  def valid?
    if sender.valid? == true && receiver.valid? == true
      true
    else 
      false 
    end 
  end 
  
  def execute_transaction(sender, receiver)
    if valid? == true
      sender.balance = sender.balance - @amount 
      receiver.balance = receiver.balance + @amount
      @status = "complete"
    else 
      puts "Transaction rejected. Please check your account balance."
    end 
  end 
end

