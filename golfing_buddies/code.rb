golf_contacts = {
  jim: 'workerBee@example.com',
  samantha: 'golfCartRacer@example.com',
  jane: 'pro_golfer89@example.com',
  mike: 'alwaysAtTheBeach@example.com',
  olivia: 'didYouSeeWhereThatWent@example.com',
  joan: 'bestShortGameEver@example.com'
}

to_contact = [:samantha, :jane, :olivia]

emails = []
to_contact.each do |name|
  emails << golf_contacts[name]
end

puts emails.join(",")

golf_contacts.each do |name, email|
  puts "#{name} has an email of #{email}"
end
