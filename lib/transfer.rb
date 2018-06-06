class Transfer

attr_accessor :status, :amount, :sender, :receiver

def initialize(sender, receiver, amount)
  @status = "pending"
  @amount = amount
  @sender = sender
  @receiver = receiver
end

def valid?
  
end



end
