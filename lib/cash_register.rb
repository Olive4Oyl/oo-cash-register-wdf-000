require 'pry'

class CashRegister

attr_accessor :total, :discount, :last_transaction


	def initialize(discount = 0) 
		@total = 0
		@discount = discount
		@arr = [] #every time you make a new item it's added to the arr
	end

	def add_item (title, price, quantity = 1)
		self.total += quantity * price
		@last_transaction = quantity * price
		#@last_transaction = @arr.last, @total => ["eggs", 0.98]
		until quantity == 0 
			@arr << title
			quantity -= 1 #until the quantity = 0 add it into the array and them subtract 1 from the quantity
		end
		
	end

	def apply_discount
		if discount != 0
			self.total = @total - (@total*(@discount.to_f/100.0)).to_i # 800 = 1000 - (1000 * (20.0/100.0))
			"After the discount, the total comes to $#{total}." #removed puts because it returns nil
		else
			 "There is no discount to apply."
		end
	end

	def items
		@arr
	end

	def void_last_transaction
		@total -= @last_transaction
	end








#void_last_transaction'
#The void_last_transaction method will remove the last transaction from the total. 
#You'll need to make an additional attribute accessor and keep 
#track of that last transaction amount somehow. 
#In what method of the class are you working with an individual item?



end
