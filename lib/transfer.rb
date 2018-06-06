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
binding.pry
def execute_transaction
  x = transfer.amount
  binding.pry
  receiver.balance - x
end

end
