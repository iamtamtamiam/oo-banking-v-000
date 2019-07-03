class BankAccount
  attr_accesor :name 

  def initialize(name)
    @name = name 
    @balance = 1000.i 
    @status = "open" 
  end 
  
  
end
