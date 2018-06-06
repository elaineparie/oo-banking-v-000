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
x = sender.balance - @amount
y = receiver.balance + @amount
sender.balance = x
receiver.balance = y
transfer.status = "complete"
end
end

end
