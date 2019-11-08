def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_sold)
  shop[:admin][:pets_sold] += number_sold
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed)
  found_pets = []
  for pet in shop[:pets]
    if (pet[:breed] == breed)
      found_pets.push(pet)
    end
  end
  return found_pets
end

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if (pet[:name] == pet_name)
      return pet
    end
  end
  return
end

def remove_pet_by_name(shop, pet_name)
  found_pet = find_pet_by_name(shop, pet_name)
  shop[:pets].delete(found_pet)
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end
