# require_relative 'author'
# require_relative 'order'
# require_relative 'reader'
# require_relative 'book'
module LibraryKorich

	class Library
		attr_reader :books, :orders, :readers, :authors, :name
	 
	 def initialize(name)
			@name    =name
			@books   =Array.new
			@orders  =Array.new
			@readers =Array.new
			@authors =Array.new
		end	

		def add_reader(reader)
			if reader.class==Reader
				@readers<<reader
			else raise "New reader must be a Reader class!"
			end
		end

		def add_order(order)
			if order.class== Order
			orders<<order
			else raise "New order must be a Reader class!"
			end
		end

		def add_book(book)
			if book.class==Book
			books<<book
			authors<<book.author
			else raise "New reader must be a Reader class!"
			end
		end


		def most_frequent (array, property)
			hash=Hash.new(0)
			array.each {|item| hash[item.send(property.to_sym)] += 1}
			hash.max_by{|k,v| v}[0]
		end

		def most_often_taker
			r=most_frequent(self.orders, "reader")
			puts "Most often taker is #{r}"
		end

		def most_popular_book
			b=most_frequent(self.orders, "book")
			puts "Most popular book is #{b}"
		end

		def how_many_most_3
			hash=Hash.new(0)
			self.orders.each {|order| hash[order.book.title] += 1}
			b=hash.sort_by{ |k,v| -v }[0..2]  
			count=0  
			b.flatten!
			b.delete_if {|d| d.class==Fixnum}
			puts  "Three most popular books are #{b[0]}, #{b[1]} and #{b[2]}"
			self.orders.each do |order|
				if b.include?(order.book.title)
					count+=1
				end
			end
			puts "They've been ordered by #{count} readers"
		end

		def save_to_file(filename)
			File.open("#{filename}.libfile", 'w') {|f| f.write(Marshal.dump(self)) }
		end

		def self.get_from_file(filename)
		Marshal.load(File.read(filename))
		end
	end
end