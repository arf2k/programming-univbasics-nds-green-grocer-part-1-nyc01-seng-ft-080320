require "pry"

def find_item_by_name_in_collection(name, collection)
   counter = 0
   while counter < collection.length 
   if collection[counter][:item] == name 
     return collection[counter]
      end 
   counter += 1
    end
  end

def consolidate_cart(cart)
  counter = 0 
  new_cart = []
  while counter < cart.length
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if new_cart_item != nil 
      new_cart_item[:count] += 1 
    else
      new_cart_item = {
        :item => cart[counter][:item], 
        :price => cart[counter][:price], 
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      new_cart << new_cart_item
    end
    counter += 1
  end 
  new_cart 
end 


# def find_item_by_name_in_collection(name, collection)
#   index = 0

#   collection.each do |grocery_item|
#     return grocery_item if grocery_item[:item] == name 
#     index += 1
#   end

#   nil
# end


# def consolidate_cart(cart)
#   index = 0
#   new_cart = []
  
#   cart.each do |grocery_item|
#     current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
#     if current_item
#       new_cart_index = 0
#       new_cart.each do |new_cart_item|
#         if new_cart_item[:item] == current_item[:item]
#           new_cart_item[:count] += 1
#         end
#         new_cart_index += 1
#       end
#     else
#       grocery_item[:count] = 1
#       new_cart << grocery_item
#     end
#     index += 1
#   end
#   new_cart
# end
  