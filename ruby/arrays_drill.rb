test_array = []
p test_array

test_array.push("first item", "second_item", "third item", "phone", "computer")
p test_array

test_array.delete_at(2)
p test_array 

test_array.insert(2, "TV")
p test_array

test_array.shift
p test_array

include = test_array.include?("TV")
if include == false
	p "test_array does not include TV"
else 
	p "test_array includes TV"
end

test_array_2 = ["cd", "record", "tape"]

new_array = test_array + test_array_2

p new_array


def array_method(arr)
	p arr
end

array_method([1, "two", nil])

def adding_array(array, value)
	p array << value
end

adding_array([1, "two", nil], 3)
adding_array([1,2,3], 4)