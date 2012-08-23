Given /^I have no cheese$/ do
  puts "Here's some cheese."
end

When /^I press the make cheese button$/ do
  puts "I hope this gives me some cheese."
end

Then /^I should have (\d+) piece of cheese$/ do |num_pieces|
  puts "Oh boy, I have #{num_pieces} pieces of cheese!"
end