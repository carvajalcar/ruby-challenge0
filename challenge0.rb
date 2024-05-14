# Author: Carlos Carvajal

# Variable

# Constants 
GST_RATE = 0.05
PST_RATE = 0.07

# Ask user for the subtotal and convert it to a float
print "Enter the subtotal: $"
sub_total = gets.chomp.to_f

# Calculate taxes
gst = sub_total * GST_RATE
pst = sub_total * PST_RATE

# Calculate  total
grand_total = sub_total + gst + pst

# Output
puts "Subtotal: $#{sub_total}"
puts "PST: $#{pst} - #{(PST_RATE * 100).to_i}%"
puts "GST: $#{gst} - #{(GST_RATE * 100).to_i}%"
puts "Grand Total: $#{grand_total}"

# Message according to total
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total > 5.00 && grand_total < 20
  puts "Wallet Time"
else
  puts "Charge It!"
end


