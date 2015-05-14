class Order
	attr_accessor :book, :reader, :date
	def initialize(book, reader)
		if book.class == Book
			if reader.class == Reader
			@book=book
			@reader=reader
			@date=Time.now
			else
				raise "Order must have a valid reader!"
			end
		else
			raise "Order must have a valid book!"
		end
	end

	
	def to_s
		"#{self.book.to_s}, #{self.reader.to_s}, #{self.date.to_s}"
	end
end			