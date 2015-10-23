
# gem install activerecord

require 'active_record'

# Run some SQL and return any results,
# if there are any
# def query_db(sql)
#   puts sql
#   db = SQLite3::Database.new('database.db')
#   db.results_as_hash = true
#   data = db.execute(sql)
#   db.close
#   return data
# end


ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'database.db'
)

# STDOUT
# STDERR

ActiveRecord::Base.logger = Logger.new(STDOUT)

class Book < ActiveRecord::Base
end

# CREATE A Book

# book = Book.new
# book.title = "Dune"
# book.author = "Frank Herbert"
# book.save # INSERT

# book = Book.new
# book.title = "1984"
# book.author = "George Orwell"
# book.save # INSERT

# READ A Book

p Book.all.to_a
p Book.find(1)

# UPDATE A Book

book = Book.find(1)
book.title = "Something Else"
book.save

# DELETE A Book

book = Book.find(1)
book.delete

