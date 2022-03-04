x = 10 # an integer
y = 10.0 # a float
z = 10 / 2.0 # result is a float
k = 10 + 2.0 # result is a float


x = x.to_f # convert x to a float
y = y.to_i # convert y to an integer
y = y.to_s # convert y to a string


num = "10"
num.to_i # convert to integer


string1 = "Hello"
string2 = "Hello"
puts string1.object_id == string2.object_id # true because strings are mutable

string1 << " World!" # append to string, same object
string1 += " Strings in ruby are mutable" # create a new string object


hash = {
   "name" => "John",
   "age" => 30
}
hash["name"] = "Jane" # update hash


array = [1,2,3,4,5]
array[0] = "John" # update array, an array can have different data types


symbol1 = :hello # symbol is immutable
symbol2 = :hello
puts symbol1.object_id == symbol2.object_id # true because symbols are immutable

symbol1.to_s # convert to string
symbol1.to_sym # convert to symbol

# puts "5" + 6 # error, can't add a string and an integer