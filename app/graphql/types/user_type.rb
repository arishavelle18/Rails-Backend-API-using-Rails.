module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :email, String, null: false
    field :books, [Types::BookType], null: true
    field :books_count, Integer, null: true

    def books_count
      object.books.size
    end
  end
end
