module LibraryKorich
require_relative "library"


auth1 = Author.new("Dan","bio1")
auth2 = Author.new("Frank","bio2")
auth3 = Author.new("Brian","bio3")
auth4 = Author.new("Avi","bio4")

book1 = Book.new("Book1", auth1)
book2 = Book.new("Book2", auth2)
book3 = Book.new("Book3", auth3)
book4 = Book.new("Book4", auth4)
book5 = Book.new("Book5", auth1)
book6 = Book.new("Book6", auth2)
book7 = Book.new("Book7", auth3)
book8 = Book.new("Book8", auth4)
book9 = Book.new("Book9", auth4)
book10 = Book.new("Book10", auth4)

user1 =Reader.new("John One", "john@23.com", "ny")
user2 =Reader.new("Ben Two", "ben@23.com", "ny")
user3 =Reader.new("Ted Three", "ted@23.com", "ny")
user4 =Reader.new("Tim Four", "tim@23.com", "ny")
user5 =Reader.new("Roger Five", "roger@23.com", "ny")

lib = Library.new("NewLib")
lib.add_book(book1)
lib.add_book(book2)
lib.add_book(book3)
lib.add_book(book4)

lib.add_reader(user1)
lib.add_reader(user2)
lib.add_reader(user3)
lib.add_reader(user4)
lib.add_reader(user5)

lib.add_order(Order.new(book6, user1))
lib.add_order(Order.new(book4, user2))
lib.add_order(Order.new(book3, user3))
lib.add_order(Order.new(book1, user4))
lib.add_order(Order.new(book2, user5))
lib.add_order(Order.new(book4, user1))
lib.add_order(Order.new(book5, user1))
lib.add_order(Order.new(book6, user5))
lib.add_order(Order.new(book7, user2))
lib.add_order(Order.new(book8, user3))
lib.add_order(Order.new(book9, user4))
lib.add_order(Order.new(book10, user5))
lib.add_order(Order.new(book4, user1))
lib.add_order(Order.new(book10, user1))
lib.add_order(Order.new(book2, user3))
lib.add_order(Order.new(book3, user2))
lib.add_order(Order.new(book3, user5))
lib.add_order(Order.new(book1, user4))
lib.add_order(Order.new(book2, user5))
lib.add_order(Order.new(book4, user2))
lib.add_order(Order.new(book5, user3))
lib.add_order(Order.new(book6, user1))
lib.add_order(Order.new(book7, user2))
lib.add_order(Order.new(book8, user3))
lib.add_order(Order.new(book9, user4))
lib.add_order(Order.new(book10, user5))
lib.add_order(Order.new(book4, user1))
lib.add_order(Order.new(book5, user1))

puts lib.most_often_taker
puts lib.most_popular_book
puts lib.how_many_most_3
lib.save_to_file("lib")

lib2=Library.get_from_file("lib.libfile")

puts lib2.readers
end