
def pet_shop_name(petShop)
	return petShop[:name]
end

def total_cash(petShop)
	return petShop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
	shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
	shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
	shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
	shop[:pets].length
end

def pets_by_breed(shop, breedName)
	arr = []
	shop[:pets].each do |pet|
		if pet[:breed] == breedName
			arr.push(pet)
		end
	end
	return arr
end

def find_pet_by_name(shop, name)
	shop[:pets].each do |pet|
		if pet[:name] == name
			return pet
		end
	end
	return nil
end

def remove_pet_by_name(shop, name)
	petIndex = 0
	shop[:pets].each { |pet| pet[:name] == name ? petIndex = shop[:pets].index(pet) : next }
	shop[:pets].delete_at(petIndex)
end

def add_pet_to_stock(shop, newPet)
	shop[:pets].push(newPet)
end

def customer_pet_count(customer)
	customer[:pets].length
end

def add_pet_to_customer(customer, newPet)
	customer[:pets].push(newPet)
end

def customer_can_afford_pet(customer, pet)
	if customer[:cash] >= pet[:price]
		return true
	end
	return false
end

def sell_pet_to_customer(shop, pet, customer)
	if pet != nil && customer_can_afford_pet(customer, pet)
		customer[:cash] -= pet[:price]
		shop[:admin][:total_cash] += pet[:price]
		customer[:pets].push(pet)
		shop[:admin][:pets_sold] += 1
	end
end












































