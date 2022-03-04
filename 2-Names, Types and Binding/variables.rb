x = 10 # an integer
y = 10.0 # a float
z = 10 / 2.0 # result is a float
k = 10 + 2.0 # result is a float


x = x.to_f # convert x to a float
y = y.to_i # convert y to an integer
y = y.to_s # convert y to a string


num = "10"
num.to_i # convert to integer


string = "Hello"
string << " World!" # append to string, same object
string += " Strings in ruby are mutable" # create a new string object
puts string.object_id # prints the object id of the string object


hash = {
   "name" => "John",
   "age" => 30
}
hash["name"] = "Jane" # update hash


array = [1,2,3,4,5]
array[0] = "John" # update array, an array can have different data types


symbol = :string # symbol is immutable
symbol.to_s # convert to string
puts symbol.object_id # symbol is immutable, so object_id is the same

# puts "5" + 6 # error, can't add a string and an integer