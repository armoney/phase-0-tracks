class TodoList
	attr_accessor :get_items

	def initialize(var1)
		@get_items = var1
	end

	def add_item(new_item)
		@get_items << new_item
	end

	def delete_item(del_item)
		@get_items.delete(del_item)
	end

	def get_item(index)
		@get_items[index]
	end
end
