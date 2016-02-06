require 'pry'

class Account
  attr_accessor :name, :address, :email, :notes

  def assign_values(values)
    values.each_key do |k|
      self.send("#{k}=", values[k])
    end
  end
end

user_info = {
  name: "Erik",
  address: "321 random",
  email: "dooper",
  notes: "bar"
}

account = Account.new
account.assign_values(user_info)

# account.name = user_info[:name]
# account.address = user_info[:address]
# account.email = user_info[:email]
# account.notes = user_info[:notes]

puts account.inspect
