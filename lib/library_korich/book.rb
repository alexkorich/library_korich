module LibraryKorich
	class Book
		attr_reader :title, :author

		def initialize(title, author)
			if author.class==Author
			@title=title
			@author=author
			else
				raise "Author is not valid!"
			end
		end
		
		def count(c)              
			@count=c
		end

		
		def to_s
			"#{self.title.to_s}, #{self.author.name}"
		end
	end
end