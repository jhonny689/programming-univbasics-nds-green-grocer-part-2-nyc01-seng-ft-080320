require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each_with_index {|val, index|
  
    available_coupon = find_item_by_name_in_collection(val[:item], coupons)
    
    if available_coupon && val[:count] / available_coupon[:num] > 0
      binding.pry
      cart[index][:count] = val[:count] % available_coupon[:num]
      coupon_item = {}
      coupon_item[:item] = available_coupon[:item] + "W/COUPON"
      coupon_item[:price] = available_coupon[:cost] / available_coupon[:num]
      coupon_item[:clearance] = val[:clearance]
      coupon_item[:count] = val[:count] / available_coupon[:num]
      cart.push(coupon_item)
      binding.pry
    end
    }
    cart  
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
