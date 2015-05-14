module LibraryKorich
	class Author
		attr_reader :name, :biography
		def initialize(name, bio)
			@name=name
			@biography=bio
		end
		def to_s
			"Author: #{self.name.to_s}. Biogrparhy: #{self.biography.to_s}"
		end
	end
end
