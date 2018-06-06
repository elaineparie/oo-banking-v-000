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
  if valid?
sender.balance ||= sender.balance - @amount
receiver.balance ||= receiver.balance + @amount
@status = "complete"
else
  puts "Transaction rejected. Please check your account balance."
end
end

end
