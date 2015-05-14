class Reader
	attr_reader :name, :email, :city, :street, :house
	attr_accessor :books_taken

	def initialize(name, email, city, street=nil, house=nil)
		if email.class ==String && email.match(/^\S+@\S+\.\S+$/)
			@name=name
			@email=email
			@city=city
			@street=street
			@house=house
		else
			raise "Email is not valid!"
		end
	end
	def to_s
		"#{@name}, #{email}"
	end
end