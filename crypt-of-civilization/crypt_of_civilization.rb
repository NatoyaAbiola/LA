crypt_of_civilization = []

crypt_of_civilization.push  ("Comptometer")
crypt_of_civilization.push ("Box of phonographic records")
crypt_of_civilization.push ("Plastic savings bank")
crypt_of_civilization.push ("Set of scales")
crypt_of_civilization.push ("Toast-O-Lator")
crypt_of_civilization.push ("Sample of aluminum foil")
crypt_of_civilization.push ("Donald Duck doll")


extra = ["Container of beer", "Lionel model train set", "Ingraham pocket watch"]

crypt_of_civilization = crypt_of_civilization + extra

crypt_of_civilization.length

crypt_of_civilization.first

crypt_of_civilization.last

crypt_of_civilization [1]

crypt_of_civilization [2]

crypt_of_civilization [-2]

crypt_of_civilization.index("Toast-O-Lator")

crypt_of_civilization.include?("Container of beer")

crypt_of_civilization.include?("Toast-O-Lator")

crypt_of_civilization.include?("Plastic bird")

crypt_of_civilization.sort_by { |item| item.length }

crypt_of_civilization.sort

crypt_of_civilization.sort.reverse


count = 0
while count < crypt_of_civilization.length
  puts crypt_of_civilization[count]
  count += 1
end

crypt_of_civilization.each do |item|
  puts item
end


crypt_of_civilization.shift
crypt_of_civilization.pop
crypt_of_civilization.delete("Set of scales")
crypt_of_civilization.delete("Sample of aluminum foil")
