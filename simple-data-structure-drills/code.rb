transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
transactions [0]
# * What is the value of the second transaction?
transactions [1]
# * What is the value of the fourth transaction?
transactions [3]
# * What is the value of the last transaction?
transactions [-1]
# * What is the value of the second from last transaction?
transactions [-2]
# * What is the value of the 5th from last transaction?
transactions [-5]
# * What is the value of the transaction with index 5?
transactions [4]
# * How many transactions are there in total?
transactions.length
# * How many positive transactions are there in total?
transactions.each_with_index.max

# * How many negative transactions are there in total?
transactions.each_with_index.min
# * What is the largest withdrawal?
# * What is the largest deposit?
# * What is the small withdrawal?


* What is the smallest deposit?
* What is the total value of all the transactions?
* If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

 * How many records are in `best_records`?
best_records.length
 * Who are all the artists listed?
best_records.each_key {|key| puts key }
 * What are all the album names in the hash?
best_records.each_value {|value| puts value }
 * Delete the `Eminem` key-value pair from the list.
best_records.delete("Eminem")
 * Add your favorite musician and their best album to the list.
best_records["Daft Punk"] = "Random Access Memories"

# * Change `Nirvana`'s album to another.
best_records["Nirvana"] = "Bleach"
# * Is `Nirvana` included in `best_records`?
best_records.include? ("Nirvana")
# * Is `Soundgarden` included in `best_records`?
best_records.include? ("Soundgarden")
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
best_records["Soundgarden"] = "Louder than Love"
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
# key_bigger_than_six = best_records.has_key? <= 6
# puts key_bigger_than_six
#
# key_bigger_than_six = best_records.all? do |key|
#   key.size <= 6
# end

best_records.each_key {|key <=| puts key }
# * Which key-value pairs have a value that is greater than 10 characters?
