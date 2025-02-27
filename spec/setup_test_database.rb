require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'chitter_test')
  connection.exec("TRUNCATE peeps;")
end

# def add_row_to_test_database
#   connection = PG.connect(dbname: 'chitter_test')
#   connection.exec("INSERT INTO peeps (message) values ('This is a peep!');")
# end

def add_row_to_test_database(string)
  fail 'data type is not a string' unless string.is_a?(String)

  connection = PG.connect(dbname: 'chitter_test')
  connection.exec("INSERT INTO peeps (message) values ('#{string}');")
end
