def array_method(a , f)
	comb_array = a << f
end

p array_method([] , "a")
p array_method(["a", "b", "c", 1, 2], 3)

def dead_end(h , b , o)
	new_array  = []
	new_array + [h , b , o]
end


array = []
p array

array += ["p" , "dsl" , "edjsa" , "djsk" , "djsak"]
p array

array.delete_at(2)
p array

array.insert(2 , "hell")
p array

array.shift
p array 

hello_boo = array.include?("hello")
p "it is #{hello_boo} that the array contains hello" 


new_array = [1 , 3, "dsa"]
p new_array

comb_array = array + new_array
p comb_array

p dead_end(1 , "hi" , nil)