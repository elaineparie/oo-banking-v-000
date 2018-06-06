class Transfer

attr_accessor :status, :amount, :sender, :receiver

def initialize(sender, receiver, amount)
  @status = "pending"
  @amount = amount
  @sender = sender
  @receiver = receiver
end

def valid?
  @sender.valid? && @receiver.valid?
end

def execute_transaction
  if !valid?
    "Transaction rejected. Please check your account balance."
  else
sender.balance = sender.balance - @amount
receiver.balance = receiver.balance + @amount
#sender.balance = x
#receiver.balance = y
@status = "complete"
end
end

end
