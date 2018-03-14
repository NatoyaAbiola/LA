# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
list_of_books = [
  {
    title: "The Lean Startup",
    author: "Eric Ries",
    rating: 10
  },
  {
    title: "Founders at Work",
    author: "Jessica Livingston",
    rating: 10
  }
]

list_of_books.each do |attributes|
  book= Book.where({
    title: attributes[:title],
    author:attributes[:author],
    rating:attributes[:rating]
    }).first
  if book.nil?
    book = Book.new(attributes)
  else
    book.attributes = attributes
  end
  book.save!
end


list_of_categories = [
  {
    genre: "business",
    title: "The Lean Startup",
    author: "Eric Ries",
  },
  {
    genre: "tech",
    title: "Founders at Work",
    author: "Jessica Livingston",
  }
]

list_of_categories.each do |attributes|
  category=Category.where({
    genre: attributes[:genre],
    title: attributes[:title],
    author: attributes[:author]
    }).first
  if category.nil?
    category = Category.new(attributes)
  else
    category.attributes = attributes
  end
  category.save!
end
