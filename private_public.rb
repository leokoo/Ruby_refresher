class BankAccount

  attr_reader :customer_name, :type, :acct_number
  attr_writer :address

  #reader ----> only allow program to read the value of the instance variable. ie. when we call my_acct.name => "Junipero".
  #writer ----> only allow program to write a new value for instance variable.. but wont allow to p it out
  # accessor ----> allow program to write a new value and p out the new value
  def initialize(customer_name, type, acct_number, address) #three instance variables: @customer_name, @type, and @acct_number.
    @customer_name = customer_name
    @type = type
    @acct_number = acct_number
    @address = address
  end

  def to_s
    mask_acct_number = @acct_number.gsub(/[^\d]/, "")

    masked_acct_number = mask_acct_number.split(//).last(4).join

    "#{customer_name}: Checking# ***** #{masked_acct_number}"
# => "Junipero Serra: Checking# ***** 3239"
  end
end

my_acct = BankAccount.new("Junipero Serra", "Checking", "347-923-239", "PJ")

# p my_acct.customer_name
# p my_acct.type
# p my_acct.acct_number

# p my_acct.address #(if reader => "PJ": if write ==> error)
my_acct.address = "Subang Jaya"
 
#(if writer ==> error....cos writer don't allow to p the new "Subang Jaya" value)
# p my_acct.address = "Subang Jaya" (if accessor ==> "Subang Jaya"...accessor allow to write in new value & p out new value)
# p my_acct.address = "Subang USJ"
# p my_acct.address

# my_acct.to_s

puts "My account information is #{my_acct}"